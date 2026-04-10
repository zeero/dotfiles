# app.bsky.feed.get.likes

Source: https://docs.bsky.app/docs/api/app-bsky-feed-get-likes

# app.bsky.feed.getLikes

```
GET /xrpc/app.bsky.feed.getLikes
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Get like records which reference a subject (by AT-URI and CID).

## Request [​](https://docs.bsky.app/docs/api/app-bsky-feed-get-likes\#request "Direct link to Request")

### Query Parameters

**uri** at-urirequired

AT-URI of the subject (eg, a post record).

**cid** cid

CID of the subject record (aka, specific version of record), to filter likes.

**limit** integer

**Possible values:**`>= 1` and `<= 100`

**Default value:** `50`

**cursor** string

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-feed-get-likes\#responses "Direct link to Responses")

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

**likes** object\[\]required

Array \[\
\
**indexedAt** date-timerequired\
\
**createdAt** date-timerequired\
\
**actor** objectrequired\
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
  "uri": "string",
  "cid": "string",
  "cursor": "string",
  "likes": [\
    {\
      "indexedAt": "2024-07-29T15:51:28.071Z",\
      "createdAt": "2024-07-29T15:51:28.071Z",\
      "actor": {\
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