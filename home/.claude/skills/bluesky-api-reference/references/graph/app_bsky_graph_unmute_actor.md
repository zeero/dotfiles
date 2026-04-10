# app.bsky.graph.unmute.actor

Source: https://docs.bsky.app/docs/api/app-bsky-graph-unmute-actor

# app.bsky.graph.unmuteActor

```
POST /xrpc/app.bsky.graph.unmuteActor
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Unmutes the specified account. Requires auth.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-graph-unmute-actor\#request "Direct link to Request")

- application/json

### Body **required**

**actor** at-identifierrequired

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-graph-unmute-actor\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

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

  "actor": "string"

}
```

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**