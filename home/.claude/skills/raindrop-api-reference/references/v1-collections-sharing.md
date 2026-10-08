> For the complete documentation index, see [llms.txt](https://developer.raindrop.io/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://developer.raindrop.io/v1/collections/sharing.md).

# Sharing

### Collaborators

Every user who shares at least one collection with another user, has a collaborators record in the API response. The record contains a restricted subset of user-specific fields.

| Field      | Description                                                                                                                                                             |
| ---------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| \_id       | User ID of the collaborator                                                                                                                                             |
| email      | <p>Email of the collaborator</p><p>Empty when authorized user have read-only access</p>                                                                                 |
| email\_MD5 | MD5 hash of collaborator email. Useful for using with Gravatar for example                                                                                              |
| fullName   | Full name of the collaborator                                                                                                                                           |
| role       | <p>Access level:</p><p><strong><code>member</code></strong> have write access and can invite more users</p><p><strong><code>viewer</code></strong> read-only access</p> |

## Share collection

<mark style="color:green;">`POST`</mark> `https://api.raindrop.io/rest/v1/collection/{id}/sharing`

Share collection with another user(s). As result invitation(s) will be send to specified email(s) with link to join collection.

#### Path Parameters

| Name | Type   | Description            |
| ---- | ------ | ---------------------- |
| id   | number | Existing collection ID |

#### Request Body

| Name   | Type   | Description                                                                                                           |
| ------ | ------ | --------------------------------------------------------------------------------------------------------------------- |
| role   | string | <p>Access level. Possible values:<br><strong><code>member</code></strong><br><strong><code>viewer</code></strong></p> |
| emails | array  | <p>The user email(s) with whom to share the project.<br>Maximum 10</p>                                                |

{% tabs %}
{% tab title="200 " %}

```javascript
{
    "result": true,
    "emails": [
        "some@user.com",
        "other@user.com"
    ]
}
```

{% endtab %}

{% tab title="400 " %}

```javascript
//'emails' array is empty
{
    "result": false,
    "errorMessage": "no emails"
}

//'emails' array larger than 10
{
    "result": false,
    "errorMessage": "you cant send more than 10 invites at once"
}
```

{% endtab %}

{% tab title="403 " %}

```javascript
//When user have more than 100 pending invitations:
{
    "result": false,
    "errorMessage": "you have too many pending invitations, you will be banned if you continue send more"
}

//User doesn't have enought permissions to invite more people
{
    "result": false,
    "errorMessage": "you dont have permissions to invite more people"
}
```

{% endtab %}
{% endtabs %}

## Get collaborators list of collection

<mark style="color:blue;">`GET`</mark> `https://api.raindrop.io/rest/v1/collection/{id}/sharing`

#### Path Parameters

| Name | Type   | Description            |
| ---- | ------ | ---------------------- |
| id   | number | Existing collection ID |

{% tabs %}
{% tab title="200 " %}

```javascript
{
  "items": [
    {
      "_id": 373381,
      "email": "some@mail.com",
      "email_MD5": "e12bda18ca265d3f3e30d247adea2549",
      "fullName": "Jakie Future",
      "registered": "2019-08-18T17:01:43.664Z",
      "role": "viewer"
    }
  ],
  "result": true
}
```

{% endtab %}
{% endtabs %}

## Unshare or leave collection

<mark style="color:red;">`DELETE`</mark> `https://api.raindrop.io/rest/v1/collection/{id}/sharing`

There two possible results of calling this method, depends on who authenticated user is:\
\- **Owner**: collection will be unshared and all collaborators will be removed\
\- **Member or viewer**: authenticated user will be removed from collaborators list

#### Path Parameters

| Name | Type   | Description            |
| ---- | ------ | ---------------------- |
| id   | number | Existing collection ID |

{% tabs %}
{% tab title="200 " %}

```javascript
{
    "result": true
}
```

{% endtab %}
{% endtabs %}

## Change access level of collaborator

<mark style="color:orange;">`PUT`</mark> `https://api.raindrop.io/rest/v1/collection/{id}/sharing/{userId}`

#### Path Parameters

| Name   | Type   | Description             |
| ------ | ------ | ----------------------- |
| userId | number | User ID of collaborator |
| id     | number | Existing collection ID  |

#### Request Body

| Name | Type   | Description                  |
| ---- | ------ | ---------------------------- |
| role | string | **`member`** or **`viewer`** |

{% tabs %}
{% tab title="200 " %}

```javascript
{
    "result": true
}
```

{% endtab %}
{% endtabs %}

## Delete a collaborator

<mark style="color:red;">`DELETE`</mark> `https://api.raindrop.io/rest/v1/collection/{id}/sharing/{userId}`

Remove an user from shared collection

#### Path Parameters

| Name   | Type   | Description             |
| ------ | ------ | ----------------------- |
| userId | number | User ID of collaborator |
| id     | number | Existing collection ID  |

{% tabs %}
{% tab title="200 " %}

```javascript
{
    "result": true
}
```

{% endtab %}
{% endtabs %}

## Accept an invitation

<mark style="color:green;">`POST`</mark> `https://api.raindrop.io/rest/v1/collection/{id}/join`

Accept an invitation to join a shared collection

#### Path Parameters

| Name | Type   | Description            |
| ---- | ------ | ---------------------- |
| id   | number | Existing collection ID |

#### Request Body

| Name  | Type   | Description             |
| ----- | ------ | ----------------------- |
| token | string | Secret token from email |

{% tabs %}
{% tab title="200 " %}

```javascript
{
    "result": true,
    "role": "member"
}
```

{% endtab %}

{% tab title="403 " %}

```javascript
//Incorrect token
{
    "result": false,
    "error": "CollaboratorsIncorrectToken",
    "errorMessage": "Incorrect or expired token"
}

//Collection no more exists
{
    "result": false,
    "error": "CollaboratorsNoCollection",
    "errorMessage": "Shared collection not found or removed"
}

{
    "result": false,
    "error": "CollaboratorsAlready",
    "errorMessage": "You already owner of this collection"
}
```

{% endtab %}
{% endtabs %}
