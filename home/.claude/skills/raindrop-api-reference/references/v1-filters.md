> For the complete documentation index, see [llms.txt](https://developer.raindrop.io/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://developer.raindrop.io/v1/filters.md).

# Filters

To help users easily find their content you can suggest context aware filters like we have in Raindrop.io app

![Filters right above search field](/files/-M-of2jvit9BqVisVU9y)

## Fields

| Field            | Type            | Description                                              |
| ---------------- | --------------- | -------------------------------------------------------- |
| broken           | `Object`        |                                                          |
| broken.count     | `Integer`       | Broken links count                                       |
| duplicates       | `Object`        |                                                          |
| duplicates.count | `Integer`       | Duplicate links count                                    |
| important        | `Object`        |                                                          |
| important.count  | `Integer`       | Count of raindrops that marked as "favorite"             |
| notag            | `Object`        |                                                          |
| notag.count      | `Integer`       | Count of raindrops without any tag                       |
| tags             | `Array<Object>` | List of tags in format `{"_id": "tag name", "count": 1}` |
| types            | `Array<Object>` | List of types in format `{"_id": "type", "count": 1}`    |

## Get filters

<mark style="color:blue;">`GET`</mark> `https://api.raindrop.io/rest/v1/filters/{collectionId}`

#### Path Parameters

| Name         | Type   | Description                |
| ------------ | ------ | -------------------------- |
| collectionId | string | Collection ID. `0` for all |

#### Query Parameters

| Name     | Type   | Description                                                                                                                  |
| -------- | ------ | ---------------------------------------------------------------------------------------------------------------------------- |
| tagsSort | string | <p>Sort tags by:<br><strong><code>-count</code></strong> by count, default<br><strong><code>\_id</code></strong> by name</p> |
| search   | string | Check "raindrops" documentation for more details                                                                             |

{% tabs %}
{% tab title="200 " %}

```javascript
{
  "result": true,
  "broken": {
    "count": 31
  },
  "duplicates": {
    "count": 7
  },
  "important": {
    "count": 59
  },
  "notag": {
    "count": 1366
  },
  "tags": [
    {
      "_id": "performanc",
      "count": 19
    },
    {
      "_id": "guides",
      "count": 9
    }
  ],
  "types": [
    {
      "_id": "article",
      "count": 313
    },
    {
      "_id": "image",
      "count": 143
    },
    {
      "_id": "video",
      "count": 26
    },
    {
      "_id": "document",
      "count": 7
    }
  ]
}
```

{% endtab %}
{% endtabs %}
