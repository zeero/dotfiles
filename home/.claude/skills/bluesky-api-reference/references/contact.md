# Bluesky API Reference: contact

## app.bsky.contact.dismiss.match

Source: https://docs.bsky.app/docs/api/app-bsky-contact-dismiss-match

# app.bsky.contact.dismissMatch

```
POST /xrpc/app.bsky.contact.dismissMatch
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Removes a match that was found via contact import. It shouldn't appear again if the same contact is re-imported. Requires authentication.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-contact-dismiss-match\#request "Direct link to Request")

- application/json

### Body **required**

**subject** didrequired

The subject's DID to dismiss the match with.

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-contact-dismiss-match\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

object

```json
{}
```

Bad Request

- application/json

- Schema
- Example (auto)

**Schema**

**error** stringrequired

**Possible values:** \[`InvalidRequest`, `ExpiredToken`, `InvalidToken`, `InvalidDid`, `InternalError`\]

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

  "subject": "string"

}
```

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**

---

## app.bsky.contact.get.matches

Source: https://docs.bsky.app/docs/api/app-bsky-contact-get-matches

# app.bsky.contact.getMatches

```
GET /xrpc/app.bsky.contact.getMatches
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Returns the matched contacts (contacts that were mutually imported). Excludes dismissed matches. Requires authentication.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-contact-get-matches\#request "Direct link to Request")

### Query Parameters

**limit** integer

**Possible values:**`>= 1` and `<= 100`

**Default value:** `50`

**cursor** string

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-contact-get-matches\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**cursor** string

**matches** object\[\]required

Array \[\
\
**did** didrequired\
\
**handle** handlerequired\
\
**displayName** string\
\
**Possible values:**`<= 640 characters`\
\
**pronouns** string\
\
**description** string\
\
**Possible values:**`<= 2560 characters`\
\
**avatar** uri\
\
**associated** object\
\
**lists** integer\
\
**feedgens** integer\
\
**starterPacks** integer\
\
**labeler** boolean\
\
**chat** object\
\
**allowIncoming** stringrequired\
\
**Possible values:** \[`all`, `none`, `following`\]\
\
**activitySubscription** object\
\
**allowSubscriptions** stringrequired\
\
**Possible values:** \[`followers`, `mutuals`, `none`\]\
\
**germ** object\
\
**messageMeUrl** urirequired\
\
**showButtonTo** stringrequired\
\
**Possible values:** \[`usersIFollow`, `everyone`\]\
\
**indexedAt** date-time\
\
**createdAt** date-time\
\
**viewer** object\
\
Metadata about the requesting account's relationship with the subject account. Only has meaningful content for authed requests.\
\
**muted** boolean\
\
**mutedByList** object\
\
**uri** at-urirequired\
\
**cid** cidrequired\
\
**name** stringrequired\
\
**Possible values:**`non-empty` and `<= 64 characters`\
\
**purpose** objectrequired\
\
oneOf\
\
- app.bsky.graph.defs.modlist\
- app.bsky.graph.defs.curatelist\
- app.bsky.graph.defs.referencelist\
\
string\
\
A list of actors to apply an aggregate moderation action (mute/block) on.\
\
string\
\
A list of actors used for curation purposes such as list feeds or interaction gating.\
\
string\
\
A list of actors used for only for reference purposes such as within a starter pack.\
\
**avatar** uri\
\
**listItemCount** integer\
\
**labels** object\[\]\
\
Array \[\
\
**ver** integer\
\
**src** didrequired\
\
DID of the actor who created this label.\
\
**uri** urirequired\
\
AT URI of the record, repository (account), or other resource that this label applies to.\
\
**cid** cid\
\
Optionally, CID specifying the specific version of 'uri' resource this label applies to.\
\
**val** stringrequired\
\
The short string name of the value or type of this label.\
\
**Possible values:**`<= 128 characters`\
\
**neg** boolean\
\
If true, this is a negation label, overwriting a previous label.\
\
**cts** date-timerequired\
\
Timestamp when this label was created.\
\
**exp** date-time\
\
Timestamp at which this label expires (no longer applies).\
\
**sig** byte\
\
Signature of dag-cbor encoded label.\
\
\]\
\
**viewer** object\
\
**muted** boolean\
\
**blocked** at-uri\
\
**indexedAt** date-time\
\
**blockedBy** boolean\
\
**blocking** at-uri\
\
**blockingByList** object\
\
**uri** at-urirequired\
\
**cid** cidrequired\
\
**name** stringrequired\
\
**Possible values:**`non-empty` and `<= 64 characters`\
\
**purpose** objectrequired\
\
oneOf\
\
- app.bsky.graph.defs.modlist\
- app.bsky.graph.defs.curatelist\
- app.bsky.graph.defs.referencelist\
\
string\
\
A list of actors to apply an aggregate moderation action (mute/block) on.\
\
string\
\
A list of actors used for curation purposes such as list feeds or interaction gating.\
\
string\
\
A list of actors used for only for reference purposes such as within a starter pack.\
\
**avatar** uri\
\
**listItemCount** integer\
\
**labels** object\[\]\
\
Array \[\
\
**ver** integer\
\
**src** didrequired\
\
DID of the actor who created this label.\
\
**uri** urirequired\
\
AT URI of the record, repository (account), or other resource that this label applies to.\
\
**cid** cid\
\
Optionally, CID specifying the specific version of 'uri' resource this label applies to.\
\
**val** stringrequired\
\
The short string name of the value or type of this label.\
\
**Possible values:**`<= 128 characters`\
\
**neg** boolean\
\
If true, this is a negation label, overwriting a previous label.\
\
**cts** date-timerequired\
\
Timestamp when this label was created.\
\
**exp** date-time\
\
Timestamp at which this label expires (no longer applies).\
\
**sig** byte\
\
Signature of dag-cbor encoded label.\
\
\]\
\
**viewer** object\
\
**muted** boolean\
\
**blocked** at-uri\
\
**indexedAt** date-time\
\
**following** at-uri\
\
**followedBy** at-uri\
\
**knownFollowers** object\
\
The subject's followers whom you also follow\
\
**count** integerrequired\
\
**followers** object\[\]required\
\
**Possible values:**`<= 5`\
\
Array \[\
\
**did** didrequired\
\
**handle** handlerequired\
\
**displayName** string\
\
**Possible values:**`<= 640 characters`\
\
**pronouns** string\
\
**avatar** uri\
\
**associated** object\
\
**lists** integer\
\
**feedgens** integer\
\
**starterPacks** integer\
\
**labeler** boolean\
\
**chat** object\
\
**allowIncoming** stringrequired\
\
**Possible values:** \[`all`, `none`, `following`\]\
\
**activitySubscription** object\
\
**allowSubscriptions** stringrequired\
\
**Possible values:** \[`followers`, `mutuals`, `none`\]\
\
**germ** object\
\
**messageMeUrl** urirequired\
\
**showButtonTo** stringrequired\
\
**Possible values:** \[`usersIFollow`, `everyone`\]\
\
**viewer**\
\
**labels** object\[\]\
\
Array \[\
\
**ver** integer\
\
**src** didrequired\
\
DID of the actor who created this label.\
\
**uri** urirequired\
\
AT URI of the record, repository (account), or other resource that this label applies to.\
\
**cid** cid\
\
Optionally, CID specifying the specific version of 'uri' resource this label applies to.\
\
**val** stringrequired\
\
The short string name of the value or type of this label.\
\
**Possible values:**`<= 128 characters`\
\
**neg** boolean\
\
If true, this is a negation label, overwriting a previous label.\
\
**cts** date-timerequired\
\
Timestamp when this label was created.\
\
**exp** date-time\
\
Timestamp at which this label expires (no longer applies).\
\
**sig** byte\
\
Signature of dag-cbor encoded label.\
\
\]\
\
**createdAt** date-time\
\
**verification** object\
\
Represents the verification information about the user this object is attached to.\
\
**verifications** object\[\]required\
\
Array \[\
\
**issuer** didrequired\
\
The user who issued this verification.\
\
**uri** at-urirequired\
\
The AT-URI of the verification record.\
\
**isValid** booleanrequired\
\
True if the verification passes validation, otherwise false.\
\
**createdAt** date-timerequired\
\
Timestamp when the verification was created.\
\
\]\
\
**verifiedStatus** stringrequired\
\
The user's status as a verified account.\
\
**Possible values:** \[`valid`, `invalid`, `none`\]\
\
**trustedVerifierStatus** stringrequired\
\
The user's status as a trusted verifier.\
\
**Possible values:** \[`valid`, `invalid`, `none`\]\
\
**status** object\
\
**uri** at-uri\
\
**cid** cid\
\
**status** stringrequired\
\
The status for the account.\
\
**Possible values:** \[`app.bsky.actor.status#live`\]\
\
**record** required\
\
**embed** object\
\
oneOf\
\
- app.bsky.embed.external.view\
\
**external** objectrequired\
\
**uri** urirequired\
\
**title** stringrequired\
\
**description** stringrequired\
\
**thumb** uri\
\
**expiresAt** date-time\
\
The date when this status will expire. The application might choose to no longer return the status after expiration.\
\
**isActive** boolean\
\
True if the status is not expired, false if it is expired. Only present if expiration was set.\
\
**isDisabled** boolean\
\
True if the user's go-live access has been disabled by a moderator, false otherwise.\
\
**debug**\
\
\]\
\
**activitySubscription** object\
\
**post** booleanrequired\
\
**reply** booleanrequired\
\
**labels** object\[\]\
\
Array \[\
\
**ver** integer\
\
**src** didrequired\
\
DID of the actor who created this label.\
\
**uri** urirequired\
\
AT URI of the record, repository (account), or other resource that this label applies to.\
\
**cid** cid\
\
Optionally, CID specifying the specific version of 'uri' resource this label applies to.\
\
**val** stringrequired\
\
The short string name of the value or type of this label.\
\
**Possible values:**`<= 128 characters`\
\
**neg** boolean\
\
If true, this is a negation label, overwriting a previous label.\
\
**cts** date-timerequired\
\
Timestamp when this label was created.\
\
**exp** date-time\
\
Timestamp at which this label expires (no longer applies).\
\
**sig** byte\
\
Signature of dag-cbor encoded label.\
\
\]\
\
**verification** object\
\
Represents the verification information about the user this object is attached to.\
\
**verifications** object\[\]required\
\
Array \[\
\
**issuer** didrequired\
\
The user who issued this verification.\
\
**uri** at-urirequired\
\
The AT-URI of the verification record.\
\
**isValid** booleanrequired\
\
True if the verification passes validation, otherwise false.\
\
**createdAt** date-timerequired\
\
Timestamp when the verification was created.\
\
\]\
\
**verifiedStatus** stringrequired\
\
The user's status as a verified account.\
\
**Possible values:** \[`valid`, `invalid`, `none`\]\
\
**trustedVerifierStatus** stringrequired\
\
The user's status as a trusted verifier.\
\
**Possible values:** \[`valid`, `invalid`, `none`\]\
\
**status** object\
\
**uri** at-uri\
\
**cid** cid\
\
**status** stringrequired\
\
The status for the account.\
\
**Possible values:** \[`app.bsky.actor.status#live`\]\
\
**record** required\
\
**embed** object\
\
oneOf\
\
- app.bsky.embed.external.view\
\
**external** objectrequired\
\
**uri** urirequired\
\
**title** stringrequired\
\
**description** stringrequired\
\
**thumb** uri\
\
**expiresAt** date-time\
\
The date when this status will expire. The application might choose to no longer return the status after expiration.\
\
**isActive** boolean\
\
True if the status is not expired, false if it is expired. Only present if expiration was set.\
\
**isDisabled** boolean\
\
True if the user's go-live access has been disabled by a moderator, false otherwise.\
\
**debug**\
\
\]

```json
{
  "cursor": "string",
  "matches": [\
    {\
      "did": "string",\
      "handle": "string",\
      "displayName": "string",\
      "pronouns": "string",\
      "description": "string",\
      "avatar": "string",\
      "associated": {\
        "lists": 0,\
        "feedgens": 0,\
        "starterPacks": 0,\
        "labeler": true,\
        "chat": {\
          "allowIncoming": "all"\
        },\
        "activitySubscription": {\
          "allowSubscriptions": "followers"\
        },\
        "germ": {\
          "messageMeUrl": "string",\
          "showButtonTo": "usersIFollow"\
        }\
      },\
      "indexedAt": "2024-07-29T15:51:28.071Z",\
      "createdAt": "2024-07-29T15:51:28.071Z",\
      "viewer": {\
        "muted": true,\
        "mutedByList": {\
          "uri": "string",\
          "cid": "string",\
          "name": "string",\
          "purpose": "string",\
          "avatar": "string",\
          "listItemCount": 0,\
          "labels": [\
            {\
              "ver": 0,\
              "src": "string",\
              "uri": "string",\
              "cid": "string",\
              "val": "string",\
              "neg": true,\
              "cts": "2024-07-29T15:51:28.071Z",\
              "exp": "2024-07-29T15:51:28.071Z",\
              "sig": "string"\
            }\
          ],\
          "viewer": {\
            "muted": true,\
            "blocked": "string"\
          },\
          "indexedAt": "2024-07-29T15:51:28.071Z"\
        },\
        "blockedBy": true,\
        "blocking": "string",\
        "blockingByList": {\
          "uri": "string",\
          "cid": "string",\
          "name": "string",\
          "purpose": "string",\
          "avatar": "string",\
          "listItemCount": 0,\
          "labels": [\
            {\
              "ver": 0,\
              "src": "string",\
              "uri": "string",\
              "cid": "string",\
              "val": "string",\
              "neg": true,\
              "cts": "2024-07-29T15:51:28.071Z",\
              "exp": "2024-07-29T15:51:28.071Z",\
              "sig": "string"\
            }\
          ],\
          "viewer": {\
            "muted": true,\
            "blocked": "string"\
          },\
          "indexedAt": "2024-07-29T15:51:28.071Z"\
        },\
        "following": "string",\
        "followedBy": "string",\
        "knownFollowers": {\
          "count": 0,\
          "followers": [\
            {\
              "did": "string",\
              "handle": "string",\
              "displayName": "string",\
              "pronouns": "string",\
              "avatar": "string",\
              "associated": {\
                "lists": 0,\
                "feedgens": 0,\
                "starterPacks": 0,\
                "labeler": true,\
                "chat": {\
                  "allowIncoming": "all"\
                },\
                "activitySubscription": {\
                  "allowSubscriptions": "followers"\
                },\
                "germ": {\
                  "messageMeUrl": "string",\
                  "showButtonTo": "usersIFollow"\
                }\
              },\
              "labels": [\
                {\
                  "ver": 0,\
                  "src": "string",\
                  "uri": "string",\
                  "cid": "string",\
                  "val": "string",\
                  "neg": true,\
                  "cts": "2024-07-29T15:51:28.071Z",\
                  "exp": "2024-07-29T15:51:28.071Z",\
                  "sig": "string"\
                }\
              ],\
              "createdAt": "2024-07-29T15:51:28.071Z",\
              "verification": {\
                "verifications": [\
                  {\
                    "issuer": "string",\
                    "uri": "string",\
                    "isValid": true,\
                    "createdAt": "2024-07-29T15:51:28.071Z"\
                  }\
                ],\
                "verifiedStatus": "valid",\
                "trustedVerifierStatus": "valid"\
              },\
              "status": {\
                "uri": "string",\
                "cid": "string",\
                "status": "app.bsky.actor.status#live",\
                "record": {},\
                "embed": {\
                  "external": {\
                    "uri": "string",\
                    "title": "string",\
                    "description": "string",\
                    "thumb": "string"\
                  }\
                },\
                "expiresAt": "2024-07-29T15:51:28.071Z",\
                "isActive": true,\
                "isDisabled": true\
              },\
              "debug": {}\
            }\
          ]\
        },\
        "activitySubscription": {\
          "post": true,\
          "reply": true\
        }\
      },\
      "labels": [\
        {\
          "ver": 0,\
          "src": "string",\
          "uri": "string",\
          "cid": "string",\
          "val": "string",\
          "neg": true,\
          "cts": "2024-07-29T15:51:28.071Z",\
          "exp": "2024-07-29T15:51:28.071Z",\
          "sig": "string"\
        }\
      ],\
      "verification": {\
        "verifications": [\
          {\
            "issuer": "string",\
            "uri": "string",\
            "isValid": true,\
            "createdAt": "2024-07-29T15:51:28.071Z"\
          }\
        ],\
        "verifiedStatus": "valid",\
        "trustedVerifierStatus": "valid"\
      },\
      "status": {\
        "uri": "string",\
        "cid": "string",\
        "status": "app.bsky.actor.status#live",\
        "record": {},\
        "embed": {\
          "external": {\
            "uri": "string",\
            "title": "string",\
            "description": "string",\
            "thumb": "string"\
          }\
        },\
        "expiresAt": "2024-07-29T15:51:28.071Z",\
        "isActive": true,\
        "isDisabled": true\
      },\
      "debug": {}\
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

**Possible values:** \[`InvalidRequest`, `ExpiredToken`, `InvalidToken`, `InvalidDid`, `InvalidLimit`, `InvalidCursor`, `InternalError`\]

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

Show optional parameters

limit — query

cursor — query

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**

---

## app.bsky.contact.get.sync.status

Source: https://docs.bsky.app/docs/api/app-bsky-contact-get-sync-status

# app.bsky.contact.getSyncStatus

```
GET /xrpc/app.bsky.contact.getSyncStatus
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Gets the user's current contact import status. Requires authentication.

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-contact-get-sync-status\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**syncStatus** object

**syncedAt** date-timerequired

Last date when contacts where imported.

**matchesCount** integerrequired

```json
{
  "syncStatus": {
    "syncedAt": "2024-07-29T15:51:28.071Z",
    "matchesCount": 0
  }
}
```

Bad Request

- application/json

- Schema
- Example (auto)

**Schema**

**error** stringrequired

**Possible values:** \[`InvalidRequest`, `ExpiredToken`, `InvalidToken`, `InvalidDid`, `InternalError`\]

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

---

## app.bsky.contact.remove.data

Source: https://docs.bsky.app/docs/api/app-bsky-contact-remove-data

# app.bsky.contact.removeData

```
POST /xrpc/app.bsky.contact.removeData
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Removes all stored hashes used for contact matching, existing matches, and sync status. Requires authentication.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-contact-remove-data\#request "Direct link to Request")

- application/json

### Body **required**

object

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-contact-remove-data\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

object

```json
{}
```

Bad Request

- application/json

- Schema
- Example (auto)

**Schema**

**error** stringrequired

**Possible values:** \[`InvalidRequest`, `ExpiredToken`, `InvalidToken`, `InvalidDid`, `InternalError`\]

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
{}
```

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**

---

## app.bsky.contact.import.contacts

Source: https://docs.bsky.app/docs/api/app-bsky-contact-import-contacts

# app.bsky.contact.importContacts

```
POST /xrpc/app.bsky.contact.importContacts
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Import contacts for securely matching with other users. This follows the protocol explained in [https://docs.bsky.app/blog/contact-import-rfc](https://docs.bsky.app/blog/contact-import-rfc). Requires authentication.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-contact-import-contacts\#request "Direct link to Request")

- application/json

### Body **required**

**token** stringrequired

JWT to authenticate the call. Use the JWT received as a response to the call to `app.bsky.contact.verifyPhone`.

**contacts** string\[\]required

**Possible values:**`<= 1000`

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-contact-import-contacts\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**matchesAndContactIndexes** object\[\]required

Array \[\
\
**match** objectrequired\
\
**did** didrequired\
\
**handle** handlerequired\
\
**displayName** string\
\
**Possible values:**`<= 640 characters`\
\
**pronouns** string\
\
**description** string\
\
**Possible values:**`<= 2560 characters`\
\
**avatar** uri\
\
**associated** object\
\
**lists** integer\
\
**feedgens** integer\
\
**starterPacks** integer\
\
**labeler** boolean\
\
**chat** object\
\
**allowIncoming** stringrequired\
\
**Possible values:** \[`all`, `none`, `following`\]\
\
**activitySubscription** object\
\
**allowSubscriptions** stringrequired\
\
**Possible values:** \[`followers`, `mutuals`, `none`\]\
\
**germ** object\
\
**messageMeUrl** urirequired\
\
**showButtonTo** stringrequired\
\
**Possible values:** \[`usersIFollow`, `everyone`\]\
\
**indexedAt** date-time\
\
**createdAt** date-time\
\
**viewer** object\
\
Metadata about the requesting account's relationship with the subject account. Only has meaningful content for authed requests.\
\
**muted** boolean\
\
**mutedByList** object\
\
**uri** at-urirequired\
\
**cid** cidrequired\
\
**name** stringrequired\
\
**Possible values:**`non-empty` and `<= 64 characters`\
\
**purpose** objectrequired\
\
oneOf\
\
- app.bsky.graph.defs.modlist\
- app.bsky.graph.defs.curatelist\
- app.bsky.graph.defs.referencelist\
\
string\
\
A list of actors to apply an aggregate moderation action (mute/block) on.\
\
string\
\
A list of actors used for curation purposes such as list feeds or interaction gating.\
\
string\
\
A list of actors used for only for reference purposes such as within a starter pack.\
\
**avatar** uri\
\
**listItemCount** integer\
\
**labels** object\[\]\
\
Array \[\
\
**ver** integer\
\
**src** didrequired\
\
DID of the actor who created this label.\
\
**uri** urirequired\
\
AT URI of the record, repository (account), or other resource that this label applies to.\
\
**cid** cid\
\
Optionally, CID specifying the specific version of 'uri' resource this label applies to.\
\
**val** stringrequired\
\
The short string name of the value or type of this label.\
\
**Possible values:**`<= 128 characters`\
\
**neg** boolean\
\
If true, this is a negation label, overwriting a previous label.\
\
**cts** date-timerequired\
\
Timestamp when this label was created.\
\
**exp** date-time\
\
Timestamp at which this label expires (no longer applies).\
\
**sig** byte\
\
Signature of dag-cbor encoded label.\
\
\]\
\
**viewer** object\
\
**muted** boolean\
\
**blocked** at-uri\
\
**indexedAt** date-time\
\
**blockedBy** boolean\
\
**blocking** at-uri\
\
**blockingByList** object\
\
**uri** at-urirequired\
\
**cid** cidrequired\
\
**name** stringrequired\
\
**Possible values:**`non-empty` and `<= 64 characters`\
\
**purpose** objectrequired\
\
oneOf\
\
- app.bsky.graph.defs.modlist\
- app.bsky.graph.defs.curatelist\
- app.bsky.graph.defs.referencelist\
\
string\
\
A list of actors to apply an aggregate moderation action (mute/block) on.\
\
string\
\
A list of actors used for curation purposes such as list feeds or interaction gating.\
\
string\
\
A list of actors used for only for reference purposes such as within a starter pack.\
\
**avatar** uri\
\
**listItemCount** integer\
\
**labels** object\[\]\
\
Array \[\
\
**ver** integer\
\
**src** didrequired\
\
DID of the actor who created this label.\
\
**uri** urirequired\
\
AT URI of the record, repository (account), or other resource that this label applies to.\
\
**cid** cid\
\
Optionally, CID specifying the specific version of 'uri' resource this label applies to.\
\
**val** stringrequired\
\
The short string name of the value or type of this label.\
\
**Possible values:**`<= 128 characters`\
\
**neg** boolean\
\
If true, this is a negation label, overwriting a previous label.\
\
**cts** date-timerequired\
\
Timestamp when this label was created.\
\
**exp** date-time\
\
Timestamp at which this label expires (no longer applies).\
\
**sig** byte\
\
Signature of dag-cbor encoded label.\
\
\]\
\
**viewer** object\
\
**muted** boolean\
\
**blocked** at-uri\
\
**indexedAt** date-time\
\
**following** at-uri\
\
**followedBy** at-uri\
\
**knownFollowers** object\
\
The subject's followers whom you also follow\
\
**count** integerrequired\
\
**followers** object\[\]required\
\
**Possible values:**`<= 5`\
\
Array \[\
\
**did** didrequired\
\
**handle** handlerequired\
\
**displayName** string\
\
**Possible values:**`<= 640 characters`\
\
**pronouns** string\
\
**avatar** uri\
\
**associated** object\
\
**lists** integer\
\
**feedgens** integer\
\
**starterPacks** integer\
\
**labeler** boolean\
\
**chat** object\
\
**allowIncoming** stringrequired\
\
**Possible values:** \[`all`, `none`, `following`\]\
\
**activitySubscription** object\
\
**allowSubscriptions** stringrequired\
\
**Possible values:** \[`followers`, `mutuals`, `none`\]\
\
**germ** object\
\
**messageMeUrl** urirequired\
\
**showButtonTo** stringrequired\
\
**Possible values:** \[`usersIFollow`, `everyone`\]\
\
**viewer**\
\
**labels** object\[\]\
\
Array \[\
\
**ver** integer\
\
**src** didrequired\
\
DID of the actor who created this label.\
\
**uri** urirequired\
\
AT URI of the record, repository (account), or other resource that this label applies to.\
\
**cid** cid\
\
Optionally, CID specifying the specific version of 'uri' resource this label applies to.\
\
**val** stringrequired\
\
The short string name of the value or type of this label.\
\
**Possible values:**`<= 128 characters`\
\
**neg** boolean\
\
If true, this is a negation label, overwriting a previous label.\
\
**cts** date-timerequired\
\
Timestamp when this label was created.\
\
**exp** date-time\
\
Timestamp at which this label expires (no longer applies).\
\
**sig** byte\
\
Signature of dag-cbor encoded label.\
\
\]\
\
**createdAt** date-time\
\
**verification** object\
\
Represents the verification information about the user this object is attached to.\
\
**verifications** object\[\]required\
\
Array \[\
\
**issuer** didrequired\
\
The user who issued this verification.\
\
**uri** at-urirequired\
\
The AT-URI of the verification record.\
\
**isValid** booleanrequired\
\
True if the verification passes validation, otherwise false.\
\
**createdAt** date-timerequired\
\
Timestamp when the verification was created.\
\
\]\
\
**verifiedStatus** stringrequired\
\
The user's status as a verified account.\
\
**Possible values:** \[`valid`, `invalid`, `none`\]\
\
**trustedVerifierStatus** stringrequired\
\
The user's status as a trusted verifier.\
\
**Possible values:** \[`valid`, `invalid`, `none`\]\
\
**status** object\
\
**uri** at-uri\
\
**cid** cid\
\
**status** stringrequired\
\
The status for the account.\
\
**Possible values:** \[`app.bsky.actor.status#live`\]\
\
**record** required\
\
**embed** object\
\
oneOf\
\
- app.bsky.embed.external.view\
\
**external** objectrequired\
\
**uri** urirequired\
\
**title** stringrequired\
\
**description** stringrequired\
\
**thumb** uri\
\
**expiresAt** date-time\
\
The date when this status will expire. The application might choose to no longer return the status after expiration.\
\
**isActive** boolean\
\
True if the status is not expired, false if it is expired. Only present if expiration was set.\
\
**isDisabled** boolean\
\
True if the user's go-live access has been disabled by a moderator, false otherwise.\
\
**debug**\
\
\]\
\
**activitySubscription** object\
\
**post** booleanrequired\
\
**reply** booleanrequired\
\
**labels** object\[\]\
\
Array \[\
\
**ver** integer\
\
**src** didrequired\
\
DID of the actor who created this label.\
\
**uri** urirequired\
\
AT URI of the record, repository (account), or other resource that this label applies to.\
\
**cid** cid\
\
Optionally, CID specifying the specific version of 'uri' resource this label applies to.\
\
**val** stringrequired\
\
The short string name of the value or type of this label.\
\
**Possible values:**`<= 128 characters`\
\
**neg** boolean\
\
If true, this is a negation label, overwriting a previous label.\
\
**cts** date-timerequired\
\
Timestamp when this label was created.\
\
**exp** date-time\
\
Timestamp at which this label expires (no longer applies).\
\
**sig** byte\
\
Signature of dag-cbor encoded label.\
\
\]\
\
**verification** object\
\
Represents the verification information about the user this object is attached to.\
\
**verifications** object\[\]required\
\
Array \[\
\
**issuer** didrequired\
\
The user who issued this verification.\
\
**uri** at-urirequired\
\
The AT-URI of the verification record.\
\
**isValid** booleanrequired\
\
True if the verification passes validation, otherwise false.\
\
**createdAt** date-timerequired\
\
Timestamp when the verification was created.\
\
\]\
\
**verifiedStatus** stringrequired\
\
The user's status as a verified account.\
\
**Possible values:** \[`valid`, `invalid`, `none`\]\
\
**trustedVerifierStatus** stringrequired\
\
The user's status as a trusted verifier.\
\
**Possible values:** \[`valid`, `invalid`, `none`\]\
\
**status** object\
\
**uri** at-uri\
\
**cid** cid\
\
**status** stringrequired\
\
The status for the account.\
\
**Possible values:** \[`app.bsky.actor.status#live`\]\
\
**record** required\
\
**embed** object\
\
oneOf\
\
- app.bsky.embed.external.view\
\
**external** objectrequired\
\
**uri** urirequired\
\
**title** stringrequired\
\
**description** stringrequired\
\
**thumb** uri\
\
**expiresAt** date-time\
\
The date when this status will expire. The application might choose to no longer return the status after expiration.\
\
**isActive** boolean\
\
True if the status is not expired, false if it is expired. Only present if expiration was set.\
\
**isDisabled** boolean\
\
True if the user's go-live access has been disabled by a moderator, false otherwise.\
\
**debug**\
\
**contactIndex** integerrequired\
\
**Possible values:**`<= 999`\
\
\]

```json
{
  "matchesAndContactIndexes": [\
    {\
      "match": {\
        "did": "string",\
        "handle": "string",\
        "displayName": "string",\
        "pronouns": "string",\
        "description": "string",\
        "avatar": "string",\
        "associated": {\
          "lists": 0,\
          "feedgens": 0,\
          "starterPacks": 0,\
          "labeler": true,\
          "chat": {\
            "allowIncoming": "all"\
          },\
          "activitySubscription": {\
            "allowSubscriptions": "followers"\
          },\
          "germ": {\
            "messageMeUrl": "string",\
            "showButtonTo": "usersIFollow"\
          }\
        },\
        "indexedAt": "2024-07-29T15:51:28.071Z",\
        "createdAt": "2024-07-29T15:51:28.071Z",\
        "viewer": {\
          "muted": true,\
          "mutedByList": {\
            "uri": "string",\
            "cid": "string",\
            "name": "string",\
            "purpose": "string",\
            "avatar": "string",\
            "listItemCount": 0,\
            "labels": [\
              {\
                "ver": 0,\
                "src": "string",\
                "uri": "string",\
                "cid": "string",\
                "val": "string",\
                "neg": true,\
                "cts": "2024-07-29T15:51:28.071Z",\
                "exp": "2024-07-29T15:51:28.071Z",\
                "sig": "string"\
              }\
            ],\
            "viewer": {\
              "muted": true,\
              "blocked": "string"\
            },\
            "indexedAt": "2024-07-29T15:51:28.071Z"\
          },\
          "blockedBy": true,\
          "blocking": "string",\
          "blockingByList": {\
            "uri": "string",\
            "cid": "string",\
            "name": "string",\
            "purpose": "string",\
            "avatar": "string",\
            "listItemCount": 0,\
            "labels": [\
              {\
                "ver": 0,\
                "src": "string",\
                "uri": "string",\
                "cid": "string",\
                "val": "string",\
                "neg": true,\
                "cts": "2024-07-29T15:51:28.071Z",\
                "exp": "2024-07-29T15:51:28.071Z",\
                "sig": "string"\
              }\
            ],\
            "viewer": {\
              "muted": true,\
              "blocked": "string"\
            },\
            "indexedAt": "2024-07-29T15:51:28.071Z"\
          },\
          "following": "string",\
          "followedBy": "string",\
          "knownFollowers": {\
            "count": 0,\
            "followers": [\
              {\
                "did": "string",\
                "handle": "string",\
                "displayName": "string",\
                "pronouns": "string",\
                "avatar": "string",\
                "associated": {\
                  "lists": 0,\
                  "feedgens": 0,\
                  "starterPacks": 0,\
                  "labeler": true,\
                  "chat": {\
                    "allowIncoming": "all"\
                  },\
                  "activitySubscription": {\
                    "allowSubscriptions": "followers"\
                  },\
                  "germ": {\
                    "messageMeUrl": "string",\
                    "showButtonTo": "usersIFollow"\
                  }\
                },\
                "labels": [\
                  {\
                    "ver": 0,\
                    "src": "string",\
                    "uri": "string",\
                    "cid": "string",\
                    "val": "string",\
                    "neg": true,\
                    "cts": "2024-07-29T15:51:28.071Z",\
                    "exp": "2024-07-29T15:51:28.071Z",\
                    "sig": "string"\
                  }\
                ],\
                "createdAt": "2024-07-29T15:51:28.071Z",\
                "verification": {\
                  "verifications": [\
                    {\
                      "issuer": "string",\
                      "uri": "string",\
                      "isValid": true,\
                      "createdAt": "2024-07-29T15:51:28.071Z"\
                    }\
                  ],\
                  "verifiedStatus": "valid",\
                  "trustedVerifierStatus": "valid"\
                },\
                "status": {\
                  "uri": "string",\
                  "cid": "string",\
                  "status": "app.bsky.actor.status#live",\
                  "record": {},\
                  "embed": {\
                    "external": {\
                      "uri": "string",\
                      "title": "string",\
                      "description": "string",\
                      "thumb": "string"\
                    }\
                  },\
                  "expiresAt": "2024-07-29T15:51:28.071Z",\
                  "isActive": true,\
                  "isDisabled": true\
                },\
                "debug": {}\
              }\
            ]\
          },\
          "activitySubscription": {\
            "post": true,\
            "reply": true\
          }\
        },\
        "labels": [\
          {\
            "ver": 0,\
            "src": "string",\
            "uri": "string",\
            "cid": "string",\
            "val": "string",\
            "neg": true,\
            "cts": "2024-07-29T15:51:28.071Z",\
            "exp": "2024-07-29T15:51:28.071Z",\
            "sig": "string"\
          }\
        ],\
        "verification": {\
          "verifications": [\
            {\
              "issuer": "string",\
              "uri": "string",\
              "isValid": true,\
              "createdAt": "2024-07-29T15:51:28.071Z"\
            }\
          ],\
          "verifiedStatus": "valid",\
          "trustedVerifierStatus": "valid"\
        },\
        "status": {\
          "uri": "string",\
          "cid": "string",\
          "status": "app.bsky.actor.status#live",\
          "record": {},\
          "embed": {\
            "external": {\
              "uri": "string",\
              "title": "string",\
              "description": "string",\
              "thumb": "string"\
            }\
          },\
          "expiresAt": "2024-07-29T15:51:28.071Z",\
          "isActive": true,\
          "isDisabled": true\
        },\
        "debug": {}\
      },\
      "contactIndex": 0\
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

**Possible values:** \[`InvalidRequest`, `ExpiredToken`, `InvalidToken`, `InvalidDid`, `InvalidContacts`, `TooManyContacts`, `InvalidToken`, `InternalError`\]

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

  "token": "string",

  "contacts": [\
\
    "string"\
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

---

## app.bsky.contact.start.phone.verification

Source: https://docs.bsky.app/docs/api/app-bsky-contact-start-phone-verification

# app.bsky.contact.startPhoneVerification

```
POST /xrpc/app.bsky.contact.startPhoneVerification
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Starts a phone verification flow. The phone passed will receive a code via SMS that should be passed to `app.bsky.contact.verifyPhone`. Requires authentication.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-contact-start-phone-verification\#request "Direct link to Request")

- application/json

### Body **required**

**phone** stringrequired

The phone number to receive the code via SMS.

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-contact-start-phone-verification\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

object

```json
{}
```

Bad Request

- application/json

- Schema
- Example (auto)

**Schema**

**error** stringrequired

**Possible values:** \[`InvalidRequest`, `ExpiredToken`, `InvalidToken`, `RateLimitExceeded`, `InvalidDid`, `InvalidPhone`, `InternalError`\]

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

  "phone": "string"

}
```

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**

---

## app.bsky.contact.send.notification

Source: https://docs.bsky.app/docs/api/app-bsky-contact-send-notification

# app.bsky.contact.sendNotification

```
POST /xrpc/app.bsky.contact.sendNotification
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

System endpoint to send notifications related to contact imports. Requires role authentication.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-contact-send-notification\#request "Direct link to Request")

- application/json

### Body **required**

**from** didrequired

The DID of who this notification comes from.

**to** didrequired

The DID of who this notification should go to.

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-contact-send-notification\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

object

```json
{}
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

  "from": "string",

  "to": "string"

}
```

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**

---

## app.bsky.contact.verify.phone

Source: https://docs.bsky.app/docs/api/app-bsky-contact-verify-phone

# app.bsky.contact.verifyPhone

```
POST /xrpc/app.bsky.contact.verifyPhone
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Verifies control over a phone number with a code received via SMS and starts a contact import session. Requires authentication.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-contact-verify-phone\#request "Direct link to Request")

- application/json

### Body **required**

**phone** stringrequired

The phone number to verify. Should be the same as the one passed to `app.bsky.contact.startPhoneVerification`.

**code** stringrequired

The code received via SMS as a result of the call to `app.bsky.contact.startPhoneVerification`.

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-contact-verify-phone\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**token** stringrequired

JWT to be used in a call to `app.bsky.contact.importContacts`. It is only valid for a single call.

```json
{
  "token": "string"
}
```

Bad Request

- application/json

- Schema
- Example (auto)

**Schema**

**error** stringrequired

**Possible values:** \[`InvalidRequest`, `ExpiredToken`, `InvalidToken`, `RateLimitExceeded`, `InvalidDid`, `InvalidPhone`, `InvalidCode`, `InternalError`\]

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

  "phone": "string",

  "code": "string"

}
```

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**

---

