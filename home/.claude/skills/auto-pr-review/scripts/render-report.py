#!/usr/bin/env python3
"""レビュー結果の中間データ (JSON) を HTML レポートへ流し込む。

見た目の責任はテンプレートに、内容の責任は中間データに置く。モデルが HTML を
直接書かないのは、長いレポートほど記法が崩れやすく、崩れても気づけないため。
データを直せば何度でも同じ見た目で作り直せる。

追加のパッケージには依存しない (標準ライブラリのみ)。
"""

from __future__ import annotations

import argparse
import html
import json
import re
import sys
from pathlib import Path

SEVERITIES = ("critical", "warning", "info")
STATUSES = ("new", "open", "resolved")

SEVERITY_LABEL = {"critical": "Critical", "warning": "Warning", "info": "Info"}
SEVERITY_EMOJI = {"critical": "🚨", "warning": "⚠️", "info": "💡"}
SEVERITY_NOTE = {
    "critical": "取り込むと壊れる",
    "warning": "壊れはしないが取り込む前に直したい",
    "info": "直さなくても取り込める",
}
STATUS_LABEL = {"new": "新規", "open": "未解決", "resolved": "解決済み"}
DECISION_LABEL = {
    "merge": "マージ可",
    "conditional": "条件付きでマージ可",
    "block": "マージ不可",
}
CHANGE_LABEL = {"added": "新規追加", "modified": "変更", "removed": "削除"}
CHANGE_EMOJI = {"added": "➕", "modified": "✏️", "removed": "➖"}
MODE_LABEL = {"full": "全体レビュー", "delta": "前回からの差分レビュー"}

# 散文の中で強調したい語を太字にする。中間データは人が読む前提の素の文なので、
# HTML を書かせず最小限の記法だけ受ける。
BOLD = re.compile(r"\*\*([^*]+)\*\*")
INLINE_CODE = re.compile(r"`([^`]+)`")
# テンプレートの書き方を説明するコメント。生成物には要らないので落とす。
TEMPLATE_ONLY = re.compile(r"<!--TEMPLATE-ONLY.*?-->\s*", re.DOTALL)


class DataError(Exception):
    """中間データの不備。どこが悪いかを利用者に返すために使う。"""


def markup(escaped: str) -> str:
    """エスケープ済みの文字列に、受け付ける最小限の記法だけを適用する。"""
    return INLINE_CODE.sub(r"<code>\1</code>", BOLD.sub(r"<strong>\1</strong>", escaped))


def text(value: object) -> str:
    """散文を HTML へ。強調とバッククォート囲みだけを解釈し、改行を段落に変える。"""
    if value is None:
        return ""
    escaped = markup(html.escape(str(value)))
    blocks = [b.strip() for b in escaped.split("\n\n") if b.strip()]
    return "".join(f"<p>{b.replace(chr(10), '<br>')}</p>" for b in blocks)


def inline(value: object) -> str:
    if value is None:
        return ""
    return markup(html.escape(str(value)))


def require(mapping: dict, key: str, where: str) -> object:
    if key not in mapping or mapping[key] in (None, ""):
        raise DataError(f"{where} に {key} がありません")
    return mapping[key]


def validate(data: object) -> None:
    # JSON は配列や文字列も最上位に取れる。dict 前提で進むと分かりにくい失敗になる。
    if not isinstance(data, dict):
        raise DataError("中間データの最上位はオブジェクトです")

    for section in ("pr", "run", "overview", "verdict"):
        if not isinstance(data.get(section), dict):
            raise DataError(f"{section} セクションがありません")

    pr = data["pr"]
    for key in ("url", "number", "repo", "title"):
        require(pr, key, "pr")

    run = data["run"]
    if run.get("mode") not in ("full", "delta"):
        raise DataError("run.mode は full か delta です")

    verdict = data["verdict"]
    if verdict.get("decision") not in DECISION_LABEL:
        raise DataError(
            "verdict.decision は merge / conditional / block のいずれかです"
        )
    require(verdict, "premise", "verdict")
    require(verdict, "rationale", "verdict")

    other = data.get("other")
    if other is not None:
        if not isinstance(other, list):
            raise DataError("other は配列です")
        for index, block in enumerate(other):
            if not isinstance(block, dict):
                raise DataError(f"other[{index}] はオブジェクトです")
            require(block, "text", f"other[{index}]")

    findings = data.get("findings", [])
    if not isinstance(findings, list):
        raise DataError("findings は配列です")
    for index, finding in enumerate(findings):
        where = f"findings[{index}]"
        if not isinstance(finding, dict):
            raise DataError(f"{where} はオブジェクトです")
        if finding.get("severity") not in SEVERITIES:
            raise DataError(
                f"{where}.severity は critical / warning / info のいずれかです"
            )
        if finding.get("status") not in STATUSES:
            raise DataError(f"{where}.status は new / open / resolved のいずれかです")
        require(finding, "title", where)
        # Critical は「どう壊れるか」を書けることが条件。書けないなら Critical ではない。
        if finding["severity"] == "critical" and not finding.get("failure_scenario"):
            raise DataError(f"{where} は Critical なので failure_scenario が必要です")


def sort_findings(findings: list) -> list:
    def key(item: tuple) -> tuple:
        index, finding = item
        resolved = 1 if finding["status"] == "resolved" else 0
        return (resolved, SEVERITIES.index(finding["severity"]), index)

    return [f for _, f in sorted(enumerate(findings), key=key)]


def group_counts(data: dict) -> dict:
    """重大度ごとの件数。指摘の節と目次とヒーローで同じ数を出すための一次情報。"""
    findings = data.get("findings", [])
    return {s: sum(1 for f in findings if f["severity"] == s) for s in SEVERITIES}


def live_counts(data: dict) -> dict:
    """解決済みを除いた件数。ヒーローで「今いくつ残っているか」を出すのに使う。"""
    live = [f for f in data.get("findings", []) if f["status"] != "resolved"]
    return {s: sum(1 for f in live if f["severity"] == s) for s in SEVERITIES}


def render_hero(data: dict) -> str:
    pr = data["pr"]
    run = data["run"]
    counts = live_counts(data)
    present = group_counts(data)

    facts = [("リポジトリ", inline(pr["repo"])), ("Pull Request", f"#{inline(pr['number'])}")]
    if pr.get("base_ref"):
        facts.append(("取り込み先", inline(pr["base_ref"])))
    if run.get("reviewed_at"):
        facts.append(("レビュー日時", inline(run["reviewed_at"])))
    facts.append(
        ("レビュー範囲", f"{MODE_LABEL[run['mode']]}<br>{inline(run.get('round', 1))} 回目")
    )
    fact_html = "".join(
        f'<div class="fact"><span class="fact-label">{label}</span>'
        f'<span class="fact-value">{value}</span></div>'
        for label, value in facts
    )

    cards = []
    for severity in SEVERITIES:
        # 件数が 0 の重大度は指摘の節に見出しが立たないので、跳び先が無い。
        # リンクにすると押しても何も起きないため、そのときだけ静かな面にする。
        inner = (
            f'<span class="tally-head">'
            f'<span class="tally-num">{counts[severity]}</span>'
            f'<span class="tally-name">{SEVERITY_EMOJI[severity]} {SEVERITY_LABEL[severity]}</span></span>'
            f'<span class="tally-note">{SEVERITY_NOTE[severity]}</span>'
        )
        if present[severity]:
            cards.append(
                f'<a class="tally-card tally-{severity}" href="#sev-{severity}">{inner}'
                f'<span class="tally-jump">指摘を見る →</span></a>'
            )
        else:
            cards.append(
                f'<div class="tally-card tally-{severity} is-empty">{inner}</div>'
            )

    return f"""
      <p class="eyebrow">Pull Request Review</p>
      <h1>{inline(pr["title"])}</h1>
      <div class="facts">{fact_html}</div>
      <div class="tally">{"".join(cards)}</div>
      <a class="hero-link" href="{html.escape(str(pr["url"]))}">GitHub で PR を開く →</a>
    """


def render_toc(data: dict, has_external: bool, has_other: bool) -> str:
    counts = group_counts(data)
    subs = "".join(
        f'<li><a href="#sev-{s}">{SEVERITY_EMOJI[s]} {SEVERITY_LABEL[s]}'
        f'<span class="toc-count">{counts[s]}</span></a></li>'
        for s in SEVERITIES
        if counts[s]
    )
    sub_html = f'<ul class="toc-sub">{subs}</ul>' if subs else ""
    items = [
        '<li><a href="#overview">📋 概要</a></li>',
        '<li><a href="#verdict">⚖️ 総評</a></li>',
        f'<li><a href="#findings">🔍 指摘</a>{sub_html}</li>',
    ]
    if has_external:
        items.append('<li><a href="#external">🤖 外部レビュー</a></li>')
    if has_other:
        items.append('<li><a href="#other">📝 その他</a></li>')
    return (
        '<nav class="toc" aria-label="目次">'
        '<p class="toc-title">目次</p>'
        f'<ol>{"".join(items)}</ol></nav>'
    )


def render_scope(data: dict) -> str:
    run = data["run"]
    rows = [("レビュー範囲", MODE_LABEL[run["mode"]])]
    if run.get("range"):
        rows.append(
            ("対象のコミット", f"<code>{html.escape(str(run['range']))}</code>")
        )
    if run.get("previous_head"):
        rows.append(
            ("前回時点", f"<code>{html.escape(str(run['previous_head']))}</code>")
        )
    if run.get("fallback_reason"):
        rows.append(("全体を見直した理由", inline(run["fallback_reason"])))
    if run.get("scope_note"):
        rows.append(("補足", inline(run["scope_note"])))
    items = "".join(f"<div class='kv'><dt>{k}</dt><dd>{v}</dd></div>" for k, v in rows)
    return f"<dl class='kv-list'>{items}</dl>"


def render_file_map(overview: dict) -> str:
    files = overview.get("files") or {}
    groups = []
    for kind in ("added", "modified", "removed"):
        entries = files.get(kind) or []
        if not entries:
            continue
        rows = []
        for entry in entries:
            if not isinstance(entry, dict):
                raise DataError(f"overview.files.{kind} の要素はオブジェクトです")
            stat = ""
            if entry.get("additions") is not None or entry.get("deletions") is not None:
                # 数値が入る想定だが、中間データは手で書かれるので数値とは限らない。
                # そのまま差し込むと HTML を壊すため、他の差し込みと同じく必ず通す。
                added = html.escape(str(entry.get("additions", 0)))
                deleted = html.escape(str(entry.get("deletions", 0)))
                stat = (
                    f'<span class="stat">'
                    f'<span class="plus">+{added}</span>'
                    f'<span class="minus">-{deleted}</span></span>'
                )
            note = (
                f'<span class="note">{inline(entry["note"])}</span>'
                if entry.get("note")
                else ""
            )
            rows.append(
                f"<li><code>{html.escape(str(entry.get('path', '')))}</code>{stat}{note}</li>"
            )
        groups.append(
            f'<div class="map-group map-{kind}">'
            f'<h4>{CHANGE_EMOJI[kind]} {CHANGE_LABEL[kind]} <span class="count">{len(entries)}</span></h4>'
            f"<ul>{''.join(rows)}</ul></div>"
        )
    if not groups:
        return ""
    return f'<div class="map">{"".join(groups)}</div>'


def render_review_order(overview: dict) -> str:
    order = overview.get("review_order") or []
    if not order:
        return ""
    items = "".join(
        f"<li><code>{html.escape(str(o.get('path', '')))}</code>"
        f'<span class="why">{inline(o.get("why", ""))}</span></li>'
        for o in order
    )
    return f'<div class="order"><h4>🧭 おすすめのレビュー順序</h4><ol>{items}</ol></div>'


def render_overview(data: dict) -> str:
    overview = data["overview"]
    parts = [f'<div class="overview-text">{text(overview.get("text"))}</div>']
    parts.append(render_scope(data))
    parts.append(render_file_map(overview))
    parts.append(render_review_order(overview))
    return "".join(p for p in parts if p)


def render_verdict(data: dict) -> str:
    verdict = data["verdict"]
    decision = verdict["decision"]
    headline = verdict.get("headline") or DECISION_LABEL[decision]
    return f"""
      <div class="verdict verdict-{decision}">
        <div class="verdict-badge">{DECISION_LABEL[decision]}</div>
        <p class="verdict-headline">{inline(headline)}</p>
      </div>
      <div class="verdict-body">
        <h4>📌 判定の前提</h4>
        {text(verdict["premise"])}
        <h4>🧠 判断の理由</h4>
        {text(verdict["rationale"])}
      </div>
    """


def render_finding(finding: dict) -> str:
    severity = finding["severity"]
    status = finding["status"]
    location = ""
    if finding.get("file"):
        line = f":{finding['line']}" if finding.get("line") else ""
        location = (
            f'<code class="loc">{html.escape(str(finding["file"]) + line)}</code>'
        )

    tags = [f'<span class="tag tag-{status}">{STATUS_LABEL[status]}</span>']
    if finding.get("first_round"):
        tags.append(
            f'<span class="tag">{inline(finding["first_round"])} 回目に指摘</span>'
        )
    if finding.get("source") == "codex":
        tags.append('<span class="tag tag-source">外部レビュー由来</span>')
    reported = finding.get("already_reported")
    if reported:
        label = "既に PR で指摘済み"
        if reported.get("by"):
            label += f"（{inline(reported['by'])}）"
        if reported.get("url"):
            tags.append(
                f'<a class="tag tag-reported" href="{html.escape(str(reported["url"]))}">{label} ↗</a>'
            )
        else:
            tags.append(f'<span class="tag tag-reported">{label}</span>')

    blocks = []
    if finding.get("detail"):
        blocks.append(text(finding["detail"]))
    if finding.get("failure_scenario"):
        blocks.append(
            f'<div class="block block-failure"><h5>💥 どう壊れるか</h5>{text(finding["failure_scenario"])}</div>'
        )
    if finding.get("evidence"):
        blocks.append(
            f'<div class="block"><h5>🔎 根拠</h5>{text(finding["evidence"])}</div>'
        )
    if finding.get("suggestion"):
        blocks.append(
            f'<div class="block"><h5>🛠 直し方</h5>{text(finding["suggestion"])}</div>'
        )

    resolved = " is-resolved" if status == "resolved" else ""
    return f"""
      <article class="finding finding-{severity}{resolved}">
        <header>
          <span class="sev sev-{severity}">{SEVERITY_LABEL[severity]}</span>
          <h3>{inline(finding["title"])}</h3>
        </header>
        <div class="finding-meta">{location}{"".join(tags)}</div>
        <div class="finding-body">{"".join(blocks)}</div>
      </article>
    """


def render_findings(data: dict) -> str:
    findings = sort_findings(data.get("findings", []))
    if not findings:
        return '<p class="empty">指摘はありません。</p>'

    sections = []
    for severity in SEVERITIES:
        group = [f for f in findings if f["severity"] == severity]
        if not group:
            continue
        cards = "".join(render_finding(f) for f in group)
        sections.append(
            f'<div class="sev-group" id="sev-{severity}">'
            f'<h3 class="sev-heading sev-{severity}">'
            f"{SEVERITY_EMOJI[severity]} {SEVERITY_LABEL[severity]}"
            f'<span class="sev-note">{SEVERITY_NOTE[severity]}</span>'
            f'<span class="count">{len(group)}</span></h3>{cards}</div>'
        )
    return "".join(sections)


def render_external(data: dict) -> str:
    external = data.get("external")
    if not external:
        return ""
    status = external.get("status", "skipped")
    heading = '<h2><span class="h2-emoji">🤖</span>外部レビュー</h2>'
    if status == "failed":
        body = f'<p class="empty">外部レビューは実施できませんでした。{inline(external.get("summary", ""))}</p>'
        return f'<section id="external">{heading}{body}</section>'
    if status == "skipped":
        return ""

    parts = [text(external.get("summary"))]
    accepted = external.get("accepted") or []
    if accepted:
        items = "".join(f"<li>{inline(a)}</li>" for a in accepted)
        parts.append(
            f'<div class="block"><h5>✅ 裏が取れて採用した指摘</h5><ul>{items}</ul></div>'
        )
    rejected = external.get("rejected") or []
    if rejected:
        items = "".join(
            f'<li><b>{inline(r.get("title", ""))}</b><span class="why">{inline(r.get("reason", ""))}</span></li>'
            for r in rejected
        )
        parts.append(
            f'<div class="block block-rejected"><h5>🚫 裏が取れず採用しなかった指摘</h5><ul>{items}</ul></div>'
        )
    return f'<section id="external">{heading}{"".join(parts)}</section>'


def render_other(data: dict) -> str:
    """どの節にも収まらない話を置く場所。書かれていなければ節ごと出さない。"""
    blocks = data.get("other") or []
    if not blocks:
        return ""
    parts = []
    for block in blocks:
        if block.get("title"):
            parts.append(f'<h4>{inline(block["title"])}</h4>')
        parts.append(text(block["text"]))
    return (
        '<section id="other">'
        '<h2><span class="h2-emoji">📝</span>その他</h2>'
        f'{"".join(parts)}</section>'
    )


def main() -> int:
    parser = argparse.ArgumentParser(description="中間データから HTML レポートを作る")
    parser.add_argument("--data", required=True, help="中間データ (JSON) のパス")
    parser.add_argument("--out", required=True, help="出力する HTML のパス")
    parser.add_argument(
        "--template",
        default=str(
            Path(__file__).resolve().parent.parent / "assets" / "report-template.html"
        ),
        help="テンプレート HTML のパス",
    )
    args = parser.parse_args()

    try:
        data = json.loads(Path(args.data).read_text(encoding="utf-8"))
    except OSError as error:
        print(f"中間データを読めません: {error}", file=sys.stderr)
        return 1
    except json.JSONDecodeError as error:
        print(f"中間データが JSON として読めません: {error}", file=sys.stderr)
        return 1

    try:
        validate(data)
    except DataError as error:
        print(f"中間データの不備: {error}", file=sys.stderr)
        return 1

    try:
        template = TEMPLATE_ONLY.sub(
            "", Path(args.template).read_text(encoding="utf-8")
        )
    except OSError as error:
        print(f"テンプレートを読めません: {error}", file=sys.stderr)
        return 1

    pr = data["pr"]
    external = render_external(data)
    other = render_other(data)
    replacements = {
        "{{PAGE_TITLE}}": html.escape(f"{pr['repo']} #{pr['number']} レビュー結果"),
        "{{HERO}}": render_hero(data),
        "{{TOC}}": render_toc(data, bool(external), bool(other)),
        "{{OVERVIEW}}": render_overview(data),
        "{{VERDICT}}": render_verdict(data),
        "{{FINDINGS}}": render_findings(data),
        "{{EXTERNAL}}": external,
        "{{OTHER}}": other,
        "{{FOOTER}}": inline(
            f"auto-pr-review / {data['run'].get('round', 1)} 回目 / {data['run'].get('reviewed_at', '')}"
        ),
    }
    for token, value in replacements.items():
        template = template.replace(token, value)

    out = Path(args.out)
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(template, encoding="utf-8")
    print(f"レポートを書き出しました: {out}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
