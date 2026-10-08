---
name: review-norms-from-pr
description: Use when reviewing code in THIS repository — reviewing a diff or a pull request, doing a self code review, or judging whether a change is ready to merge. Holds review norms extracted from this repository's own past pull request discussions. Triggers on レビューして, セルフコードレビュー, この差分を見て, PR をレビュー, マージしていいか.
summary: 過去の PR のレビュー指摘から掘り出した、このリポジトリ固有のレビュー規範。領域ごとの規範本体は references/ に置く。
---

# このリポジトリのレビュー規範

> **掘削済み: PR #<下端> 〜 #<上端>**（<YYYY-MM-DD> 時点）
>
> この規範は、上の範囲の PR に付いた人間のレビュー指摘から `archeology-of-pr` スキルで抽出した。
> 範囲を広げたい・最新の PR を取り込みたいときは、そのスキルを実行する。

## 使い方

このリポジトリのコードをレビューするとき、下の目次から**関係する領域のファイルだけ**を開いて読む。
規範には根拠の PR 番号が付いている。指摘するときはその番号を添えると、相手が経緯をたどれる。

規範に反しているように見えても、対象のコードに書かれた事情のほうが新しい場合がある。
規範と現実がずれていると感じたら、指摘する前にその規範の根拠 PR を確認する。

## 目次

<!-- 領域ごとに 1 行。領域は抽出結果から立ち上がったものを使い、あらかじめ固定しない -->

- [<領域>](references/<領域>.md) — <その領域の規範を一行で>

## 見落とされがちな観点

<!--
どのリポジトリでも言われる一般論だが、このリポジトリの PR では実際に繰り返し指摘されたもの。
規範ではないので短く保つ。2 件以上の PR で言われたものだけを載せる。
-->

- <一文>（PR #<番号> #<番号>）
