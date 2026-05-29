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
      // check-python.sh を実行 (JSON入力を渡して Ruff & Pyright & Git をチェック)
      const payload = JSON.stringify({
        tool_name: event.toolName,
        tool_input: { path: input.path }
      });

      // sh -c を利用して標準入力に JSON を渡す
      const hookScript = process.env.HOME + "/.agents/hooks/check-python.sh";
      const result = await pi.exec("sh", ["-c", `echo '${payload}' | bash "${hookScript}"`], { signal: ctx.signal });

      // ステータスをクリア
      ctx.ui.setStatus("pyright", "");

      let statusMsg = "";
      let additionalText = "";

      try {
        const json = JSON.parse(result.stdout || "{}");
        statusMsg = json.systemMessage || "Python checks completed.";
        additionalText = `\n\n${json.hookSpecificOutput?.additionalContext || "No additional context provided."}`;
        
        if (statusMsg.includes("✅")) {
          ctx.ui.notify(statusMsg, "info");
        } else if (statusMsg.includes("⚠️") || statusMsg.includes("❌")) {
          ctx.ui.notify(statusMsg, "error");
        }
      } catch (e) {
        // JSONパース失敗時は {code} に基づいて判断
        if (result.code === 0) {
          statusMsg = "✅ Python checks passed.";
          additionalText = `\n\nPython checks completed for ${input.path}.`;
          ctx.ui.notify(statusMsg, "info");
        } else {
          statusMsg = "❌ Python checks failed!";
          const output = result.stdout || result.stderr || "No output from hook script.";
          additionalText = `\n\n[Python Hooks] Found issues in ${input.path}:\n\n${output}`;
          ctx.ui.notify(statusMsg, "error");
        }
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
