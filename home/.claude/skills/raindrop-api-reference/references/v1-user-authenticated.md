> For the complete documentation index, see [llms.txt](https://developer.raindrop.io/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://developer.raindrop.io/v1/user/authenticated.md).

# Authenticated user

## Get user

<mark style="color:blue;">`GET`</mark> `https://api.raindrop.io/rest/v1/user`

Get currently authenticated user details

{% tabs %}
{% tab title="200 " %}

```javascript
{
    "result": true,
    "user": {
      "_id": 32,
      "config": {
        "broken_level": "strict",
        "font_color": "",
        "font_size": 0,
        "lang": "ru_RU",
        "last_collection": 8492393,
        "raindrops_sort": "-lastUpdate",
        "raindrops_view": "list"
      },
      "dropbox": {
        "enabled": true
      },
      "email": "some@email.com",
      "email_MD5": "13a0a20681d8781912e5314150694bf7",
      "files": {
        "used": 6766094,
        "size": 10000000000,
        "lastCheckPoint": "2020-01-26T23:53:19.676Z"
      },
      "fullName": "Mussabekov Rustem",
      "gdrive": {
        "enabled": true
      },
      "groups": [
        {
          "title": "My Collections",
          "hidden": false,
          "sort": 0,
          "collections": [
            8364483,
            8364403,
            66
          ]
        }
      ],
      "password": true,
      "pro": true,
      "proExpire": "2028-09-27T22:00:00.000Z",
      "registered": "2014-09-30T07:51:15.406Z"
  }
}
```

{% endtab %}

{% tab title="401 " %}

```http
Unauthorized
```

{% endtab %}
{% endtabs %}

## Get user by name

<mark style="color:blue;">`GET`</mark> `https://api.raindrop.io/rest/v1/user/{name}`

Get's publicly available user details

#### Path Parameters

| Name                                   | Type   | Description |
| -------------------------------------- | ------ | ----------- |
| name<mark style="color:red;">\*</mark> | number | Username    |

{% tabs %}
{% tab title="200 " %}

```javascript
{
  "result": true,
  "user": {
    "_id": 32,
    "email_MD5": "13a0a20681d8781912e5314150694bf7",
    "fullName": "Mussabekov Rustem",
    "pro": true,
    "registered": "2014-09-30T07:51:15.406Z"
  }
}
```

{% endtab %}

{% tab title="404 " %}

```javascript
{
  "error": -1,
  "errorMessage": "not found",
  "result": false
}
```

{% endtab %}
{% endtabs %}

## Update user

<mark style="color:orange;">`PUT`</mark> `https://api.raindrop.io/rest/v1/user`

To change email, config, password, etc... you can do it from single endpoint&#x20;

#### Request Body

| Name        | Type   | Description |
| ----------- | ------ | ----------- |
| groups      | array  |             |
| config      | object |             |
| newpassword | string |             |
| oldpassword | string |             |
| fullName    | string |             |
| email       | string |             |

{% tabs %}
{% tab title="200 " %}

```javascript
{
    "result": true,
    "user": {
        ...
    }
}
```

{% endtab %}

{% tab title="400 " %}

```javascript
//email specified but empty
{
  "result": false,
  "error": 1,
  "errorMessage": "email required"
}

//fullName specified but empty
{
  "result": false,
  "error": 2,
  "errorMessage": "User validation failed: fullName: is required"
}

//newpassword specified, but oldpassword is empty
{
  "result": false,
  "error": 3,
  "errorMessage": "oldpassword incorrect"
}

//incorrect config key value
{
  "result": false,
  "error": "config.raindrops_sort",
  "errorMessage": "User validation failed: config.raindrops_sort: `1` is not a valid enum value for path `raindrops_sort`., config: Validation failed: raindrops_sort: `1` is not a valid enum value for path `raindrops_sort`."
}
```

{% endtab %}
{% endtabs %}

## Connect social network account

<mark style="color:blue;">`GET`</mark> `https://api.raindrop.io/rest/v1/user/connect/{provider}`

Connect social network account as sign in authentication option

#### Path Parameters

| Name     | Type   | Description                                                     |
| -------- | ------ | --------------------------------------------------------------- |
| provider | string | `facebook` `google` `twitter` `vkontakte` `dropbox` or `gdrive` |

{% tabs %}
{% tab title="307 " %}

```http
Location: https://some.com/...
```

{% endtab %}
{% endtabs %}

## Disconnect social network account

<mark style="color:blue;">`GET`</mark> `https://api.raindrop.io/rest/v1/user/connect/{provider}/revoke`

Disconnect social network account from available authentication options

#### Path Parameters

| Name     | Type   | Description                                                     |
| -------- | ------ | --------------------------------------------------------------- |
| provider | string | `facebook` `google` `twitter` `vkontakte` `dropbox` or `gdrive` |

{% tabs %}
{% tab title="200 " %}

```
```

{% endtab %}
{% endtabs %}
