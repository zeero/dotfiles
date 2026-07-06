> For the complete documentation index, see [llms.txt](https://developer.raindrop.io/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://developer.raindrop.io/v1/backups.md).

# Backups

## Get all

<mark style="color:blue;">`GET`</mark> `https://api.raindrop.io/rest/v1/backups`

Useful to get backup ID's that can be used in `/backup/{ID}.{format}` endpoint.

Sorted by date (new first)

{% tabs %}
{% tab title="200 " %}

```json
{
    "result": true,
    "items": [
        {
            "_id": "659d42a35ffbb2eb5ae1cb86",
            "created": "2024-01-09T12:57:07.630Z"
        }
    ]
}
```

{% endtab %}
{% endtabs %}

## Download file

<mark style="color:blue;">`GET`</mark> `https://api.raindrop.io/rest/v1/backup/{ID}.{format}`

For example:

`https://api.raindrop.io/rest/v1/backup/659d42a35ffbb2eb5ae1cb86.csv`

#### Path Parameters

| Name                                     | Type   | Description                  |
| ---------------------------------------- | ------ | ---------------------------- |
| ID<mark style="color:red;">\*</mark>     | String | Backup ID                    |
| format<mark style="color:red;">\*</mark> | String | File format: `html` or `csv` |

## Generate new

<mark style="color:blue;">`GET`</mark> `https://api.raindrop.io/rest/v1/backup`

Useful to create a brand new backup. This requires some time.

New backup will appear in the list of `/backups` endpoint

{% tabs %}
{% tab title="200 " %}

```
We will send you email with html export file when it be ready! Time depends on bookmarks count and queue.
```

{% endtab %}
{% endtabs %}
