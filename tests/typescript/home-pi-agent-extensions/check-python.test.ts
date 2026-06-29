import { describe, it, expect, vi, beforeEach } from 'vitest';
import checkPython from '../../../home/.pi/agent/extensions/check-python';

describe('check-python extension', () => {
  let piMock: any;
  let ctxMock: any;
  let handlers: Record<string, Function>;

  // 正常系の pi.exec 戻り値を組み立てるヘルパ
  const execResult = (overrides: Partial<{ stdout: string; stderr: string; code: number }> = {}) => ({
    stdout: '',
    stderr: '',
    code: 0,
    ...overrides,
  });

  // tool_result ハンドラへ渡すイベント。既定は .py への write 成功。
  const makeEvent = (overrides: Record<string, unknown> = {}) => ({
    toolName: 'write',
    isError: false,
    input: { path: 'foo.py' },
    content: [{ type: 'text', text: 'original' }],
    ...overrides,
  });

  beforeEach(() => {
    vi.clearAllMocks();
    handlers = {};

    piMock = {
      on: vi.fn((event: string, handler: Function) => {
        handlers[event] = handler;
      }),
      exec: vi.fn(async () => execResult()),
    };

    ctxMock = {
      signal: 'sig',
      ui: {
        setStatus: vi.fn(),
        notify: vi.fn(),
      },
    };

    checkPython(piMock);
  });

  it('tool_result ハンドラを登録する', () => {
    expect(piMock.on).toHaveBeenCalledWith('tool_result', expect.any(Function));
  });

  it('edit/write 以外のツールでは何もしない', async () => {
    await handlers['tool_result'](makeEvent({ toolName: 'read' }), ctxMock);
    expect(piMock.exec).not.toHaveBeenCalled();
  });

  it('ツールがエラーの場合は何もしない', async () => {
    await handlers['tool_result'](makeEvent({ isError: true }), ctxMock);
    expect(piMock.exec).not.toHaveBeenCalled();
  });

  it('.py 以外のファイルでは何もしない', async () => {
    await handlers['tool_result'](makeEvent({ input: { path: 'foo.ts' } }), ctxMock);
    expect(piMock.exec).not.toHaveBeenCalled();
  });

  it('path が無い場合は何もしない', async () => {
    await handlers['tool_result'](makeEvent({ input: {} }), ctxMock);
    expect(piMock.exec).not.toHaveBeenCalled();
  });

  it('.py への write 成功時に hook スクリプトを path 入りで実行する', async () => {
    await handlers['tool_result'](makeEvent(), ctxMock);

    expect(piMock.exec).toHaveBeenCalledWith(
      'sh',
      ['-c', expect.stringContaining('foo.py')],
      { signal: 'sig' },
    );
    // hook スクリプトパスが渡っていることも確認
    const [, args] = piMock.exec.mock.calls[0];
    expect(args[1]).toContain('/.agents/hooks/check-python.sh');
  });

  it('systemMessage に ✅ を含む JSON では info 通知し additionalContext を返す', async () => {
    piMock.exec.mockResolvedValueOnce(
      execResult({
        stdout: JSON.stringify({
          systemMessage: '✅ Ruff & Pyright passed.',
          hookSpecificOutput: { additionalContext: 'all good' },
        }),
      }),
    );

    const result = await handlers['tool_result'](makeEvent(), ctxMock);

    expect(ctxMock.ui.notify).toHaveBeenCalledWith('✅ Ruff & Pyright passed.', 'info');
    // 既存 content を保持しつつ additionalContext を追記する
    expect(result.content).toEqual([
      { type: 'text', text: 'original' },
      { type: 'text', text: '\n\nall good' },
    ]);
  });

  it('systemMessage に ❌ を含む JSON では error 通知する', async () => {
    piMock.exec.mockResolvedValueOnce(
      execResult({
        code: 1,
        stdout: JSON.stringify({
          systemMessage: '❌ Pyright found errors.',
          hookSpecificOutput: { additionalContext: 'see below' },
        }),
      }),
    );

    await handlers['tool_result'](makeEvent(), ctxMock);

    expect(ctxMock.ui.notify).toHaveBeenCalledWith('❌ Pyright found errors.', 'error');
  });

  it('JSON 以外の出力かつ code 0 では成功扱いで info 通知する', async () => {
    piMock.exec.mockResolvedValueOnce(execResult({ stdout: 'not json', code: 0 }));

    const result = await handlers['tool_result'](makeEvent(), ctxMock);

    expect(ctxMock.ui.notify).toHaveBeenCalledWith('✅ Python checks passed.', 'info');
    expect(result.content[result.content.length - 1].text).toContain('foo.py');
  });

  it('JSON 以外の出力かつ code 非0 では失敗扱いで error 通知し出力を返す', async () => {
    piMock.exec.mockResolvedValueOnce(execResult({ stdout: 'lint error here', code: 1 }));

    const result = await handlers['tool_result'](makeEvent(), ctxMock);

    expect(ctxMock.ui.notify).toHaveBeenCalledWith('❌ Python checks failed!', 'error');
    expect(result.content[result.content.length - 1].text).toContain('lint error here');
  });

  it('pi.exec が throw した場合は error 通知し hook 失敗を content に残す', async () => {
    piMock.exec.mockRejectedValueOnce(new Error('boom'));

    const result = await handlers['tool_result'](makeEvent(), ctxMock);

    expect(ctxMock.ui.notify).toHaveBeenCalledWith(
      expect.stringContaining('Pyright hook error: boom'),
      'error',
    );
    expect(result.content[result.content.length - 1].text).toContain('[Pyright] Hook failed');
  });

  it('処理後に pyright ステータスをクリアする', async () => {
    await handlers['tool_result'](makeEvent(), ctxMock);
    expect(ctxMock.ui.setStatus).toHaveBeenCalledWith('pyright', '');
  });
});
