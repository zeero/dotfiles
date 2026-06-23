---
name: documentation
description: Conventions for the file format and structure of documents (Markdown, etc.). Always use this skill when creating, editing, or formatting Markdown files such as documents, READMEs, design docs, research notes, or procedure guides.
---

# ドキュメント作成規約（形式・構造）

ドキュメント（Markdown 等のファイル）を作成・編集するときの **ファイル形式と構造** の規約。

## 言語と見出し

- ドキュメントは常に日本語で書く。
- 見出しには絵文字を付けてよい（推奨）。ただし感情表現としての絵文字は使わず、見出しの内容を表すものに限る。

## ファイル

- 文字コードは UTF-8、改行コードは LF。ただし既存ファイルで文字コード・改行コードが決まっている場合はそれに従う。
- ファイル名はケバブケースで命名する。

## ソースパスの参照

- ソースコードのパスを記載するときは、GitHub のパーマネントリンクでリンク化する。
- `gh browse ${path} -n -c` を活用してパーマリンクを得る。

## 冒頭の概要と目次

- 冒頭に概要と目次を含める。
- 目次には第二階層までの見出しを含める。
- アンカーは、スペースをハイフンに変換し、記号は URL エンコードする。

例:

```
ファイルの概要

## 目次

1. [セクション1](#セクション1)
  1. [セクション1-1](#セクション1-1)
1. [セクション2 スペースはハイフンに変換](#セクション2-スペースはハイフンに変換)
1. [セクション3: 記号はURLエンコード](#セクション3%3A-記号はURLエンコード)

---

```
