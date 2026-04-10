# Bluesky API Reference: draft

## app.bsky.draft.create.draft

Source: https://docs.bsky.app/docs/api/app-bsky-draft-create-draft

# app.bsky.draft.createDraft

```
POST /xrpc/app.bsky.draft.createDraft
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Inserts a draft using private storage (stash). An upper limit of drafts might be enforced. Requires authentication.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-draft-create-draft\#request "Direct link to Request")

- application/json

### Body **required**

**draft** objectrequired

A draft containing an array of draft posts.

**deviceId** string

UUIDv4 identifier of the device that created this draft.

**Possible values:**`<= 100 characters`

**deviceName** string

The device and/or platform on which the draft was created.

**Possible values:**`<= 100 characters`

**posts** object\[\]required

**Possible values:**`<= 100`

Array \[\
\
**text** stringrequired\
\
The primary post content. It has a higher limit than post contents to allow storing a larger text that can later be refined into smaller posts.\
\
**Possible values:**`<= 10000 characters`\
\
**labels** object\
\
oneOf\
\
- com.atproto.label.defs.selfLabels\
\
**values** object\[\]required\
\
**Possible values:**`<= 10`\
\
Array \[\
\
**val** stringrequired\
\
The short string name of the value or type of this label.\
\
**Possible values:**`<= 128 characters`\
\
\]\
\
**embedImages** object\[\]\
\
**Possible values:**`<= 4`\
\
Array \[\
\
**localRef** objectrequired\
\
**path** stringrequired\
\
Local, on-device ref to file to be embedded. Embeds are currently device-bound for drafts.\
\
**Possible values:**`non-empty` and `<= 1024 characters`\
\
**alt** string\
\
\]\
\
**embedVideos** object\[\]\
\
**Possible values:**`<= 1`\
\
Array \[\
\
**localRef** objectrequired\
\
**path** stringrequired\
\
Local, on-device ref to file to be embedded. Embeds are currently device-bound for drafts.\
\
**Possible values:**`non-empty` and `<= 1024 characters`\
\
**alt** string\
\
**captions** object\[\]\
\
**Possible values:**`<= 20`\
\
Array \[\
\
**lang** languagerequired\
\
**content** stringrequired\
\
**Possible values:**`<= 10000 characters`\
\
\]\
\
\]\
\
**embedExternals** object\[\]\
\
**Possible values:**`<= 1`\
\
Array \[\
\
**uri** urirequired\
\
\]\
\
**embedRecords** object\[\]\
\
**Possible values:**`<= 1`\
\
Array \[\
\
**record** objectrequired\
\
**uri** at-urirequired\
\
**cid** cidrequired\
\
\]\
\
\]

**langs** language\[\]

**Possible values:**`<= 3`

**postgateEmbeddingRules** object\[\]

**Possible values:**`<= 5`

Array \[\
\
oneOf\
\
- app.bsky.feed.postgate.disableRule\
\
object\
\
\]

**threadgateAllow** object\[\]

**Possible values:**`<= 5`

Array \[\
\
oneOf\
\
- app.bsky.feed.threadgate.mentionRule\
- app.bsky.feed.threadgate.followerRule\
- app.bsky.feed.threadgate.followingRule\
- app.bsky.feed.threadgate.listRule\
\
object\
\
object\
\
object\
\
**list** at-urirequired\
\
\]

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-draft-create-draft\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**id** stringrequired

The ID of the created draft.

```json
{
  "id": "string"
}
```

Bad Request

- application/json

- Schema
- Example (auto)

**Schema**

**error** stringrequired

**Possible values:** \[`InvalidRequest`, `ExpiredToken`, `InvalidToken`, `DraftLimitReached`\]

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

  "draft": {

    "deviceId": "string",

    "deviceName": "string",

    "posts": [\
\
      {\
\
        "text": "string",\
\
        "labels": {\
\
          "values": [\
\
            {\
\
              "val": "string"\
\
            }\
\
          ]\
\
        },\
\
        "embedImages": [\
\
          {\
\
            "localRef": {\
\
              "path": "string"\
\
            },\
\
            "alt": "string"\
\
          }\
\
        ],\
\
        "embedVideos": [\
\
          {\
\
            "localRef": {\
\
              "path": "string"\
\
            },\
\
            "alt": "string",\
\
            "captions": [\
\
              {\
\
                "lang": "string",\
\
                "content": "string"\
\
              }\
\
            ]\
\
          }\
\
        ],\
\
        "embedExternals": [\
\
          {\
\
            "uri": "string"\
\
          }\
\
        ],\
\
        "embedRecords": [\
\
          {\
\
            "record": {\
\
              "uri": "string",\
\
              "cid": "string"\
\
            }\
\
          }\
\
        ]\
\
      }\
\
    ],

    "langs": [\
\
      "string"\
\
    ],

    "postgateEmbeddingRules": [\
\
      {}\
\
    ],

    "threadgateAllow": [\
\
      {},\
\
      {},\
\
      {},\
\
      {\
\
        "list": "string"\
\
      }\
\
    ]

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

## app.bsky.draft.get.drafts

Source: https://docs.bsky.app/docs/api/app-bsky-draft-get-drafts

# app.bsky.draft.getDrafts

```
GET /xrpc/app.bsky.draft.getDrafts
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Gets views of user drafts. Requires authentication.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-draft-get-drafts\#request "Direct link to Request")

### Query Parameters

**limit** integer

**Possible values:**`>= 1` and `<= 100`

**Default value:** `50`

**cursor** string

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-draft-get-drafts\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**cursor** string

**drafts** object\[\]required

Array \[\
\
**id** tidrequired\
\
A TID to be used as a draft identifier.\
\
**draft** objectrequired\
\
A draft containing an array of draft posts.\
\
**deviceId** string\
\
UUIDv4 identifier of the device that created this draft.\
\
**Possible values:**`<= 100 characters`\
\
**deviceName** string\
\
The device and/or platform on which the draft was created.\
\
**Possible values:**`<= 100 characters`\
\
**posts** object\[\]required\
\
**Possible values:**`<= 100`\
\
Array \[\
\
**text** stringrequired\
\
The primary post content. It has a higher limit than post contents to allow storing a larger text that can later be refined into smaller posts.\
\
**Possible values:**`<= 10000 characters`\
\
**labels** object\
\
oneOf\
\
- com.atproto.label.defs.selfLabels\
\
**values** object\[\]required\
\
**Possible values:**`<= 10`\
\
Array \[\
\
**val** stringrequired\
\
The short string name of the value or type of this label.\
\
**Possible values:**`<= 128 characters`\
\
\]\
\
**embedImages** object\[\]\
\
**Possible values:**`<= 4`\
\
Array \[\
\
**localRef** objectrequired\
\
**path** stringrequired\
\
Local, on-device ref to file to be embedded. Embeds are currently device-bound for drafts.\
\
**Possible values:**`non-empty` and `<= 1024 characters`\
\
**alt** string\
\
\]\
\
**embedVideos** object\[\]\
\
**Possible values:**`<= 1`\
\
Array \[\
\
**localRef** objectrequired\
\
**path** stringrequired\
\
Local, on-device ref to file to be embedded. Embeds are currently device-bound for drafts.\
\
**Possible values:**`non-empty` and `<= 1024 characters`\
\
**alt** string\
\
**captions** object\[\]\
\
**Possible values:**`<= 20`\
\
Array \[\
\
**lang** languagerequired\
\
**content** stringrequired\
\
**Possible values:**`<= 10000 characters`\
\
\]\
\
\]\
\
**embedExternals** object\[\]\
\
**Possible values:**`<= 1`\
\
Array \[\
\
**uri** urirequired\
\
\]\
\
**embedRecords** object\[\]\
\
**Possible values:**`<= 1`\
\
Array \[\
\
**record** objectrequired\
\
**uri** at-urirequired\
\
**cid** cidrequired\
\
\]\
\
\]\
\
**langs** language\[\]\
\
**Possible values:**`<= 3`\
\
**postgateEmbeddingRules** object\[\]\
\
**Possible values:**`<= 5`\
\
Array \[\
\
oneOf\
\
- app.bsky.feed.postgate.disableRule\
\
object\
\
\]\
\
**threadgateAllow** object\[\]\
\
**Possible values:**`<= 5`\
\
Array \[\
\
oneOf\
\
- app.bsky.feed.threadgate.mentionRule\
- app.bsky.feed.threadgate.followerRule\
- app.bsky.feed.threadgate.followingRule\
- app.bsky.feed.threadgate.listRule\
\
object\
\
object\
\
object\
\
**list** at-urirequired\
\
\]\
\
**createdAt** date-timerequired\
\
The time the draft was created.\
\
**updatedAt** date-timerequired\
\
The time the draft was last updated.\
\
\]

```json
{
  "cursor": "string",
  "drafts": [\
    {\
      "id": "string",\
      "draft": {\
        "deviceId": "string",\
        "deviceName": "string",\
        "posts": [\
          {\
            "text": "string",\
            "labels": {\
              "values": [\
                {\
                  "val": "string"\
                }\
              ]\
            },\
            "embedImages": [\
              {\
                "localRef": {\
                  "path": "string"\
                },\
                "alt": "string"\
              }\
            ],\
            "embedVideos": [\
              {\
                "localRef": {\
                  "path": "string"\
                },\
                "alt": "string",\
                "captions": [\
                  {\
                    "lang": "string",\
                    "content": "string"\
                  }\
                ]\
              }\
            ],\
            "embedExternals": [\
              {\
                "uri": "string"\
              }\
            ],\
            "embedRecords": [\
              {\
                "record": {\
                  "uri": "string",\
                  "cid": "string"\
                }\
              }\
            ]\
          }\
        ],\
        "langs": [\
          "string"\
        ],\
        "postgateEmbeddingRules": [\
          {}\
        ],\
        "threadgateAllow": [\
          {},\
          {},\
          {},\
          {\
            "list": "string"\
          }\
        ]\
      },\
      "createdAt": "2024-07-29T15:51:28.071Z",\
      "updatedAt": "2024-07-29T15:51:28.071Z"\
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

## app.bsky.draft.update.draft

Source: https://docs.bsky.app/docs/api/app-bsky-draft-update-draft

# app.bsky.draft.updateDraft

```
POST /xrpc/app.bsky.draft.updateDraft
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Updates a draft using private storage (stash). If the draft ID points to a non-existing ID, the update will be silently ignored. This is done because updates don't enforce draft limit, so it accepts all writes, but will ignore invalid ones. Requires authentication.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-draft-update-draft\#request "Direct link to Request")

- application/json

### Body **required**

**draft** objectrequired

A draft with an identifier, used to store drafts in private storage (stash).

**id** tidrequired

A TID to be used as a draft identifier.

**draft** objectrequired

A draft containing an array of draft posts.

**deviceId** string

UUIDv4 identifier of the device that created this draft.

**Possible values:**`<= 100 characters`

**deviceName** string

The device and/or platform on which the draft was created.

**Possible values:**`<= 100 characters`

**posts** object\[\]required

**Possible values:**`<= 100`

Array \[\
\
**text** stringrequired\
\
The primary post content. It has a higher limit than post contents to allow storing a larger text that can later be refined into smaller posts.\
\
**Possible values:**`<= 10000 characters`\
\
**labels** object\
\
oneOf\
\
- com.atproto.label.defs.selfLabels\
\
**values** object\[\]required\
\
**Possible values:**`<= 10`\
\
Array \[\
\
**val** stringrequired\
\
The short string name of the value or type of this label.\
\
**Possible values:**`<= 128 characters`\
\
\]\
\
**embedImages** object\[\]\
\
**Possible values:**`<= 4`\
\
Array \[\
\
**localRef** objectrequired\
\
**path** stringrequired\
\
Local, on-device ref to file to be embedded. Embeds are currently device-bound for drafts.\
\
**Possible values:**`non-empty` and `<= 1024 characters`\
\
**alt** string\
\
\]\
\
**embedVideos** object\[\]\
\
**Possible values:**`<= 1`\
\
Array \[\
\
**localRef** objectrequired\
\
**path** stringrequired\
\
Local, on-device ref to file to be embedded. Embeds are currently device-bound for drafts.\
\
**Possible values:**`non-empty` and `<= 1024 characters`\
\
**alt** string\
\
**captions** object\[\]\
\
**Possible values:**`<= 20`\
\
Array \[\
\
**lang** languagerequired\
\
**content** stringrequired\
\
**Possible values:**`<= 10000 characters`\
\
\]\
\
\]\
\
**embedExternals** object\[\]\
\
**Possible values:**`<= 1`\
\
Array \[\
\
**uri** urirequired\
\
\]\
\
**embedRecords** object\[\]\
\
**Possible values:**`<= 1`\
\
Array \[\
\
**record** objectrequired\
\
**uri** at-urirequired\
\
**cid** cidrequired\
\
\]\
\
\]

**langs** language\[\]

**Possible values:**`<= 3`

**postgateEmbeddingRules** object\[\]

**Possible values:**`<= 5`

Array \[\
\
oneOf\
\
- app.bsky.feed.postgate.disableRule\
\
object\
\
\]

**threadgateAllow** object\[\]

**Possible values:**`<= 5`

Array \[\
\
oneOf\
\
- app.bsky.feed.threadgate.mentionRule\
- app.bsky.feed.threadgate.followerRule\
- app.bsky.feed.threadgate.followingRule\
- app.bsky.feed.threadgate.listRule\
\
object\
\
object\
\
object\
\
**list** at-urirequired\
\
\]

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-draft-update-draft\#responses "Direct link to Responses")

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

  "draft": {

    "id": "string",

    "draft": {

      "deviceId": "string",

      "deviceName": "string",

      "posts": [\
\
        {\
\
          "text": "string",\
\
          "labels": {\
\
            "values": [\
\
              {\
\
                "val": "string"\
\
              }\
\
            ]\
\
          },\
\
          "embedImages": [\
\
            {\
\
              "localRef": {\
\
                "path": "string"\
\
              },\
\
              "alt": "string"\
\
            }\
\
          ],\
\
          "embedVideos": [\
\
            {\
\
              "localRef": {\
\
                "path": "string"\
\
              },\
\
              "alt": "string",\
\
              "captions": [\
\
                {\
\
                  "lang": "string",\
\
                  "content": "string"\
\
                }\
\
              ]\
\
            }\
\
          ],\
\
          "embedExternals": [\
\
            {\
\
              "uri": "string"\
\
            }\
\
          ],\
\
          "embedRecords": [\
\
            {\
\
              "record": {\
\
                "uri": "string",\
\
                "cid": "string"\
\
              }\
\
            }\
\
          ]\
\
        }\
\
      ],

      "langs": [\
\
        "string"\
\
      ],

      "postgateEmbeddingRules": [\
\
        {}\
\
      ],

      "threadgateAllow": [\
\
        {},\
\
        {},\
\
        {},\
\
        {\
\
          "list": "string"\
\
        }\
\
      ]

    }

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

## app.bsky.draft.delete.draft

Source: https://docs.bsky.app/docs/api/app-bsky-draft-delete-draft

# app.bsky.draft.deleteDraft

```
POST /xrpc/app.bsky.draft.deleteDraft
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Deletes a draft by ID. Requires authentication.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-draft-delete-draft\#request "Direct link to Request")

- application/json

### Body **required**

**id** tidrequired

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-draft-delete-draft\#responses "Direct link to Responses")

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

  "id": "string"

}
```

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**

---

