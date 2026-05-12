import { describe, it, expect, vi, beforeEach, afterEach } from 'vitest';
import slackNotify from '../../../home/.pi/agent/extensions/slack-notify';
import { execSync } from 'node:child_process';

// execSyncをモック
vi.mock('node:child_process', () => ({
  execSync: vi.fn(),
}));

describe('slack-notify extension', () => {
  let piMock: any;
  let ctxMock: any;
  let eventMock: any;
  let handlers: Record<string, Function> = {};

  beforeEach(() => {
    vi.clearAllMocks();
    vi.useFakeTimers();
    handlers = {};

    // ExtensionAPIのモック
    piMock = {
      on: vi.fn((event, handler) => {
        handlers[event] = handler;
      }),
    };

    // Contextのモック
    ctxMock = {
      ui: {
        notify: vi.fn(),
      },
    };

    // 拡張機能の初期化
    slackNotify(piMock);
  });

  afterEach(() => {
    vi.useRealTimers();
  });

  it('10分未満のタスク完了時はSlack通知を行わない', async () => {
    // before_agent_start
    await handlers['before_agent_start']({}, ctxMock);

    // 5分経過させる
    vi.advanceTimersByTime(5 * 60 * 1000);

    // agent_end
    eventMock = {
      messages: [{ role: 'assistant', content: [{ type: 'text', text: 'short task' }] }],
    };
    await handlers['agent_end'](eventMock, ctxMock);

    expect(execSync).not.toHaveBeenCalled();
  });

  it('10分以上のタスク完了時にSlack通知を行う', async () => {
    // before_agent_start
    await handlers['before_agent_start']({}, ctxMock);

    // 11分経過させる
    vi.advanceTimersByTime(11 * 60 * 1000);

    // agent_end
    eventMock = {
      messages: [{ role: 'assistant', content: [{ type: 'text', text: 'This is a summary of the long task.' }] }],
    };
    await handlers['agent_end'](eventMock, ctxMock);

    expect(execSync).toHaveBeenCalledWith(
      expect.stringContaining('slack-cli send -c "dev" -m "*♓ Pi タスク完了* (11分)\\nThis is a summary of the long task."')
    );
  });

  it('アシスタントメッセージがない場合でも通知を行う', async () => {
    await handlers['before_agent_start']({}, ctxMock);
    vi.advanceTimersByTime(11 * 60 * 1000);

    eventMock = {
      messages: [{ role: 'user', content: [{ type: 'text', text: 'user msg only' }] }],
    };
    await handlers['agent_end'](eventMock, ctxMock);

    expect(execSync).toHaveBeenCalledWith(
      expect.stringContaining('（サマリなし）')
    );
  });

  it('Slack通知に失敗した時にUI通知を出す', async () => {
    vi.mocked(execSync).mockImplementation(() => {
      throw new Error('command failed');
    });

    await handlers['before_agent_start']({}, ctxMock);
    vi.advanceTimersByTime(11 * 60 * 1000);

    eventMock = { messages: [] };
    await handlers['agent_end'](eventMock, ctxMock);

    expect(ctxMock.ui.notify).toHaveBeenCalledWith('Slack通知に失敗しました', 'error');
  });
});
