# Bluesky API Reference: notification

## app.bsky.notification.get.preferences

Source: https://docs.bsky.app/docs/api/app-bsky-notification-get-preferences

# app.bsky.notification.getPreferences

```
GET /xrpc/app.bsky.notification.getPreferences
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Get notification-related preferences for an account. Requires auth.

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-notification-get-preferences\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**preferences** objectrequired

**chat** objectrequired

**include** stringrequired

**Possible values:** \[`all`, `accepted`\]

**push** booleanrequired

**follow** objectrequired

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**like** objectrequired

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**likeViaRepost** objectrequired

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**mention** objectrequired

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**quote** objectrequired

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**reply** objectrequired

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**repost** objectrequired

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**repostViaRepost** objectrequired

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**starterpackJoined** objectrequired

**list** booleanrequired

**push** booleanrequired

**subscribedPost** objectrequired

**list** booleanrequired

**push** booleanrequired

**unverified** objectrequired

**list** booleanrequired

**push** booleanrequired

**verified** objectrequired

**list** booleanrequired

**push** booleanrequired

```json
{
  "preferences": {
    "chat": {
      "include": "all",
      "push": true
    },
    "follow": {
      "include": "all",
      "list": true,
      "push": true
    },
    "like": {
      "include": "all",
      "list": true,
      "push": true
    },
    "likeViaRepost": {
      "include": "all",
      "list": true,
      "push": true
    },
    "mention": {
      "include": "all",
      "list": true,
      "push": true
    },
    "quote": {
      "include": "all",
      "list": true,
      "push": true
    },
    "reply": {
      "include": "all",
      "list": true,
      "push": true
    },
    "repost": {
      "include": "all",
      "list": true,
      "push": true
    },
    "repostViaRepost": {
      "include": "all",
      "list": true,
      "push": true
    },
    "starterpackJoined": {
      "list": true,
      "push": true
    },
    "subscribedPost": {
      "list": true,
      "push": true
    },
    "unverified": {
      "list": true,
      "push": true
    },
    "verified": {
      "list": true,
      "push": true
    }
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

---

## app.bsky.notification.get.unread.count

Source: https://docs.bsky.app/docs/api/app-bsky-notification-get-unread-count

# app.bsky.notification.getUnreadCount

```
GET /xrpc/app.bsky.notification.getUnreadCount
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Count the number of unread notifications for the requesting account. Requires auth.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-notification-get-unread-count\#request "Direct link to Request")

### Query Parameters

**priority** boolean

**seenAt** date-time

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-notification-get-unread-count\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**count** integerrequired

```json
{
  "count": 0
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

Show optional parameters

priority — query

\-\-\-truefalse

seenAt — query

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**

---

## app.bsky.notification.list.activity.subscriptions

Source: https://docs.bsky.app/docs/api/app-bsky-notification-list-activity-subscriptions

# app.bsky.notification.listActivitySubscriptions

```
GET /xrpc/app.bsky.notification.listActivitySubscriptions
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Enumerate all accounts to which the requesting account is subscribed to receive notifications for. Requires auth.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-notification-list-activity-subscriptions\#request "Direct link to Request")

### Query Parameters

**limit** integer

**Possible values:**`>= 1` and `<= 100`

**Default value:** `50`

**cursor** string

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-notification-list-activity-subscriptions\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**cursor** string

**subscriptions** object\[\]required

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
  "subscriptions": [\
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

## app.bsky.notification.list.notifications

Source: https://docs.bsky.app/docs/api/app-bsky-notification-list-notifications

# app.bsky.notification.listNotifications

```
GET /xrpc/app.bsky.notification.listNotifications
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Enumerate notifications for the requesting account. Requires auth.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-notification-list-notifications\#request "Direct link to Request")

### Query Parameters

**reasons** string\[\]

Notification reasons to include in response.

**limit** integer

**Possible values:**`>= 1` and `<= 100`

**Default value:** `50`

**priority** boolean

**cursor** string

**seenAt** date-time

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-notification-list-notifications\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**cursor** string

**notifications** object\[\]required

Array \[\
\
**uri** at-urirequired\
\
**cid** cidrequired\
\
**author** objectrequired\
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
**reason** stringrequired\
\
The reason why this notification was delivered - e.g. your post was liked, or you received a new follower.\
\
**Possible values:** \[`like`, `repost`, `follow`, `mention`, `reply`, `quote`, `starterpack-joined`, `verified`, `unverified`, `like-via-repost`, `repost-via-repost`, `subscribed-post`, `contact-match`\]\
\
**reasonSubject** at-uri\
\
**record** required\
\
**isRead** booleanrequired\
\
**indexedAt** date-timerequired\
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
\]

**priority** boolean

**seenAt** date-time

```json
{
  "cursor": "string",
  "notifications": [\
    {\
      "uri": "string",\
      "cid": "string",\
      "author": {\
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
      "reason": "like",\
      "reasonSubject": "string",\
      "record": {},\
      "isRead": true,\
      "indexedAt": "2024-07-29T15:51:28.071Z",\
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
      ]\
    }\
  ],
  "priority": true,
  "seenAt": "2024-07-29T15:51:28.071Z"
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

Show optional parameters

reasons — query

Add item

limit — query

priority — query

\-\-\-truefalse

cursor — query

seenAt — query

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**

---

## app.bsky.notification.put.activity.subscription

Source: https://docs.bsky.app/docs/api/app-bsky-notification-put-activity-subscription

# app.bsky.notification.putActivitySubscription

```
POST /xrpc/app.bsky.notification.putActivitySubscription
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Puts an activity subscription entry. The key should be omitted for creation and provided for updates. Requires auth.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-notification-put-activity-subscription\#request "Direct link to Request")

- application/json

### Body **required**

**subject** didrequired

**activitySubscription** objectrequired

**post** booleanrequired

**reply** booleanrequired

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-notification-put-activity-subscription\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**subject** didrequired

**activitySubscription** object

**post** booleanrequired

**reply** booleanrequired

```json
{
  "subject": "string",
  "activitySubscription": {
    "post": true,
    "reply": true
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

Body required

```json
{

  "subject": "string",

  "activitySubscription": {

    "post": true,

    "reply": true

  }

}
```

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**

---

## app.bsky.notification.put.preferences

Source: https://docs.bsky.app/docs/api/app-bsky-notification-put-preferences

# app.bsky.notification.putPreferences

```
POST /xrpc/app.bsky.notification.putPreferences
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Set notification-related preferences for an account. Requires auth.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-notification-put-preferences\#request "Direct link to Request")

- application/json

### Body **required**

**priority** booleanrequired

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-notification-put-preferences\#responses "Direct link to Responses")

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

  "priority": true

}
```

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**

---

## app.bsky.notification.put.preferences.v.2

Source: https://docs.bsky.app/docs/api/app-bsky-notification-put-preferences-v-2

# app.bsky.notification.putPreferencesV2

```
POST /xrpc/app.bsky.notification.putPreferencesV2
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Set notification-related preferences for an account. Requires auth.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-notification-put-preferences-v-2\#request "Direct link to Request")

- application/json

### Body **required**

**chat** object

**include** stringrequired

**Possible values:** \[`all`, `accepted`\]

**push** booleanrequired

**follow** object

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**like** object

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**likeViaRepost** object

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**mention** object

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**quote** object

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**reply** object

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**repost** object

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**repostViaRepost** object

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**starterpackJoined** object

**list** booleanrequired

**push** booleanrequired

**subscribedPost** object

**list** booleanrequired

**push** booleanrequired

**unverified** object

**list** booleanrequired

**push** booleanrequired

**verified** object

**list** booleanrequired

**push** booleanrequired

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-notification-put-preferences-v-2\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**preferences** objectrequired

**chat** objectrequired

**include** stringrequired

**Possible values:** \[`all`, `accepted`\]

**push** booleanrequired

**follow** objectrequired

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**like** objectrequired

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**likeViaRepost** objectrequired

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**mention** objectrequired

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**quote** objectrequired

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**reply** objectrequired

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**repost** objectrequired

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**repostViaRepost** objectrequired

**include** stringrequired

**Possible values:** \[`all`, `follows`\]

**list** booleanrequired

**push** booleanrequired

**starterpackJoined** objectrequired

**list** booleanrequired

**push** booleanrequired

**subscribedPost** objectrequired

**list** booleanrequired

**push** booleanrequired

**unverified** objectrequired

**list** booleanrequired

**push** booleanrequired

**verified** objectrequired

**list** booleanrequired

**push** booleanrequired

```json
{
  "preferences": {
    "chat": {
      "include": "all",
      "push": true
    },
    "follow": {
      "include": "all",
      "list": true,
      "push": true
    },
    "like": {
      "include": "all",
      "list": true,
      "push": true
    },
    "likeViaRepost": {
      "include": "all",
      "list": true,
      "push": true
    },
    "mention": {
      "include": "all",
      "list": true,
      "push": true
    },
    "quote": {
      "include": "all",
      "list": true,
      "push": true
    },
    "reply": {
      "include": "all",
      "list": true,
      "push": true
    },
    "repost": {
      "include": "all",
      "list": true,
      "push": true
    },
    "repostViaRepost": {
      "include": "all",
      "list": true,
      "push": true
    },
    "starterpackJoined": {
      "list": true,
      "push": true
    },
    "subscribedPost": {
      "list": true,
      "push": true
    },
    "unverified": {
      "list": true,
      "push": true
    },
    "verified": {
      "list": true,
      "push": true
    }
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

Body required

```json
{

  "chat": {

    "include": "all",

    "push": true

  },

  "follow": {

    "include": "all",

    "list": true,

    "push": true

  },

  "like": {

    "include": "all",

    "list": true,

    "push": true

  },

  "likeViaRepost": {

    "include": "all",

    "list": true,

    "push": true

  },

  "mention": {

    "include": "all",

    "list": true,

    "push": true

  },

  "quote": {

    "include": "all",

    "list": true,

    "push": true

  },

  "reply": {

    "include": "all",

    "list": true,

    "push": true

  },

  "repost": {

    "include": "all",

    "list": true,

    "push": true

  },

  "repostViaRepost": {

    "include": "all",

    "list": true,

    "push": true

  },

  "starterpackJoined": {

    "list": true,

    "push": true

  },

  "subscribedPost": {

    "list": true,

    "push": true

  },

  "unverified": {

    "list": true,

    "push": true

  },

  "verified": {

    "list": true,

    "push": true

  }

}
```

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**

---

## app.bsky.notification.register.push

Source: https://docs.bsky.app/docs/api/app-bsky-notification-register-push

# app.bsky.notification.registerPush

```
POST /xrpc/app.bsky.notification.registerPush
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Register to receive push notifications, via a specified service, for the requesting account. Requires auth.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-notification-register-push\#request "Direct link to Request")

- application/json

### Body **required**

**serviceDid** didrequired

**token** stringrequired

**platform** stringrequired

**Possible values:** \[`ios`, `android`, `web`\]

**appId** stringrequired

**ageRestricted** boolean

Set to true when the actor is age restricted

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-notification-register-push\#responses "Direct link to Responses")

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

  "serviceDid": "string",

  "token": "string",

  "platform": "ios",

  "appId": "string",

  "ageRestricted": true

}
```

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**

---

## app.bsky.notification.unregister.push

Source: https://docs.bsky.app/docs/api/app-bsky-notification-unregister-push

# app.bsky.notification.unregisterPush

```
POST /xrpc/app.bsky.notification.unregisterPush
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

The inverse of registerPush - inform a specified service that push notifications should no longer be sent to the given token for the requesting account. Requires auth.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-notification-unregister-push\#request "Direct link to Request")

- application/json

### Body **required**

**serviceDid** didrequired

**token** stringrequired

**platform** stringrequired

**Possible values:** \[`ios`, `android`, `web`\]

**appId** stringrequired

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-notification-unregister-push\#responses "Direct link to Responses")

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

  "serviceDid": "string",

  "token": "string",

  "platform": "ios",

  "appId": "string"

}
```

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**

---

## app.bsky.notification.update.seen

Source: https://docs.bsky.app/docs/api/app-bsky-notification-update-seen

# app.bsky.notification.updateSeen

```
POST /xrpc/app.bsky.notification.updateSeen
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Notify server that the requesting account has seen notifications. Requires auth.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-notification-update-seen\#request "Direct link to Request")

- application/json

### Body **required**

**seenAt** date-timerequired

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-notification-update-seen\#responses "Direct link to Responses")

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

  "seenAt": "2024-07-29T15:51:28.071Z"

}
```

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**

---

