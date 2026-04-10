# app.bsky.graph.get.relationships

Source: https://docs.bsky.app/docs/api/app-bsky-graph-get-relationships

# app.bsky.graph.getRelationships

```
GET /xrpc/app.bsky.graph.getRelationships
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Enumerates public relationships between one account, and a list of other accounts. Does not require auth.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-graph-get-relationships\#request "Direct link to Request")

### Query Parameters

**actor** at-identifierrequired

Primary account requesting relationships for.

**others** at-identifier\[\]

**Possible values:**`<= 30`

List of 'other' accounts to be related back to the primary.

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-graph-get-relationships\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**actor** did

**relationships** object\[\]required

Array \[\
\
oneOf\
\
- app.bsky.graph.defs.relationship\
- app.bsky.graph.defs.notFoundActor\
\
**did** didrequired\
\
**following** at-uri\
\
if the actor follows this DID, this is the AT-URI of the follow record\
\
**followedBy** at-uri\
\
if the actor is followed by this DID, contains the AT-URI of the follow record\
\
**blocking** at-uri\
\
if the actor blocks this DID, this is the AT-URI of the block record\
\
**blockedBy** at-uri\
\
if the actor is blocked by this DID, contains the AT-URI of the block record\
\
**blockingByList** at-uri\
\
if the actor blocks this DID via a block list, this is the AT-URI of the listblock record\
\
**blockedByList** at-uri\
\
if the actor is blocked by this DID via a block list, contains the AT-URI of the listblock record\
\
**actor** at-identifierrequired\
\
**notFound** booleanrequired\
\
**Default value:** `true`\
\
\]

```json
{
  "actor": "string",
  "relationships": [\
    {\
      "did": "string",\
      "following": "string",\
      "followedBy": "string",\
      "blocking": "string",\
      "blockedBy": "string",\
      "blockingByList": "string",\
      "blockedByList": "string"\
    },\
    {\
      "actor": "string",\
      "notFound": true\
    }\
  ]
}
```

Bad Request

- application/json

- Schema
- Example (auto)

**Schema**

**error** stringrequired

**Possible values:** \[`InvalidRequest`, `ExpiredToken`, `InvalidToken`, `ActorNotFound`\]

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

actor — queryrequired

Show optional parameters

others — query

Add item

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**