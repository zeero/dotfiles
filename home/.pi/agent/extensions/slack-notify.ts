import type { ExtensionAPI } from "@earendil-works/pi-coding-agent";
import { execSync } from "node:child_process";

const THRESHOLD_MS = 10 * 60 * 1000; // 10分

export default function (pi: ExtensionAPI) {
  let turnStartedAt: number | null = null;

  pi.on("before_agent_start", async (_event, _ctx) => {
    turnStartedAt = Date.now();
  });

  pi.on("agent_end", async (event, ctx) => {
    if (turnStartedAt === null) return;

    const elapsed = Date.now() - turnStartedAt;
    turnStartedAt = null;

    if (elapsed < THRESHOLD_MS) return;

    // 最後のアシスタントメッセージをサマリとして使う
    const messages = event.messages;
    const lastAssistant = [...messages]
      .reverse()
      .find((m) => m.role === "assistant");

    const summary = lastAssistant
      ? lastAssistant.content
          .filter((c: any) => c.type === "text")
          .map((c: any) => c.text)
          .join(" ")
          .slice(0, 200) // Slackに流す長さを制限
      : "（サマリなし）";

    const mins = Math.round(elapsed / 60000);
    const msg = `*♓ Pi タスク完了* (${mins}分)\n${summary}`;

    try {
      execSync(`slack-cli send -c "general" -m ${JSON.stringify(msg)}`);
    } catch (e) {
      ctx.ui.notify("Slack通知に失敗しました", "error");
    }
  });
}
