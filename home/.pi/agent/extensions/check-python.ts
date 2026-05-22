import type { ExtensionAPI } from "@earendil-works/pi-coding-agent";

export default function (pi: ExtensionAPI) {
  pi.on("tool_result", async (event, ctx) => {
    // ファイル変更ツール（edit, write）が成功した場合のみ実行
    if (event.toolName !== "edit" && event.toolName !== "write") return;
    if (event.isError) return;

    // 変更されたファイルのパスを取得
    const input = event.input as { path?: string };
    if (!input.path || !input.path.endsWith(".py")) return;

    // UIステータスを更新
    ctx.ui.setStatus("pyright", `Checking ${input.path}...`);

    try {
      // pyrightを実行 (変更されたファイルのみを対象にする)
      const result = await pi.exec("pyright", [input.path], { signal: ctx.signal });

      // ステータスをクリア
      ctx.ui.setStatus("pyright", "");

      let statusMsg = "";
      let additionalText = "";

      if (result.code === 0) {
        statusMsg = "✅ Pyright: No type errors found.";
        additionalText = `\n\n[Pyright] Check passed for ${input.path}.`;
        ctx.ui.notify(statusMsg, "info");
      } else {
        statusMsg = "❌ Pyright: Type errors detected!";
        // result.stdout/stderr を含める。
        const output = result.stdout || result.stderr || "No output from pyright.";
        additionalText = `\n\n[Pyright] Found errors in ${input.path}:\n\n${output}`;
        ctx.ui.notify(statusMsg, "error");
      }

      // 既存の content に追加する
      const existingContent = Array.isArray(event.content) ? event.content : [];
      
      return {
        content: [
          ...existingContent,
          { type: "text", text: additionalText },
        ],
      };
    } catch (error) {
      ctx.ui.setStatus("pyright", "");
      const errMsg = `Pyright hook error: ${error instanceof Error ? error.message : String(error)}`;
      ctx.ui.notify(errMsg, "error");
      
      // エラーが発生したことも LLM に伝える
      const existingContent = Array.isArray(event.content) ? event.content : [];
      return {
        content: [
          ...existingContent,
          { type: "text", text: `\n\n[Pyright] Hook failed: ${errMsg}` }
        ]
      };
    }
  });
}
