# app.bsky.feed.get.quotes

Source: https://docs.bsky.app/docs/api/app-bsky-feed-get-quotes

# app.bsky.feed.getQuotes

```
GET /xrpc/app.bsky.feed.getQuotes
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Get a list of quotes for a given post.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-feed-get-quotes\#request "Direct link to Request")

### Query Parameters

**uri** at-urirequired

Reference (AT-URI) of post record

**cid** cid

If supplied, filters to quotes of specific version (by CID) of the post record.

**limit** integer

**Possible values:**`>= 1` and `<= 100`

**Default value:** `50`

**cursor** string

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-feed-get-quotes\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**uri** at-urirequired

**cid** cid

**cursor** string

**posts** app.bsky.feed.defs.postView\[\]required

```json
{
  "uri": "string",
  "cid": "string",
  "cursor": "string",
  "posts": [\
    null\
  ]
}
```

Bad Request

- application/json

- Schema
- Example (auto)

**Schema**

**error** stringrequired

**Possible values:** \[`InvalidRequest`, `ExpiredToken`, `InvalidToken`\]

**message** stringrequired

```json
{
  "error": "InvalidRequest",
  "message": "string"
}
```

Unauthorized

- application/json

- Schema
- Example (auto)

**Schema**

**error** required

**message** stringrequired

```json
{
  "message": "string"
}
```

#### Authorization: http

```
name: Bearertype: httpscheme: bearer
```

Request Collapse all

Auth

Bearer Token

Parameters

uri — queryrequired

Show optional parameters

cid — query

limit — query

cursor — query

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**