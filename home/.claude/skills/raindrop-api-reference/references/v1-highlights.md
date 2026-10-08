> For the complete documentation index, see [llms.txt](https://developer.raindrop.io/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://developer.raindrop.io/v1/highlights.md).

# Highlights

Single `highlight` object:

| Field   | Type     | Description                                                                                                                                                                                                                                                                                                          |
| ------- | -------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| \_id    | `String` | Unique id of highlight                                                                                                                                                                                                                                                                                               |
| text    | `String` | Text of highlight (required)                                                                                                                                                                                                                                                                                         |
| title   | `String` | Title of bookmark                                                                                                                                                                                                                                                                                                    |
| color   | `String` | <p>Color of highlight. <br>Default <code>yellow</code><br><br>Can be <code>blue</code>, <code>brown</code>, <code>cyan</code>, <code>gray</code>, <code>green</code>, <code>indigo</code>, <code>orange</code>, <code>pink</code>, <code>purple</code>, <code>red</code>, <code>teal</code>, <code>yellow</code></p> |
| note    | `String` | Optional note for highlight                                                                                                                                                                                                                                                                                          |
| created | `String` | Creation date of highlight                                                                                                                                                                                                                                                                                           |
| tags    | `Array`  | Tags list                                                                                                                                                                                                                                                                                                            |
| link    | `String` | Highlighted page URL                                                                                                                                                                                                                                                                                                 |

## Get all highlights

<mark style="color:blue;">`GET`</mark> `https://api.raindrop.io/rest/v1/highlights`

#### Query Parameters

| Name    | Type   | Description                                      |
| ------- | ------ | ------------------------------------------------ |
| page    | Number |                                                  |
| perpage | Number | How many highlights per page. 50 max. Default 25 |

{% tabs %}
{% tab title="200: OK " %}

```javascript
{
    "result": true,
    "items": [
        {
            "note": "Trully native macOS app",
            "color": "red",
            "text": "Orion is the new WebKit-based browser for Mac",
            "created": "2022-03-21T14:41:34.059Z",
            "tags": ["tag1", "tag2"],
            "_id": "62388e9e48b63606f41e44a6",
            "raindropRef": 123,
            "link": "https://apple.com",
            "title": "Orion Browser"
        },
        {
            "note": "",
            "color": "green",
            "text": "Built on WebKit, Orion gives you a fast, smooth and lightweight browsing experience",
            "created": "2022-03-21T15:13:21.128Z",
            "tags": ["tag1", "tag2"],
            "_id": "62389611058af151c840f667",
            "raindropRef": 123,
            "link": "https://apple.com",
            "title": "Apple"
        }
    ]
}
```

{% endtab %}
{% endtabs %}

## Get all highlights in a collection

<mark style="color:blue;">`GET`</mark> `https://api.raindrop.io/rest/v1/highlights/{collectionId}`

#### Path Parameters

| Name                                           | Type   | Description                                      |
| ---------------------------------------------- | ------ | ------------------------------------------------ |
| collectionId<mark style="color:red;">\*</mark> | Number | Collection ID                                    |
| page                                           | Number |                                                  |
| perpage                                        | Number | How many highlights per page. 50 max. Default 25 |

{% tabs %}
{% tab title="200: OK " %}

```javascript
{
    "result": true,
    "items": [
        {
            "note": "Trully native macOS app",
            "color": "red",
            "text": "Orion is the new WebKit-based browser for Mac",
            "created": "2022-03-21T14:41:34.059Z",
            "tags": ["tag1", "tag2"],
            "_id": "62388e9e48b63606f41e44a6",
            "raindropRef": 123,
            "link": "https://apple.com",
            "title": "Apple"
        },
        {
            "note": "",
            "color": "green",
            "text": "Built on WebKit, Orion gives you a fast, smooth and lightweight browsing experience",
            "created": "2022-03-21T15:13:21.128Z",
            "tags": ["tag1", "tag2"],
            "_id": "62389611058af151c840f667",
            "raindropRef": 123,
            "link": "https://apple.com",
            "title": "Apple"
        }
    ]
}
```

{% endtab %}
{% endtabs %}

## Get highlights of raindrop

<mark style="color:blue;">`GET`</mark> `https://api.raindrop.io/rest/v1/raindrop/{id}`

#### Path Parameters

| Name                                 | Type   | Description          |
| ------------------------------------ | ------ | -------------------- |
| id<mark style="color:red;">\*</mark> | number | Existing raindrop ID |

{% tabs %}
{% tab title="200 " %}

```javascript
{
    "result": true,
    "item": {
        "_id": 373777232,
        "highlights": [
            {
                "note": "Trully native macOS app",
                "color": "red",
                "text": "Orion is the new WebKit-based browser for Mac",
                "created": "2022-03-21T14:41:34.059Z",
                "lastUpdate": "2022-03-22T14:30:52.004Z",
                "_id": "62388e9e48b63606f41e44a6"
            },
            {
                "note": "",
                "color": "green",
                "text": "Built on WebKit, Orion gives you a fast, smooth and lightweight browsing experience",
                "created": "2022-03-21T15:13:21.128Z",
                "lastUpdate": "2022-03-22T09:15:18.751Z",
                "_id": "62389611058af151c840f667"
            }
        ]
    }
}
```

{% endtab %}
{% endtabs %}

## Add highlight

<mark style="color:orange;">`PUT`</mark> `https://api.raindrop.io/rest/v1/raindrop/{id}`

Just specify a `highlights` array in body with `object` for each highlight

**Fore example:**

`{"highlights": [ { "text": "Some quote", "color": "red", "note": "Some note" } ] }`

#### Path Parameters

| Name                                 | Type   | Description          |
| ------------------------------------ | ------ | -------------------- |
| id<mark style="color:red;">\*</mark> | number | Existing raindrop ID |

#### Request Body

| Name                                                 | Type   | Description |
| ---------------------------------------------------- | ------ | ----------- |
| highlights<mark style="color:red;">\*</mark>         | array  |             |
| highlights\[].text<mark style="color:red;">\*</mark> | String |             |
| highlights\[].note                                   | String |             |
| highlights\[].color                                  | String |             |

{% tabs %}
{% tab title="200 " %}

```javascript
{
    "result": true,
    "item": {
        "_id": 373777232,
        "highlights": [
            {
                "note": "Trully native macOS app",
                "color": "red",
                "text": "Orion is the new WebKit-based browser for Mac",
                "created": "2022-03-21T14:41:34.059Z",
                "lastUpdate": "2022-03-22T14:30:52.004Z",
                "_id": "62388e9e48b63606f41e44a6"
            },
            {
                "note": "",
                "color": "green",
                "text": "Built on WebKit, Orion gives you a fast, smooth and lightweight browsing experience",
                "created": "2022-03-21T15:13:21.128Z",
                "lastUpdate": "2022-03-22T09:15:18.751Z",
                "_id": "62389611058af151c840f667"
            }
        ]
    }
}
```

{% endtab %}
{% endtabs %}

## Update highlight

<mark style="color:orange;">`PUT`</mark> `https://api.raindrop.io/rest/v1/raindrop/{id}`

Just specify a `highlights` array in body with `object` containing particular `_id` of highlight you want to update and all other fields you want to change.

**Fore example:**

`{"highlights": [ { "_id": "62388e9e48b63606f41e44a6", "note": "New note" } ] }`

#### Path Parameters

| Name                                 | Type   | Description          |
| ------------------------------------ | ------ | -------------------- |
| id<mark style="color:red;">\*</mark> | number | Existing raindrop ID |

#### Request Body

| Name                                                 | Type   | Description                                  |
| ---------------------------------------------------- | ------ | -------------------------------------------- |
| highlights<mark style="color:red;">\*</mark>         | array  |                                              |
| highlights\[].\_id<mark style="color:red;">\*</mark> | String | Particular highlight \_id you want to remove |
| highlights\[].text                                   | String | Should be empty string                       |
| highlights\[].note                                   | String |                                              |
| highlights\[].color                                  | String |                                              |

{% tabs %}
{% tab title="200 " %}

```javascript
{
    "result": true,
    "item": {
        "_id": 373777232,
        "highlights": [
            {
                "note": "Trully native macOS app",
                "color": "red",
                "text": "Orion is the new WebKit-based browser for Mac",
                "created": "2022-03-21T14:41:34.059Z",
                "lastUpdate": "2022-03-22T14:30:52.004Z",
                "_id": "62388e9e48b63606f41e44a6"
            },
            {
                "note": "",
                "color": "green",
                "text": "Built on WebKit, Orion gives you a fast, smooth and lightweight browsing experience",
                "created": "2022-03-21T15:13:21.128Z",
                "lastUpdate": "2022-03-22T09:15:18.751Z",
                "_id": "62389611058af151c840f667"
            }
        ]    }}
```

{% endtab %}
{% endtabs %}

## Remove highlight

<mark style="color:orange;">`PUT`</mark> `https://api.raindrop.io/rest/v1/raindrop/{id}`

Just specify a `highlights` array in body with `object` containing particular `_id` of highlight you want to remove and empty string for `text` field.

**Fore example:**

`{"highlights": [ { "_id": "62388e9e48b63606f41e44a6", "text": "" } ] }`

#### Path Parameters

| Name                                 | Type   | Description          |
| ------------------------------------ | ------ | -------------------- |
| id<mark style="color:red;">\*</mark> | number | Existing raindrop ID |

#### Request Body

| Name                                                 | Type   | Description                                  |
| ---------------------------------------------------- | ------ | -------------------------------------------- |
| highlights<mark style="color:red;">\*</mark>         | array  |                                              |
| highlights\[].\_id<mark style="color:red;">\*</mark> | String | Particular highlight \_id you want to remove |
| highlights\[].text<mark style="color:red;">\*</mark> | String | Should be empty string                       |

{% tabs %}
{% tab title="200 " %}

```javascript
{
    "result": true,
    "item": {
        "_id": 373777232,
        "highlights": [
            {
                "note": "Trully native macOS app",
                "color": "red",
                "text": "Orion is the new WebKit-based browser for Mac",
                "created": "2022-03-21T14:41:34.059Z",
                "lastUpdate": "2022-03-22T14:30:52.004Z",
                "_id": "62388e9e48b63606f41e44a6"
            },
            {
                "note": "",
                "color": "green",
                "text": "Built on WebKit, Orion gives you a fast, smooth and lightweight browsing experience",
                "created": "2022-03-21T15:13:21.128Z",
                "lastUpdate": "2022-03-22T09:15:18.751Z",
                "_id": "62389611058af151c840f667"
            }
        ]
    }}
```

{% endtab %}
{% endtabs %}
