# app.bsky.feed.describe.feed.generator

Source: https://docs.bsky.app/docs/api/app-bsky-feed-describe-feed-generator

# app.bsky.feed.describeFeedGenerator

```
GET /xrpc/app.bsky.feed.describeFeedGenerator
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Get information about a feed generator, including policies and offered feed URIs. Does not require auth; implemented by Feed Generator services (not App View).

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-feed-describe-feed-generator\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**did** didrequired

**feeds** object\[\]required

Array \[\
\
**uri** at-urirequired\
\
\]

**links** object

**privacyPolicy** string

**termsOfService** string

```json
{
  "did": "string",
  "feeds": [\
    {\
      "uri": "string"\
    }\
  ],
  "links": {
    "privacyPolicy": "string",
    "termsOfService": "string"
  }
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

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**