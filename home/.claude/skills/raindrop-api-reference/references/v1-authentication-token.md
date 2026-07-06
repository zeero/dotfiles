> For the complete documentation index, see [llms.txt](https://developer.raindrop.io/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://developer.raindrop.io/v1/authentication/token.md).

# Obtain access token

External applications could obtain a user authorized API token via the OAuth2 protocol. Before getting started, developers need to create their applications in [App Management Console](https://app.raindrop.io/settings/integrations) and configure a valid OAuth redirect URL. A registered Raindrop.io application is assigned a unique `Client ID` and `Client Secret` which are needed for the OAuth2 flow.

This procedure is comprised of several steps, which will be described below.

{% hint style="info" %}
If you just want to test your application, or do not plan to access any data except yours account you don't need to make all of those steps.

Just go to [App Management Console](https://app.raindrop.io/settings/integrations) and open your application settings. Copy **Test token** and use it as described in [**Make authorized calls**](/v1/authentication/calls.md)**.**
{% endhint %}

## Step 1: The authorization request

<mark style="color:blue;">`GET`</mark> `https://raindrop.io/oauth/authorize`

Direct the user to our authorization URL with specified request parameters.\
— If the user is not logged in, they will be asked to log in\
— The user will be asked if he would like to grant your application access to his Raindrop.io data

#### Query Parameters

| Name           | Type   | Description                                                     |
| -------------- | ------ | --------------------------------------------------------------- |
| redirect\_uri  | string | Redirect URL configured in your application setting             |
| client\_id     | string | The unique Client ID of the Raindrop.io app that you registered |
| response\_type | string | Should be always `code`                                         |

{% tabs %}
{% tab title="307 Check details in Step 2" %}

```
```

{% endtab %}
{% endtabs %}

![User will be asked if he would like to grant your application access to his Raindrop.io data](/files/-M-og97-rwxYlVDTb5mi)

Here example CURL request:

```bash
curl "https://api.raindrop.io/v1/oauth/authorize?response_type=code&client_id=5e1c382cf6f48c0211359083&redirect_uri=https:%2F%2Foauthdebugger.com%2Fdebug"
```

## Step 2: The redirection to your application site

When the user grants your authorization request, the user will be redirected to the redirect URL configured in your application setting. The redirect request will come with query parameter attached: `code` .

The `code` parameter contains the authorization code that you will use to exchange for an access token.

In case of error redirect request will come with `error` query parameter:

| Error                        | Description                                                                                                    |
| ---------------------------- | -------------------------------------------------------------------------------------------------------------- |
| access\_denied               | When the user denies your authorization request                                                                |
| invalid\_application\_status | When your application exceeds the maximum token limit or when your application is being suspended due to abuse |

## Step 3: The token exchange

<mark style="color:green;">`POST`</mark> `https://raindrop.io/oauth/access_token`

Once you have the authorization `code`, you can exchange it for the `access_token` by doing a `POST` request with all required body parameters as JSON:

#### Headers

| Name         | Type   | Description      |
| ------------ | ------ | ---------------- |
| Content-Type | string | application/json |

#### Request Body

| Name           | Type   | Description                                                     |
| -------------- | ------ | --------------------------------------------------------------- |
| grant\_type    | string | **authorization\_code**                                         |
| code           | string | Code that you received in step 2                                |
| client\_id     | string | The unique Client ID of the Raindrop.io app that you registered |
| client\_secret | string | Client secret                                                   |
| redirect\_uri  | string | Same `redirect_uri` from step 1                                 |

{% tabs %}
{% tab title="200 " %}

```javascript
{
  "access_token": "ae261404-11r4-47c0-bce3-e18a423da828",
  "refresh_token": "c8080368-fad2-4a3f-b2c9-71d3z85011vb",
  "expires": 1209599768, //in miliseconds, deprecated
  "expires_in": 1209599, //in seconds, use this instead!!!
  "token_type": "Bearer"
}
```

{% endtab %}

{% tab title="400 Occurs when code parameter is invalid" %}

```javascript
{"error": "bad_authorization_code"}
```

{% endtab %}
{% endtabs %}

Here an example CURL request:

```bash
curl -X "POST" "https://raindrop.io/oauth/access_token" \
     -H 'Content-Type: application/json' \
     -d $'{
  "code": "c8983220-1cca-4626-a19d-801a6aae003c",
  "client_id": "5e1c589cf6f48c0211311383",
  "redirect_uri": "https://oauthdebugger.com/debug",
  "client_secret": "c3363988-9d27-4bc6-a0ae-d126ce78dc09",
  "grant_type": "authorization_code"
}'
```

## ♻️ The access token refresh

<mark style="color:green;">`POST`</mark> `https://raindrop.io/oauth/access_token`

For security reasons access tokens (except "test tokens") will **expire after two weeks**. In this case you should request the new one, by calling `POST` request with body parameters (JSON):

#### Headers

| Name         | Type   | Description      |
| ------------ | ------ | ---------------- |
| Content-Type | string | application/json |

#### Request Body

| Name           | Type   | Description                                          |
| -------------- | ------ | ---------------------------------------------------- |
| client\_id     | string | The unique Client ID of your app that you registered |
| client\_secret | string | Client secret of your app                            |
| grant\_type    | string | **refresh\_token**                                   |
| refresh\_token | string | Refresh token that you get in step 3                 |

{% tabs %}
{% tab title="200 " %}

```javascript
{
  "access_token": "ae261404-18r4-47c0-bce3-e18a423da898",
  "refresh_token": "c8080368-fad2-4a9f-b2c9-73d3z850111b",
  "expires": 1209599768, //in miliseconds, deprecated
  "expires_in": 1209599, //in seconds, use this instead!!!
  "token_type": "Bearer"
}
```

{% endtab %}
{% endtabs %}
