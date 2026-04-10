# app.bsky.actor.get.preferences

Source: https://docs.bsky.app/docs/api/app-bsky-actor-get-preferences

# app.bsky.actor.getPreferences

```
GET /xrpc/app.bsky.actor.getPreferences
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Get private preferences attached to the current account. Expected use is synchronization between multiple devices, and import/export during account migration. Requires auth.

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-actor-get-preferences\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**preferences** object\[\]required

Array \[\
\
oneOf\
\
- app.bsky.actor.defs.adultContentPref\
- app.bsky.actor.defs.contentLabelPref\
- app.bsky.actor.defs.savedFeedsPref\
- app.bsky.actor.defs.savedFeedsPrefV2\
- app.bsky.actor.defs.personalDetailsPref\
- app.bsky.actor.defs.declaredAgePref\
- app.bsky.actor.defs.feedViewPref\
- app.bsky.actor.defs.threadViewPref\
- app.bsky.actor.defs.interestsPref\
- app.bsky.actor.defs.mutedWordsPref\
- app.bsky.actor.defs.hiddenPostsPref\
- app.bsky.actor.defs.bskyAppStatePref\
- app.bsky.actor.defs.labelersPref\
- app.bsky.actor.defs.postInteractionSettingsPref\
- app.bsky.actor.defs.verificationPrefs\
- app.bsky.actor.defs.liveEventPreferences\
\
**enabled** booleanrequired\
\
**labelerDid** did\
\
Which labeler does this preference apply to? If undefined, applies globally.\
\
**label** stringrequired\
\
**visibility** stringrequired\
\
**Possible values:** \[`ignore`, `show`, `warn`, `hide`\]\
\
**pinned** at-uri\[\]required\
\
**saved** at-uri\[\]required\
\
**timelineIndex** integer\
\
**items** object\[\]required\
\
Array \[\
\
**id** stringrequired\
\
**type** stringrequired\
\
**Possible values:** \[`feed`, `list`, `timeline`\]\
\
**value** stringrequired\
\
**pinned** booleanrequired\
\
\]\
\
**birthDate** date-time\
\
The birth date of account owner.\
\
**isOverAge13** boolean\
\
Indicates if the user has declared that they are over 13 years of age.\
\
**isOverAge16** boolean\
\
Indicates if the user has declared that they are over 16 years of age.\
\
**isOverAge18** boolean\
\
Indicates if the user has declared that they are over 18 years of age.\
\
**feed** stringrequired\
\
The URI of the feed, or an identifier which describes the feed.\
\
**hideReplies** boolean\
\
Hide replies in the feed.\
\
**hideRepliesByUnfollowed** boolean\
\
Hide replies in the feed if they are not by followed users.\
\
**Default value:** `true`\
\
**hideRepliesByLikeCount** integer\
\
**hideReposts** boolean\
\
Hide reposts in the feed.\
\
**hideQuotePosts** boolean\
\
Hide quote posts in the feed.\
\
**sort** string\
\
Sorting mode for threads.\
\
**Possible values:** \[`oldest`, `newest`, `most-likes`, `random`, `hotness`\]\
\
**tags** string\[\]required\
\
**Possible values:**`<= 100`\
\
**items** object\[\]required\
\
Array \[\
\
**id** string\
\
**value** stringrequired\
\
The muted word itself.\
\
**Possible values:**`<= 10000 characters`\
\
**targets** app.bsky.actor.defs.mutedWordTarget (string)\[\]required\
\
**Possible values:**`<= 640 characters`, \[`content`, `tag`\]\
\
**actorTarget** string\
\
Groups of users to apply the muted word to. If undefined, applies to all users.\
\
**Possible values:** \[`all`, `exclude-following`\]\
\
**Default value:** `all`\
\
**expiresAt** date-time\
\
The date and time at which the muted word will expire and no longer be applied.\
\
\]\
\
**items** at-uri\[\]required\
\
**activeProgressGuide** object\
\
If set, an active progress guide. Once completed, can be set to undefined. Should have unspecced fields tracking progress.\
\
**guide** stringrequired\
\
**Possible values:**`<= 100 characters`\
\
**queuedNudges** string\[\]\
\
**Possible values:**`<= 1000`\
\
**nuxs** object\[\]\
\
**Possible values:**`<= 100`\
\
Array \[\
\
**id** stringrequired\
\
**Possible values:**`<= 100 characters`\
\
**completed** booleanrequired\
\
**data** string\
\
Arbitrary data for the NUX. The structure is defined by the NUX itself. Limited to 300 characters.\
\
**Possible values:**`<= 3000 characters`\
\
**expiresAt** date-time\
\
The date and time at which the NUX will expire and should be considered completed.\
\
\]\
\
**labelers** object\[\]required\
\
Array \[\
\
**did** didrequired\
\
\]\
\
**threadgateAllowRules** object\[\]\
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
**hideBadges** boolean\
\
Hide the blue check badges for verified accounts and trusted verifiers.\
\
**hiddenFeedIds** string\[\]\
\
**hideAllFeeds** boolean\
\
Whether to hide all feeds from live events.\
\
\]

```json
{
  "preferences": [\
    {\
      "enabled": true\
    },\
    {\
      "labelerDid": "string",\
      "label": "string",\
      "visibility": "ignore"\
    },\
    {\
      "pinned": [\
        "string"\
      ],\
      "saved": [\
        "string"\
      ],\
      "timelineIndex": 0\
    },\
    {\
      "items": [\
        {\
          "id": "string",\
          "type": "feed",\
          "value": "string",\
          "pinned": true\
        }\
      ]\
    },\
    {\
      "birthDate": "2024-07-29T15:51:28.071Z"\
    },\
    {\
      "isOverAge13": true,\
      "isOverAge16": true,\
      "isOverAge18": true\
    },\
    {\
      "feed": "string",\
      "hideReplies": true,\
      "hideRepliesByUnfollowed": true,\
      "hideRepliesByLikeCount": 0,\
      "hideReposts": true,\
      "hideQuotePosts": true\
    },\
    {\
      "sort": "oldest"\
    },\
    {\
      "tags": [\
        "string"\
      ]\
    },\
    {\
      "items": [\
        {\
          "id": "string",\
          "value": "string",\
          "targets": [\
            "content"\
          ],\
          "actorTarget": "all",\
          "expiresAt": "2024-07-29T15:51:28.071Z"\
        }\
      ]\
    },\
    {\
      "items": [\
        "string"\
      ]\
    },\
    {\
      "activeProgressGuide": {\
        "guide": "string"\
      },\
      "queuedNudges": [\
        "string"\
      ],\
      "nuxs": [\
        {\
          "id": "string",\
          "completed": true,\
          "data": "string",\
          "expiresAt": "2024-07-29T15:51:28.071Z"\
        }\
      ]\
    },\
    {\
      "labelers": [\
        {\
          "did": "string"\
        }\
      ]\
    },\
    {\
      "threadgateAllowRules": [\
        {},\
        {},\
        {},\
        {\
          "list": "string"\
        }\
      ],\
      "postgateEmbeddingRules": [\
        {}\
      ]\
    },\
    {\
      "hideBadges": true\
    },\
    {\
      "hiddenFeedIds": [\
        "string"\
      ],\
      "hideAllFeeds": true\
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

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**