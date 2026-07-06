> For the complete documentation index, see [llms.txt](https://developer.raindrop.io/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://developer.raindrop.io/v1/collections/covers-icons.md).

# Covers/icons

In your app you could easily make icon/cover selector from more than 10 000 icons

![](/files/-M-ogjIOcDvx33liprkE)

## Search for cover

<mark style="color:blue;">`GET`</mark> `https://api.raindrop.io/rest/v1/collections/covers/{text}`

Search for specific cover (icon)

#### Path Parameters

| Name | Type   | Description           |
| ---- | ------ | --------------------- |
| text | string | For example "pokemon" |

{% tabs %}
{% tab title="200 " %}

```javascript
{
  "items": [
    {
      "title": "Icons8",
      "icons": [
        {
          "png": "https://rd-icons-icons8.gumlet.com/color/5x/mystic-pokemon.png?fill-color=transparent"
        }
      ]
    },
    {
      "title": "Iconfinder",
      "icons": [
        {
          "png": "https://cdn4.iconfinder.com/data/icons/pokemon-go/512/Pokemon_Go-01-128.png",
          "svg": "https://api.iconfinder.com/v2/icons/1320040/formats/svg/1760420/download"
        }
      ]
    }
  ],
  "result": true
}
```

{% endtab %}
{% endtabs %}

## Featured covers

<mark style="color:blue;">`GET`</mark> `https://api.raindrop.io/rest/v1/collections/covers`

#### Path Parameters

| Name | Type   | Description |
| ---- | ------ | ----------- |
|      | string |             |

{% tabs %}
{% tab title="200 " %}

```javascript
{
  "items": [
    {
      "title": "Colors circle",
      "icons": [
        {
          "png": "https://up.raindrop.io/collection/templates/colors/ios1.png"
        }
      ]
    },
    {
      "title": "Hockey",
      "icons": [
        {
          "png": "https://up.raindrop.io/collection/templates/hockey-18/12i.png"
        }
      ]
    }
  ]
}
```

{% endtab %}
{% endtabs %}
