# app.bsky.feed.send.interactions

Source: https://docs.bsky.app/docs/api/app-bsky-feed-send-interactions

# app.bsky.feed.sendInteractions

```
POST /xrpc/app.bsky.feed.sendInteractions
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Send information about interactions with feed items back to the feed generator that served them.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-feed-send-interactions\#request "Direct link to Request")

- application/json

### Body **required**

**feed** at-uri

**interactions** object\[\]required

Array \[\
\
**item** at-uri\
\
**event** string\
\
**Possible values:** \[`app.bsky.feed.defs#requestLess`, `app.bsky.feed.defs#requestMore`, `app.bsky.feed.defs#clickthroughItem`, `app.bsky.feed.defs#clickthroughAuthor`, `app.bsky.feed.defs#clickthroughReposter`, `app.bsky.feed.defs#clickthroughEmbed`, `app.bsky.feed.defs#interactionSeen`, `app.bsky.feed.defs#interactionLike`, `app.bsky.feed.defs#interactionRepost`, `app.bsky.feed.defs#interactionReply`, `app.bsky.feed.defs#interactionQuote`, `app.bsky.feed.defs#interactionShare`\]\
\
**feedContext** string\
\
Context on a feed item that was originally supplied by the feed generator on getFeedSkeleton.\
\
**Possible values:**`<= 2000 characters`\
\
**reqId** string\
\
Unique identifier per request that may be passed back alongside interactions.\
\
**Possible values:**`<= 100 characters`\
\
\]

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-feed-send-interactions\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**\_unknown\_** object

object

```json
{
  "_unknown_": {}
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

Body required

```json
{

  "feed": "string",

  "interactions": [\
\
    {\
\
      "item": "string",\
\
      "event": "app.bsky.feed.defs#requestLess",\
\
      "feedContext": "string",\
\
      "reqId": "string"\
\
    }\
\
  ]

}
```

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**