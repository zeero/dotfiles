> For the complete documentation index, see [llms.txt](https://developer.raindrop.io/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://developer.raindrop.io/v1/tags.md).

# Tags

## Get tags

<mark style="color:blue;">`GET`</mark> `https://api.raindrop.io/rest/v1/tags/{collectionId}`

#### Path Parameters

| Name         | Type   | Description                                                                                |
| ------------ | ------ | ------------------------------------------------------------------------------------------ |
| collectionId | number | Optional collection ID, when not specified all tags from all collections will be retrieved |

{% tabs %}
{% tab title="200 " %}

```javascript
{
    "result": true,
    "items": [
        {
            "_id": "api",
            "count": 100
        }
    ]
}
```

{% endtab %}
{% endtabs %}

## Rename tag

<mark style="color:orange;">`PUT`</mark> `https://api.raindrop.io/rest/v1/tags/{collectionId}`

#### Path Parameters

| Name         | Type   | Description                                                                   |
| ------------ | ------ | ----------------------------------------------------------------------------- |
| collectionId | number | It's possible to restrict rename action to just one collection. It's optional |

#### Request Body

| Name    | Type   | Description                                                |
| ------- | ------ | ---------------------------------------------------------- |
| replace | string | New name                                                   |
| tags    | array  | Specify **array** with **only one** string (name of a tag) |

{% tabs %}
{% tab title="200 " %}

```javascript
{
    "result": true
}
```

{% endtab %}
{% endtabs %}

## Merge tags

<mark style="color:orange;">`PUT`</mark> `https://api.raindrop.io/rest/v1/tags/{collectionId}`

Basically this action rename bunch of `tags` to new name (`replace` field)

#### Path Parameters

| Name         | Type   | Description                                                                  |
| ------------ | ------ | ---------------------------------------------------------------------------- |
| collectionId | string | It's possible to restrict merge action to just one collection. It's optional |

#### Request Body

| Name    | Type   | Description  |
| ------- | ------ | ------------ |
| replace | string | New name     |
| tags    | array  | List of tags |

{% tabs %}
{% tab title="200 " %}

```javascript
{
    "result": true
}
```

{% endtab %}
{% endtabs %}

## Remove tag(s)

<mark style="color:red;">`DELETE`</mark> `https://api.raindrop.io/rest/v1/tags/{collectionId}`

#### Path Parameters

| Name         | Type   | Description                                                                   |
| ------------ | ------ | ----------------------------------------------------------------------------- |
| collectionId | string | It's possible to restrict remove action to just one collection. It's optional |

#### Request Body

| Name | Type  | Description  |
| ---- | ----- | ------------ |
| tags | array | List of tags |

{% tabs %}
{% tab title="200 " %}

```javascript
{
    "result": true
}
```

{% endtab %}
{% endtabs %}
