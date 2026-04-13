[language-markdown-outlineMarkdownを表示](https://jpx-jquants.com/ja/spec/quickstart.md) LLM用にコピー

# クイックスタート

このガイドでは、J-Quants API を利用開始するまでの全体フローと、実際にリクエストを送るまでの手順を説明します。

## [全体の流れ](https://jpx-jquants.com/ja/spec/quickstart\#%E5%85%A8%E4%BD%93%E3%81%AE%E6%B5%81%E3%82%8C)

1. [J-Quants Webサイト](https://jpx-jquants.com/) からユーザ登録およびサブスクリプションプランの登録を行います（初回のみ）。
2. ダッシュボードから API キーを取得します。
3. 取得した API キーを使って、各 API を利用します。

APIを利用するためにはFreeプランも含めたいずれかのサブスクリプションプランへの登録が必要です。ユーザ登録とサブスクリプションプランの違いについては
[FAQ](https://jpx-jquants.com/help/plan)
を参照ください。

## [Google Colab で試す](https://jpx-jquants.com/ja/spec/quickstart\#Google-Colab-%E3%81%A7%E8%A9%A6%E3%81%99)

Google Colaboratoryを利用したJ-Quants APIのクイックスタートガイドがございます。環境構築不要ですぐに試したい場合は、以下の「Open in Colab」リンクよりお試しください。

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/J-Quants/jquants-api-quick-start/blob/master/jquants-api-quick-start-v2.ipynb)

## [準備：ユーザ登録とAPIキーの取得](https://jpx-jquants.com/ja/spec/quickstart\#%E6%BA%96%E5%82%99:%E3%83%A6%E3%83%BC%E3%82%B6%E7%99%BB%E9%8C%B2%E3%81%A8API%E3%82%AD%E3%83%BC%E3%81%AE%E5%8F%96%E5%BE%97)

### 1\. ユーザ登録

[ユーザ登録ページ](https://jpx-jquants.com/register) から、J-Quants APIのサービスにメールアドレスを仮登録し、送られてきたメールのURLから登録を完了させます。

### 2\. サブスクリプション登録

[サインインページ](https://jpx-jquants.com/login) からログイン後、サブスクリプションプランの登録を行います。

### 3\. APIキーの取得

メニューの **\[設定 » API キー\]** から API キーを発行・取得してください。このキーはリクエストの認証に使用します。

## [クライアントを選ぶ](https://jpx-jquants.com/ja/spec/quickstart\#%E3%82%AF%E3%83%A9%E3%82%A4%E3%82%A2%E3%83%B3%E3%83%88%E3%82%92%E9%81%B8%E3%81%B6)

最初の API リクエストを送る前に、どのクライアントで呼び出すかを決めます。

ここでは、cURL・JavaScript・Python を例にします。

cURLJavaScriptPython

```bash
# 多くの環境では cURL はすでにインストールされています
curl --version
```

CopyCopied!

## [最初のAPIリクエストを送る](https://jpx-jquants.com/ja/spec/quickstart\#%E6%9C%80%E5%88%9D%E3%81%AEAPI%E3%83%AA%E3%82%AF%E3%82%A8%E3%82%B9%E3%83%88%E3%82%92%E9%80%81%E3%82%8B)

クライアントが用意できたら、J-Quants API に実際にリクエストを送ってみましょう。

ここでは例として、株価四本値を取得する `/v2/equities/bars/daily` エンドポイントに
`code` と `date` パラメータ付きで GET リクエストを送ります。

### Request

cURLJavaScriptPython

GET

/v2/equities/bars/daily

```
curl -G https://api.jquants.com/v2/equities/bars/daily \
-H "x-api-key: {loading}" \
-d code="86970" \
-d date="20240104"
```

Copy

[株価四本値の詳細を見る](https://jpx-jquants.com/spec/eq-bars-daily)

## [次に進むには？](https://jpx-jquants.com/ja/spec/quickstart\#%E6%AC%A1%E3%81%AB%E9%80%B2%E3%82%80%E3%81%AB%E3%81%AF?)

これで、API クライアントの準備と最初のリクエスト送信まで完了しました。

次のステップとして、以下のようなページを参照すると便利です。

- ダッシュボードで API キーを管理する画面
- 各エンドポイントのリファレンス（`Resources` セクション）
- エラー処理・ページネーションのガイド