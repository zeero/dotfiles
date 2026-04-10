# app.bsky.feed.get.feed.skeleton

Source: https://docs.bsky.app/docs/api/app-bsky-feed-get-feed-skeleton

# app.bsky.feed.getFeedSkeleton

```
GET /xrpc/app.bsky.feed.getFeedSkeleton
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Get a skeleton of a feed provided by a feed generator. Auth is optional, depending on provider requirements, and provides the DID of the requester. Implemented by Feed Generator Service.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-feed-get-feed-skeleton\#request "Direct link to Request")

### Query Parameters

**feed** at-urirequired

Reference to feed generator record describing the specific feed being requested.

**limit** integer

**Possible values:**`>= 1` and `<= 100`

**Default value:** `50`

**cursor** string

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-feed-get-feed-skeleton\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**cursor** string

**feed** object\[\]required

Array \[\
\
**post** at-urirequired\
\
**reason** object\
\
oneOf\
\
- app.bsky.feed.defs.skeletonReasonRepost\
- app.bsky.feed.defs.skeletonReasonPin\
\
**repost** at-urirequired\
\
object\
\
**feedContext** string\
\
Context that will be passed through to client and may be passed to feed generator back alongside interactions.\
\
**Possible values:**`<= 2000 characters`\
\
\]

**reqId** string

Unique identifier per request that may be passed back alongside interactions.

**Possible values:**`<= 100 characters`

```json
{
  "cursor": "string",
  "feed": [\
    {\
      "post": "string",\
      "reason": {\
        "repost": "string"\
      },\
      "feedContext": "string"\
    }\
  ],
  "reqId": "string"
}
```

Bad Request

- application/json

- Schema
- Example (auto)

**Schema**

**error** stringrequired

**Possible values:** \[`InvalidRequest`, `ExpiredToken`, `InvalidToken`, `UnknownFeed`\]

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

feed — queryrequired

Show optional parameters

limit — query

cursor — query

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**