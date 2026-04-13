[language-markdown-outlineMarkdownを表示](https://jpx-jquants.com/ja/spec/pagination.md) LLM用にコピー

# レスポンスのページングについて

APIのレスポンスが大容量になった場合、レスポンスに`pagination_key`が設定される場合があります。`pagination_key`が設定された場合、次のクエリにおいて検索条件を変更せずに`pagination_key`を設定してリクエストを実行することで後続のデータを取得することが可能です。レスポンスの形式は各APIのサンプルコードを参照ください。

### Request

Python

GET

/v2/method

```
import requests

headers = {"x-api-key": "{loading}"}

r_get = requests.get(
  "https://api.jquants.com/v2/method?query=param",
  headers=headers,
)
data = r_get.json()["data"]

while "pagination_key" in r_get.json():
  pagination_key = r_get.json()["pagination_key"]
  r_get = requests.get(
      f"https://api.jquants.com/v2/method?query=param&pagination_key={pagination_key}",
      headers=headers,
  )
  data += r_get.json()["data"]
```

Copy

- クエリに対する全ての該当データを返却するまで、`pagination_key`がレスポンスメッセージに設定されます。`pagination_key`がレスポンスメッセージに設定されない場合はクエリに対する全ての該当データが返却されたことを意味します。
- ページングの都度、`pagination_key`の値は変わります。