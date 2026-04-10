# chat.bsky.convo.get.convo.for.members

Source: https://docs.bsky.app/docs/api/chat-bsky-convo-get-convo-for-members

# chat.bsky.convo.getConvoForMembers

```
GET /xrpc/chat.bsky.convo.getConvoForMembers
```

_This endpoint is part of the Bluesky Chat (DMs) APIs. Requests usually require authentication, are directed to the user's PDS instance, and proxied to the single central chat service by setting the appropriate service DID (`did:web:api.bsky.chat`) in the service proxying header._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

## Request [​](https://docs.bsky.app/docs/api/chat-bsky-convo-get-convo-for-members\#request "Direct link to Request")

### Query Parameters

**members** did\[\]required

**Possible values:**`<= 10`

## Responses [​](https://docs.bsky.app/docs/api/chat-bsky-convo-get-convo-for-members\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**convo** objectrequired

**id** stringrequired

**rev** stringrequired

**members** object\[\]required

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
**chatDisabled** boolean\
\
Set to true when the actor cannot actively participate in conversations\
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
\]

**lastMessage** object

oneOf

- chat.bsky.convo.defs.messageView
- chat.bsky.convo.defs.deletedMessageView

**id** stringrequired

**rev** stringrequired

**text** stringrequired

**Possible values:**`<= 10000 characters`

**facets** object\[\]

Array \[\
\
**index** objectrequired\
\
Specifies the sub-string range a facet feature applies to. Start index is inclusive, end index is exclusive. Indices are zero-indexed, counting bytes of the UTF-8 encoded text. NOTE: some languages, like Javascript, use UTF-16 or Unicode codepoints for string slice indexing; in these languages, convert to byte arrays before working with facets.\
\
**byteStart** integerrequired\
\
**byteEnd** integerrequired\
\
**features** object\[\]required\
\
Array \[\
\
oneOf\
\
- app.bsky.richtext.facet.mention\
- app.bsky.richtext.facet.link\
- app.bsky.richtext.facet.tag\
\
**did** didrequired\
\
**uri** urirequired\
\
**tag** stringrequired\
\
**Possible values:**`<= 640 characters`\
\
\]\
\
\]

**embed** object

oneOf

- app.bsky.embed.record.view

**record** objectrequired

oneOf

- app.bsky.embed.record.viewRecord
- app.bsky.embed.record.viewNotFound
- app.bsky.embed.record.viewBlocked
- app.bsky.embed.record.viewDetached
- app.bsky.feed.defs.generatorView
- app.bsky.graph.defs.listView
- app.bsky.labeler.defs.labelerView
- app.bsky.graph.defs.starterPackViewBasic

**uri** at-urirequired

**cid** cidrequired

**author** objectrequired

**did** didrequired

**handle** handlerequired

**displayName** string

**Possible values:**`<= 640 characters`

**pronouns** string

**avatar** uri

**associated** object

**lists** integer

**feedgens** integer

**starterPacks** integer

**labeler** boolean

**chat** object

**allowIncoming** stringrequired

**Possible values:** \[`all`, `none`, `following`\]

**activitySubscription** object

**allowSubscriptions** stringrequired

**Possible values:** \[`followers`, `mutuals`, `none`\]

**germ** object

**messageMeUrl** urirequired

**showButtonTo** stringrequired

**Possible values:** \[`usersIFollow`, `everyone`\]

**viewer** object

Metadata about the requesting account's relationship with the subject account. Only has meaningful content for authed requests.

**muted** boolean

**mutedByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**blockedBy** boolean

**blocking** at-uri

**blockingByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**following** at-uri

**followedBy** at-uri

**knownFollowers** object

The subject's followers whom you also follow

**count** integerrequired

**followers** undefined\[\]required

**Possible values:**`<= 5`

**activitySubscription** object

**post** booleanrequired

**reply** booleanrequired

**labels** object\[\]

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
\]

**createdAt** date-time

**verification** object

Represents the verification information about the user this object is attached to.

**verifications** object\[\]required

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
\]

**verifiedStatus** stringrequired

The user's status as a verified account.

**Possible values:** \[`valid`, `invalid`, `none`\]

**trustedVerifierStatus** stringrequired

The user's status as a trusted verifier.

**Possible values:** \[`valid`, `invalid`, `none`\]

**status** object

**uri** at-uri

**cid** cid

**status** stringrequired

The status for the account.

**Possible values:** \[`app.bsky.actor.status#live`\]

**record** required

**embed** object

oneOf

- app.bsky.embed.external.view

**external** objectrequired

**uri** urirequired

**title** stringrequired

**description** stringrequired

**thumb** uri

**expiresAt** date-time

The date when this status will expire. The application might choose to no longer return the status after expiration.

**isActive** boolean

True if the status is not expired, false if it is expired. Only present if expiration was set.

**isDisabled** boolean

True if the user's go-live access has been disabled by a moderator, false otherwise.

**debug**

**value** required

**labels** object\[\]

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
\]

**replyCount** integer

**repostCount** integer

**likeCount** integer

**quoteCount** integer

**embeds** object\[\]

Array \[\
\
oneOf\
\
- app.bsky.embed.images.view\
- app.bsky.embed.video.view\
- app.bsky.embed.external.view\
- MOD4\
- app.bsky.embed.recordWithMedia.view\
\
**images** object\[\]required\
\
**Possible values:**`<= 4`\
\
Array \[\
\
**thumb** urirequired\
\
Fully-qualified URL where a thumbnail of the image can be fetched. For example, CDN location provided by the App View.\
\
**fullsize** urirequired\
\
Fully-qualified URL where a large version of the image can be fetched. May or may not be the exact original blob. For example, CDN location provided by the App View.\
\
**alt** stringrequired\
\
Alt text description of the image, for accessibility.\
\
**aspectRatio** object\
\
width:height represents an aspect ratio. It may be approximate, and may not correspond to absolute dimensions in any given unit.\
\
**width** integerrequired\
\
**Possible values:**`>= 1`\
\
**height** integerrequired\
\
**Possible values:**`>= 1`\
\
\]\
\
**cid** cidrequired\
\
**playlist** urirequired\
\
**thumbnail** uri\
\
**alt** string\
\
**Possible values:**`<= 10000 characters`\
\
**aspectRatio** object\
\
width:height represents an aspect ratio. It may be approximate, and may not correspond to absolute dimensions in any given unit.\
\
**width** integerrequired\
\
**Possible values:**`>= 1`\
\
**height** integerrequired\
\
**Possible values:**`>= 1`\
\
**presentation** string\
\
A hint to the client about how to present the video.\
\
**Possible values:** \[`default`, `gif`\]\
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
**record** required\
\
**media** objectrequired\
\
oneOf\
\
- app.bsky.embed.images.view\
- app.bsky.embed.video.view\
- app.bsky.embed.external.view\
\
**images** object\[\]required\
\
**Possible values:**`<= 4`\
\
Array \[\
\
**thumb** urirequired\
\
Fully-qualified URL where a thumbnail of the image can be fetched. For example, CDN location provided by the App View.\
\
**fullsize** urirequired\
\
Fully-qualified URL where a large version of the image can be fetched. May or may not be the exact original blob. For example, CDN location provided by the App View.\
\
**alt** stringrequired\
\
Alt text description of the image, for accessibility.\
\
**aspectRatio** object\
\
width:height represents an aspect ratio. It may be approximate, and may not correspond to absolute dimensions in any given unit.\
\
**width** integerrequired\
\
**Possible values:**`>= 1`\
\
**height** integerrequired\
\
**Possible values:**`>= 1`\
\
\]\
\
**cid** cidrequired\
\
**playlist** urirequired\
\
**thumbnail** uri\
\
**alt** string\
\
**Possible values:**`<= 10000 characters`\
\
**aspectRatio** object\
\
width:height represents an aspect ratio. It may be approximate, and may not correspond to absolute dimensions in any given unit.\
\
**width** integerrequired\
\
**Possible values:**`>= 1`\
\
**height** integerrequired\
\
**Possible values:**`>= 1`\
\
**presentation** string\
\
A hint to the client about how to present the video.\
\
**Possible values:** \[`default`, `gif`\]\
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
\]

**indexedAt** date-timerequired

**uri** at-urirequired

**notFound** booleanrequired

**Default value:** `true`

**uri** at-urirequired

**blocked** booleanrequired

**Default value:** `true`

**author** objectrequired

**did** didrequired

**viewer** object

Metadata about the requesting account's relationship with the subject account. Only has meaningful content for authed requests.

**muted** boolean

**mutedByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**blockedBy** boolean

**blocking** at-uri

**blockingByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**following** at-uri

**followedBy** at-uri

**knownFollowers** object

The subject's followers whom you also follow

**count** integerrequired

**followers** object\[\]required

**Possible values:**`<= 5`

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
\]

**activitySubscription** object

**post** booleanrequired

**reply** booleanrequired

**uri** at-urirequired

**detached** booleanrequired

**Default value:** `true`

**uri** at-urirequired

**cid** cidrequired

**did** didrequired

**creator** objectrequired

**did** didrequired

**handle** handlerequired

**displayName** string

**Possible values:**`<= 640 characters`

**pronouns** string

**description** string

**Possible values:**`<= 2560 characters`

**avatar** uri

**associated** object

**lists** integer

**feedgens** integer

**starterPacks** integer

**labeler** boolean

**chat** object

**allowIncoming** stringrequired

**Possible values:** \[`all`, `none`, `following`\]

**activitySubscription** object

**allowSubscriptions** stringrequired

**Possible values:** \[`followers`, `mutuals`, `none`\]

**germ** object

**messageMeUrl** urirequired

**showButtonTo** stringrequired

**Possible values:** \[`usersIFollow`, `everyone`\]

**indexedAt** date-time

**createdAt** date-time

**viewer** object

Metadata about the requesting account's relationship with the subject account. Only has meaningful content for authed requests.

**muted** boolean

**mutedByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**blockedBy** boolean

**blocking** at-uri

**blockingByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**following** at-uri

**followedBy** at-uri

**knownFollowers** object

The subject's followers whom you also follow

**count** integerrequired

**followers** object\[\]required

**Possible values:**`<= 5`

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
\]

**activitySubscription** object

**post** booleanrequired

**reply** booleanrequired

**labels** object\[\]

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
\]

**verification** object

Represents the verification information about the user this object is attached to.

**verifications** object\[\]required

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
\]

**verifiedStatus** stringrequired

The user's status as a verified account.

**Possible values:** \[`valid`, `invalid`, `none`\]

**trustedVerifierStatus** stringrequired

The user's status as a trusted verifier.

**Possible values:** \[`valid`, `invalid`, `none`\]

**status** object

**uri** at-uri

**cid** cid

**status** stringrequired

The status for the account.

**Possible values:** \[`app.bsky.actor.status#live`\]

**record** required

**embed** object

oneOf

- app.bsky.embed.external.view

**external** objectrequired

**uri** urirequired

**title** stringrequired

**description** stringrequired

**thumb** uri

**expiresAt** date-time

The date when this status will expire. The application might choose to no longer return the status after expiration.

**isActive** boolean

True if the status is not expired, false if it is expired. Only present if expiration was set.

**isDisabled** boolean

True if the user's go-live access has been disabled by a moderator, false otherwise.

**debug**

**displayName** stringrequired

**description** string

**Possible values:**`<= 3000 characters`

**descriptionFacets** object\[\]

Array \[\
\
**index** objectrequired\
\
Specifies the sub-string range a facet feature applies to. Start index is inclusive, end index is exclusive. Indices are zero-indexed, counting bytes of the UTF-8 encoded text. NOTE: some languages, like Javascript, use UTF-16 or Unicode codepoints for string slice indexing; in these languages, convert to byte arrays before working with facets.\
\
**byteStart** integerrequired\
\
**byteEnd** integerrequired\
\
**features** object\[\]required\
\
Array \[\
\
oneOf\
\
- app.bsky.richtext.facet.mention\
- app.bsky.richtext.facet.link\
- app.bsky.richtext.facet.tag\
\
**did** didrequired\
\
**uri** urirequired\
\
**tag** stringrequired\
\
**Possible values:**`<= 640 characters`\
\
\]\
\
\]

**avatar** uri

**likeCount** integer

**acceptsInteractions** boolean

**labels** object\[\]

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
\]

**viewer** object

**like** at-uri

**contentMode** string

**Possible values:** \[`app.bsky.feed.defs#contentModeUnspecified`, `app.bsky.feed.defs#contentModeVideo`\]

**indexedAt** date-timerequired

**uri** at-urirequired

**cid** cidrequired

**creator** objectrequired

**did** didrequired

**handle** handlerequired

**displayName** string

**Possible values:**`<= 640 characters`

**pronouns** string

**description** string

**Possible values:**`<= 2560 characters`

**avatar** uri

**associated** object

**lists** integer

**feedgens** integer

**starterPacks** integer

**labeler** boolean

**chat** object

**allowIncoming** stringrequired

**Possible values:** \[`all`, `none`, `following`\]

**activitySubscription** object

**allowSubscriptions** stringrequired

**Possible values:** \[`followers`, `mutuals`, `none`\]

**germ** object

**messageMeUrl** urirequired

**showButtonTo** stringrequired

**Possible values:** \[`usersIFollow`, `everyone`\]

**indexedAt** date-time

**createdAt** date-time

**viewer** object

Metadata about the requesting account's relationship with the subject account. Only has meaningful content for authed requests.

**muted** boolean

**mutedByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**blockedBy** boolean

**blocking** at-uri

**blockingByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**following** at-uri

**followedBy** at-uri

**knownFollowers** object

The subject's followers whom you also follow

**count** integerrequired

**followers** object\[\]required

**Possible values:**`<= 5`

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
\]

**activitySubscription** object

**post** booleanrequired

**reply** booleanrequired

**labels** object\[\]

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
\]

**verification** object

Represents the verification information about the user this object is attached to.

**verifications** object\[\]required

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
\]

**verifiedStatus** stringrequired

The user's status as a verified account.

**Possible values:** \[`valid`, `invalid`, `none`\]

**trustedVerifierStatus** stringrequired

The user's status as a trusted verifier.

**Possible values:** \[`valid`, `invalid`, `none`\]

**status** object

**uri** at-uri

**cid** cid

**status** stringrequired

The status for the account.

**Possible values:** \[`app.bsky.actor.status#live`\]

**record** required

**embed** object

oneOf

- app.bsky.embed.external.view

**external** objectrequired

**uri** urirequired

**title** stringrequired

**description** stringrequired

**thumb** uri

**expiresAt** date-time

The date when this status will expire. The application might choose to no longer return the status after expiration.

**isActive** boolean

True if the status is not expired, false if it is expired. Only present if expiration was set.

**isDisabled** boolean

True if the user's go-live access has been disabled by a moderator, false otherwise.

**debug**

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**description** string

**Possible values:**`<= 3000 characters`

**descriptionFacets** object\[\]

Array \[\
\
**index** objectrequired\
\
Specifies the sub-string range a facet feature applies to. Start index is inclusive, end index is exclusive. Indices are zero-indexed, counting bytes of the UTF-8 encoded text. NOTE: some languages, like Javascript, use UTF-16 or Unicode codepoints for string slice indexing; in these languages, convert to byte arrays before working with facets.\
\
**byteStart** integerrequired\
\
**byteEnd** integerrequired\
\
**features** object\[\]required\
\
Array \[\
\
oneOf\
\
- app.bsky.richtext.facet.mention\
- app.bsky.richtext.facet.link\
- app.bsky.richtext.facet.tag\
\
**did** didrequired\
\
**uri** urirequired\
\
**tag** stringrequired\
\
**Possible values:**`<= 640 characters`\
\
\]\
\
\]

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-timerequired

**uri** at-urirequired

**cid** cidrequired

**creator** objectrequired

**did** didrequired

**handle** handlerequired

**displayName** string

**Possible values:**`<= 640 characters`

**pronouns** string

**description** string

**Possible values:**`<= 2560 characters`

**avatar** uri

**associated** object

**lists** integer

**feedgens** integer

**starterPacks** integer

**labeler** boolean

**chat** object

**allowIncoming** stringrequired

**Possible values:** \[`all`, `none`, `following`\]

**activitySubscription** object

**allowSubscriptions** stringrequired

**Possible values:** \[`followers`, `mutuals`, `none`\]

**germ** object

**messageMeUrl** urirequired

**showButtonTo** stringrequired

**Possible values:** \[`usersIFollow`, `everyone`\]

**indexedAt** date-time

**createdAt** date-time

**viewer** object

Metadata about the requesting account's relationship with the subject account. Only has meaningful content for authed requests.

**muted** boolean

**mutedByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**blockedBy** boolean

**blocking** at-uri

**blockingByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**following** at-uri

**followedBy** at-uri

**knownFollowers** object

The subject's followers whom you also follow

**count** integerrequired

**followers** object\[\]required

**Possible values:**`<= 5`

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
\]

**activitySubscription** object

**post** booleanrequired

**reply** booleanrequired

**labels** object\[\]

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
\]

**verification** object

Represents the verification information about the user this object is attached to.

**verifications** object\[\]required

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
\]

**verifiedStatus** stringrequired

The user's status as a verified account.

**Possible values:** \[`valid`, `invalid`, `none`\]

**trustedVerifierStatus** stringrequired

The user's status as a trusted verifier.

**Possible values:** \[`valid`, `invalid`, `none`\]

**status** object

**uri** at-uri

**cid** cid

**status** stringrequired

The status for the account.

**Possible values:** \[`app.bsky.actor.status#live`\]

**record** required

**embed** object

oneOf

- app.bsky.embed.external.view

**external** objectrequired

**uri** urirequired

**title** stringrequired

**description** stringrequired

**thumb** uri

**expiresAt** date-time

The date when this status will expire. The application might choose to no longer return the status after expiration.

**isActive** boolean

True if the status is not expired, false if it is expired. Only present if expiration was set.

**isDisabled** boolean

True if the user's go-live access has been disabled by a moderator, false otherwise.

**debug**

**likeCount** integer

**viewer** object

**like** at-uri

**indexedAt** date-timerequired

**labels** object\[\]

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
\]

**uri** at-urirequired

**cid** cidrequired

**record** required

**creator** objectrequired

**did** didrequired

**handle** handlerequired

**displayName** string

**Possible values:**`<= 640 characters`

**pronouns** string

**avatar** uri

**associated** object

**lists** integer

**feedgens** integer

**starterPacks** integer

**labeler** boolean

**chat** object

**allowIncoming** stringrequired

**Possible values:** \[`all`, `none`, `following`\]

**activitySubscription** object

**allowSubscriptions** stringrequired

**Possible values:** \[`followers`, `mutuals`, `none`\]

**germ** object

**messageMeUrl** urirequired

**showButtonTo** stringrequired

**Possible values:** \[`usersIFollow`, `everyone`\]

**viewer** object

Metadata about the requesting account's relationship with the subject account. Only has meaningful content for authed requests.

**muted** boolean

**mutedByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**blockedBy** boolean

**blocking** at-uri

**blockingByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**following** at-uri

**followedBy** at-uri

**knownFollowers** object

The subject's followers whom you also follow

**count** integerrequired

**followers** undefined\[\]required

**Possible values:**`<= 5`

**activitySubscription** object

**post** booleanrequired

**reply** booleanrequired

**labels** object\[\]

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
\]

**createdAt** date-time

**verification** object

Represents the verification information about the user this object is attached to.

**verifications** object\[\]required

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
\]

**verifiedStatus** stringrequired

The user's status as a verified account.

**Possible values:** \[`valid`, `invalid`, `none`\]

**trustedVerifierStatus** stringrequired

The user's status as a trusted verifier.

**Possible values:** \[`valid`, `invalid`, `none`\]

**status** object

**uri** at-uri

**cid** cid

**status** stringrequired

The status for the account.

**Possible values:** \[`app.bsky.actor.status#live`\]

**record** required

**embed** object

oneOf

- app.bsky.embed.external.view

**external** objectrequired

**uri** urirequired

**title** stringrequired

**description** stringrequired

**thumb** uri

**expiresAt** date-time

The date when this status will expire. The application might choose to no longer return the status after expiration.

**isActive** boolean

True if the status is not expired, false if it is expired. Only present if expiration was set.

**isDisabled** boolean

True if the user's go-live access has been disabled by a moderator, false otherwise.

**debug**

**listItemCount** integer

**joinedWeekCount** integer

**joinedAllTimeCount** integer

**labels** object\[\]

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
\]

**indexedAt** date-timerequired

**reactions** object\[\]

Array \[\
\
**value** stringrequired\
\
**sender** objectrequired\
\
**did** didrequired\
\
**createdAt** date-timerequired\
\
\]

**sender** objectrequired

**did** didrequired

**sentAt** date-timerequired

**id** stringrequired

**rev** stringrequired

**sender** objectrequired

**did** didrequired

**sentAt** date-timerequired

**lastReaction** object

oneOf

- chat.bsky.convo.defs.messageAndReactionView

**message** objectrequired

**id** stringrequired

**rev** stringrequired

**text** stringrequired

**Possible values:**`<= 10000 characters`

**facets** object\[\]

Array \[\
\
**index** objectrequired\
\
Specifies the sub-string range a facet feature applies to. Start index is inclusive, end index is exclusive. Indices are zero-indexed, counting bytes of the UTF-8 encoded text. NOTE: some languages, like Javascript, use UTF-16 or Unicode codepoints for string slice indexing; in these languages, convert to byte arrays before working with facets.\
\
**byteStart** integerrequired\
\
**byteEnd** integerrequired\
\
**features** object\[\]required\
\
Array \[\
\
oneOf\
\
- app.bsky.richtext.facet.mention\
- app.bsky.richtext.facet.link\
- app.bsky.richtext.facet.tag\
\
**did** didrequired\
\
**uri** urirequired\
\
**tag** stringrequired\
\
**Possible values:**`<= 640 characters`\
\
\]\
\
\]

**embed** object

oneOf

- app.bsky.embed.record.view

**record** objectrequired

oneOf

- app.bsky.embed.record.viewRecord
- app.bsky.embed.record.viewNotFound
- app.bsky.embed.record.viewBlocked
- app.bsky.embed.record.viewDetached
- app.bsky.feed.defs.generatorView
- app.bsky.graph.defs.listView
- app.bsky.labeler.defs.labelerView
- app.bsky.graph.defs.starterPackViewBasic

**uri** at-urirequired

**cid** cidrequired

**author** objectrequired

**did** didrequired

**handle** handlerequired

**displayName** string

**Possible values:**`<= 640 characters`

**pronouns** string

**avatar** uri

**associated** object

**lists** integer

**feedgens** integer

**starterPacks** integer

**labeler** boolean

**chat** object

**allowIncoming** stringrequired

**Possible values:** \[`all`, `none`, `following`\]

**activitySubscription** object

**allowSubscriptions** stringrequired

**Possible values:** \[`followers`, `mutuals`, `none`\]

**germ** object

**messageMeUrl** urirequired

**showButtonTo** stringrequired

**Possible values:** \[`usersIFollow`, `everyone`\]

**viewer** object

Metadata about the requesting account's relationship with the subject account. Only has meaningful content for authed requests.

**muted** boolean

**mutedByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**blockedBy** boolean

**blocking** at-uri

**blockingByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**following** at-uri

**followedBy** at-uri

**knownFollowers** object

The subject's followers whom you also follow

**count** integerrequired

**followers** undefined\[\]required

**Possible values:**`<= 5`

**activitySubscription** object

**post** booleanrequired

**reply** booleanrequired

**labels** object\[\]

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
\]

**createdAt** date-time

**verification** object

Represents the verification information about the user this object is attached to.

**verifications** object\[\]required

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
\]

**verifiedStatus** stringrequired

The user's status as a verified account.

**Possible values:** \[`valid`, `invalid`, `none`\]

**trustedVerifierStatus** stringrequired

The user's status as a trusted verifier.

**Possible values:** \[`valid`, `invalid`, `none`\]

**status** object

**uri** at-uri

**cid** cid

**status** stringrequired

The status for the account.

**Possible values:** \[`app.bsky.actor.status#live`\]

**record** required

**embed** object

oneOf

- app.bsky.embed.external.view

**external** objectrequired

**uri** urirequired

**title** stringrequired

**description** stringrequired

**thumb** uri

**expiresAt** date-time

The date when this status will expire. The application might choose to no longer return the status after expiration.

**isActive** boolean

True if the status is not expired, false if it is expired. Only present if expiration was set.

**isDisabled** boolean

True if the user's go-live access has been disabled by a moderator, false otherwise.

**debug**

**value** required

**labels** object\[\]

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
\]

**replyCount** integer

**repostCount** integer

**likeCount** integer

**quoteCount** integer

**embeds** object\[\]

Array \[\
\
oneOf\
\
- app.bsky.embed.images.view\
- app.bsky.embed.video.view\
- app.bsky.embed.external.view\
- MOD4\
- app.bsky.embed.recordWithMedia.view\
\
**images** object\[\]required\
\
**Possible values:**`<= 4`\
\
Array \[\
\
**thumb** urirequired\
\
Fully-qualified URL where a thumbnail of the image can be fetched. For example, CDN location provided by the App View.\
\
**fullsize** urirequired\
\
Fully-qualified URL where a large version of the image can be fetched. May or may not be the exact original blob. For example, CDN location provided by the App View.\
\
**alt** stringrequired\
\
Alt text description of the image, for accessibility.\
\
**aspectRatio** object\
\
width:height represents an aspect ratio. It may be approximate, and may not correspond to absolute dimensions in any given unit.\
\
**width** integerrequired\
\
**Possible values:**`>= 1`\
\
**height** integerrequired\
\
**Possible values:**`>= 1`\
\
\]\
\
**cid** cidrequired\
\
**playlist** urirequired\
\
**thumbnail** uri\
\
**alt** string\
\
**Possible values:**`<= 10000 characters`\
\
**aspectRatio** object\
\
width:height represents an aspect ratio. It may be approximate, and may not correspond to absolute dimensions in any given unit.\
\
**width** integerrequired\
\
**Possible values:**`>= 1`\
\
**height** integerrequired\
\
**Possible values:**`>= 1`\
\
**presentation** string\
\
A hint to the client about how to present the video.\
\
**Possible values:** \[`default`, `gif`\]\
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
**record** required\
\
**media** objectrequired\
\
oneOf\
\
- app.bsky.embed.images.view\
- app.bsky.embed.video.view\
- app.bsky.embed.external.view\
\
**images** object\[\]required\
\
**Possible values:**`<= 4`\
\
Array \[\
\
**thumb** urirequired\
\
Fully-qualified URL where a thumbnail of the image can be fetched. For example, CDN location provided by the App View.\
\
**fullsize** urirequired\
\
Fully-qualified URL where a large version of the image can be fetched. May or may not be the exact original blob. For example, CDN location provided by the App View.\
\
**alt** stringrequired\
\
Alt text description of the image, for accessibility.\
\
**aspectRatio** object\
\
width:height represents an aspect ratio. It may be approximate, and may not correspond to absolute dimensions in any given unit.\
\
**width** integerrequired\
\
**Possible values:**`>= 1`\
\
**height** integerrequired\
\
**Possible values:**`>= 1`\
\
\]\
\
**cid** cidrequired\
\
**playlist** urirequired\
\
**thumbnail** uri\
\
**alt** string\
\
**Possible values:**`<= 10000 characters`\
\
**aspectRatio** object\
\
width:height represents an aspect ratio. It may be approximate, and may not correspond to absolute dimensions in any given unit.\
\
**width** integerrequired\
\
**Possible values:**`>= 1`\
\
**height** integerrequired\
\
**Possible values:**`>= 1`\
\
**presentation** string\
\
A hint to the client about how to present the video.\
\
**Possible values:** \[`default`, `gif`\]\
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
\]

**indexedAt** date-timerequired

**uri** at-urirequired

**notFound** booleanrequired

**Default value:** `true`

**uri** at-urirequired

**blocked** booleanrequired

**Default value:** `true`

**author** objectrequired

**did** didrequired

**viewer** object

Metadata about the requesting account's relationship with the subject account. Only has meaningful content for authed requests.

**muted** boolean

**mutedByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**blockedBy** boolean

**blocking** at-uri

**blockingByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**following** at-uri

**followedBy** at-uri

**knownFollowers** object

The subject's followers whom you also follow

**count** integerrequired

**followers** object\[\]required

**Possible values:**`<= 5`

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
\]

**activitySubscription** object

**post** booleanrequired

**reply** booleanrequired

**uri** at-urirequired

**detached** booleanrequired

**Default value:** `true`

**uri** at-urirequired

**cid** cidrequired

**did** didrequired

**creator** objectrequired

**did** didrequired

**handle** handlerequired

**displayName** string

**Possible values:**`<= 640 characters`

**pronouns** string

**description** string

**Possible values:**`<= 2560 characters`

**avatar** uri

**associated** object

**lists** integer

**feedgens** integer

**starterPacks** integer

**labeler** boolean

**chat** object

**allowIncoming** stringrequired

**Possible values:** \[`all`, `none`, `following`\]

**activitySubscription** object

**allowSubscriptions** stringrequired

**Possible values:** \[`followers`, `mutuals`, `none`\]

**germ** object

**messageMeUrl** urirequired

**showButtonTo** stringrequired

**Possible values:** \[`usersIFollow`, `everyone`\]

**indexedAt** date-time

**createdAt** date-time

**viewer** object

Metadata about the requesting account's relationship with the subject account. Only has meaningful content for authed requests.

**muted** boolean

**mutedByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**blockedBy** boolean

**blocking** at-uri

**blockingByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**following** at-uri

**followedBy** at-uri

**knownFollowers** object

The subject's followers whom you also follow

**count** integerrequired

**followers** object\[\]required

**Possible values:**`<= 5`

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
\]

**activitySubscription** object

**post** booleanrequired

**reply** booleanrequired

**labels** object\[\]

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
\]

**verification** object

Represents the verification information about the user this object is attached to.

**verifications** object\[\]required

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
\]

**verifiedStatus** stringrequired

The user's status as a verified account.

**Possible values:** \[`valid`, `invalid`, `none`\]

**trustedVerifierStatus** stringrequired

The user's status as a trusted verifier.

**Possible values:** \[`valid`, `invalid`, `none`\]

**status** object

**uri** at-uri

**cid** cid

**status** stringrequired

The status for the account.

**Possible values:** \[`app.bsky.actor.status#live`\]

**record** required

**embed** object

oneOf

- app.bsky.embed.external.view

**external** objectrequired

**uri** urirequired

**title** stringrequired

**description** stringrequired

**thumb** uri

**expiresAt** date-time

The date when this status will expire. The application might choose to no longer return the status after expiration.

**isActive** boolean

True if the status is not expired, false if it is expired. Only present if expiration was set.

**isDisabled** boolean

True if the user's go-live access has been disabled by a moderator, false otherwise.

**debug**

**displayName** stringrequired

**description** string

**Possible values:**`<= 3000 characters`

**descriptionFacets** object\[\]

Array \[\
\
**index** objectrequired\
\
Specifies the sub-string range a facet feature applies to. Start index is inclusive, end index is exclusive. Indices are zero-indexed, counting bytes of the UTF-8 encoded text. NOTE: some languages, like Javascript, use UTF-16 or Unicode codepoints for string slice indexing; in these languages, convert to byte arrays before working with facets.\
\
**byteStart** integerrequired\
\
**byteEnd** integerrequired\
\
**features** object\[\]required\
\
Array \[\
\
oneOf\
\
- app.bsky.richtext.facet.mention\
- app.bsky.richtext.facet.link\
- app.bsky.richtext.facet.tag\
\
**did** didrequired\
\
**uri** urirequired\
\
**tag** stringrequired\
\
**Possible values:**`<= 640 characters`\
\
\]\
\
\]

**avatar** uri

**likeCount** integer

**acceptsInteractions** boolean

**labels** object\[\]

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
\]

**viewer** object

**like** at-uri

**contentMode** string

**Possible values:** \[`app.bsky.feed.defs#contentModeUnspecified`, `app.bsky.feed.defs#contentModeVideo`\]

**indexedAt** date-timerequired

**uri** at-urirequired

**cid** cidrequired

**creator** objectrequired

**did** didrequired

**handle** handlerequired

**displayName** string

**Possible values:**`<= 640 characters`

**pronouns** string

**description** string

**Possible values:**`<= 2560 characters`

**avatar** uri

**associated** object

**lists** integer

**feedgens** integer

**starterPacks** integer

**labeler** boolean

**chat** object

**allowIncoming** stringrequired

**Possible values:** \[`all`, `none`, `following`\]

**activitySubscription** object

**allowSubscriptions** stringrequired

**Possible values:** \[`followers`, `mutuals`, `none`\]

**germ** object

**messageMeUrl** urirequired

**showButtonTo** stringrequired

**Possible values:** \[`usersIFollow`, `everyone`\]

**indexedAt** date-time

**createdAt** date-time

**viewer** object

Metadata about the requesting account's relationship with the subject account. Only has meaningful content for authed requests.

**muted** boolean

**mutedByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**blockedBy** boolean

**blocking** at-uri

**blockingByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**following** at-uri

**followedBy** at-uri

**knownFollowers** object

The subject's followers whom you also follow

**count** integerrequired

**followers** object\[\]required

**Possible values:**`<= 5`

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
\]

**activitySubscription** object

**post** booleanrequired

**reply** booleanrequired

**labels** object\[\]

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
\]

**verification** object

Represents the verification information about the user this object is attached to.

**verifications** object\[\]required

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
\]

**verifiedStatus** stringrequired

The user's status as a verified account.

**Possible values:** \[`valid`, `invalid`, `none`\]

**trustedVerifierStatus** stringrequired

The user's status as a trusted verifier.

**Possible values:** \[`valid`, `invalid`, `none`\]

**status** object

**uri** at-uri

**cid** cid

**status** stringrequired

The status for the account.

**Possible values:** \[`app.bsky.actor.status#live`\]

**record** required

**embed** object

oneOf

- app.bsky.embed.external.view

**external** objectrequired

**uri** urirequired

**title** stringrequired

**description** stringrequired

**thumb** uri

**expiresAt** date-time

The date when this status will expire. The application might choose to no longer return the status after expiration.

**isActive** boolean

True if the status is not expired, false if it is expired. Only present if expiration was set.

**isDisabled** boolean

True if the user's go-live access has been disabled by a moderator, false otherwise.

**debug**

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**description** string

**Possible values:**`<= 3000 characters`

**descriptionFacets** object\[\]

Array \[\
\
**index** objectrequired\
\
Specifies the sub-string range a facet feature applies to. Start index is inclusive, end index is exclusive. Indices are zero-indexed, counting bytes of the UTF-8 encoded text. NOTE: some languages, like Javascript, use UTF-16 or Unicode codepoints for string slice indexing; in these languages, convert to byte arrays before working with facets.\
\
**byteStart** integerrequired\
\
**byteEnd** integerrequired\
\
**features** object\[\]required\
\
Array \[\
\
oneOf\
\
- app.bsky.richtext.facet.mention\
- app.bsky.richtext.facet.link\
- app.bsky.richtext.facet.tag\
\
**did** didrequired\
\
**uri** urirequired\
\
**tag** stringrequired\
\
**Possible values:**`<= 640 characters`\
\
\]\
\
\]

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-timerequired

**uri** at-urirequired

**cid** cidrequired

**creator** objectrequired

**did** didrequired

**handle** handlerequired

**displayName** string

**Possible values:**`<= 640 characters`

**pronouns** string

**description** string

**Possible values:**`<= 2560 characters`

**avatar** uri

**associated** object

**lists** integer

**feedgens** integer

**starterPacks** integer

**labeler** boolean

**chat** object

**allowIncoming** stringrequired

**Possible values:** \[`all`, `none`, `following`\]

**activitySubscription** object

**allowSubscriptions** stringrequired

**Possible values:** \[`followers`, `mutuals`, `none`\]

**germ** object

**messageMeUrl** urirequired

**showButtonTo** stringrequired

**Possible values:** \[`usersIFollow`, `everyone`\]

**indexedAt** date-time

**createdAt** date-time

**viewer** object

Metadata about the requesting account's relationship with the subject account. Only has meaningful content for authed requests.

**muted** boolean

**mutedByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**blockedBy** boolean

**blocking** at-uri

**blockingByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**following** at-uri

**followedBy** at-uri

**knownFollowers** object

The subject's followers whom you also follow

**count** integerrequired

**followers** object\[\]required

**Possible values:**`<= 5`

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
\]

**activitySubscription** object

**post** booleanrequired

**reply** booleanrequired

**labels** object\[\]

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
\]

**verification** object

Represents the verification information about the user this object is attached to.

**verifications** object\[\]required

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
\]

**verifiedStatus** stringrequired

The user's status as a verified account.

**Possible values:** \[`valid`, `invalid`, `none`\]

**trustedVerifierStatus** stringrequired

The user's status as a trusted verifier.

**Possible values:** \[`valid`, `invalid`, `none`\]

**status** object

**uri** at-uri

**cid** cid

**status** stringrequired

The status for the account.

**Possible values:** \[`app.bsky.actor.status#live`\]

**record** required

**embed** object

oneOf

- app.bsky.embed.external.view

**external** objectrequired

**uri** urirequired

**title** stringrequired

**description** stringrequired

**thumb** uri

**expiresAt** date-time

The date when this status will expire. The application might choose to no longer return the status after expiration.

**isActive** boolean

True if the status is not expired, false if it is expired. Only present if expiration was set.

**isDisabled** boolean

True if the user's go-live access has been disabled by a moderator, false otherwise.

**debug**

**likeCount** integer

**viewer** object

**like** at-uri

**indexedAt** date-timerequired

**labels** object\[\]

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
\]

**uri** at-urirequired

**cid** cidrequired

**record** required

**creator** objectrequired

**did** didrequired

**handle** handlerequired

**displayName** string

**Possible values:**`<= 640 characters`

**pronouns** string

**avatar** uri

**associated** object

**lists** integer

**feedgens** integer

**starterPacks** integer

**labeler** boolean

**chat** object

**allowIncoming** stringrequired

**Possible values:** \[`all`, `none`, `following`\]

**activitySubscription** object

**allowSubscriptions** stringrequired

**Possible values:** \[`followers`, `mutuals`, `none`\]

**germ** object

**messageMeUrl** urirequired

**showButtonTo** stringrequired

**Possible values:** \[`usersIFollow`, `everyone`\]

**viewer** object

Metadata about the requesting account's relationship with the subject account. Only has meaningful content for authed requests.

**muted** boolean

**mutedByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**blockedBy** boolean

**blocking** at-uri

**blockingByList** object

**uri** at-urirequired

**cid** cidrequired

**name** stringrequired

**Possible values:**`non-empty` and `<= 64 characters`

**purpose** objectrequired

oneOf

- app.bsky.graph.defs.modlist
- app.bsky.graph.defs.curatelist
- app.bsky.graph.defs.referencelist

string

A list of actors to apply an aggregate moderation action (mute/block) on.

string

A list of actors used for curation purposes such as list feeds or interaction gating.

string

A list of actors used for only for reference purposes such as within a starter pack.

**avatar** uri

**listItemCount** integer

**labels** object\[\]

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
\]

**viewer** object

**muted** boolean

**blocked** at-uri

**indexedAt** date-time

**following** at-uri

**followedBy** at-uri

**knownFollowers** object

The subject's followers whom you also follow

**count** integerrequired

**followers** undefined\[\]required

**Possible values:**`<= 5`

**activitySubscription** object

**post** booleanrequired

**reply** booleanrequired

**labels** object\[\]

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
\]

**createdAt** date-time

**verification** object

Represents the verification information about the user this object is attached to.

**verifications** object\[\]required

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
\]

**verifiedStatus** stringrequired

The user's status as a verified account.

**Possible values:** \[`valid`, `invalid`, `none`\]

**trustedVerifierStatus** stringrequired

The user's status as a trusted verifier.

**Possible values:** \[`valid`, `invalid`, `none`\]

**status** object

**uri** at-uri

**cid** cid

**status** stringrequired

The status for the account.

**Possible values:** \[`app.bsky.actor.status#live`\]

**record** required

**embed** object

oneOf

- app.bsky.embed.external.view

**external** objectrequired

**uri** urirequired

**title** stringrequired

**description** stringrequired

**thumb** uri

**expiresAt** date-time

The date when this status will expire. The application might choose to no longer return the status after expiration.

**isActive** boolean

True if the status is not expired, false if it is expired. Only present if expiration was set.

**isDisabled** boolean

True if the user's go-live access has been disabled by a moderator, false otherwise.

**debug**

**listItemCount** integer

**joinedWeekCount** integer

**joinedAllTimeCount** integer

**labels** object\[\]

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
\]

**indexedAt** date-timerequired

**reactions** object\[\]

Array \[\
\
**value** stringrequired\
\
**sender** objectrequired\
\
**did** didrequired\
\
**createdAt** date-timerequired\
\
\]

**sender** objectrequired

**did** didrequired

**sentAt** date-timerequired

**reaction** objectrequired

**value** stringrequired

**sender** objectrequired

**did** didrequired

**createdAt** date-timerequired

**muted** booleanrequired

**status** string

**Possible values:** \[`request`, `accepted`\]

**unreadCount** integerrequired

```json
{
  "convo": {
    "id": "string",
    "rev": "string",
    "members": [\
      {\
        "did": "string",\
        "handle": "string",\
        "displayName": "string",\
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
        "chatDisabled": true,\
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
        }\
      }\
    ],
    "lastMessage": {
      "id": "string",
      "rev": "string",
      "text": "string",
      "facets": [\
        {\
          "index": {\
            "byteStart": 0,\
            "byteEnd": 0\
          },\
          "features": [\
            {\
              "did": "string"\
            },\
            {\
              "uri": "string"\
            },\
            {\
              "tag": "string"\
            }\
          ]\
        }\
      ],
      "embed": {
        "record": {
          "uri": "string",
          "cid": "string",
          "author": {
            "did": "string",
            "handle": "string",
            "displayName": "string",
            "pronouns": "string",
            "avatar": "string",
            "associated": {
              "lists": 0,
              "feedgens": 0,
              "starterPacks": 0,
              "labeler": true,
              "chat": {
                "allowIncoming": "all"
              },
              "activitySubscription": {
                "allowSubscriptions": "followers"
              },
              "germ": {
                "messageMeUrl": "string",
                "showButtonTo": "usersIFollow"
              }
            },
            "viewer": {
              "muted": true,
              "mutedByList": {
                "uri": "string",
                "cid": "string",
                "name": "string",
                "purpose": "string",
                "avatar": "string",
                "listItemCount": 0,
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
                ],
                "viewer": {
                  "muted": true,
                  "blocked": "string"
                },
                "indexedAt": "2024-07-29T15:51:28.071Z"
              },
              "blockedBy": true,
              "blocking": "string",
              "blockingByList": {
                "uri": "string",
                "cid": "string",
                "name": "string",
                "purpose": "string",
                "avatar": "string",
                "listItemCount": 0,
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
                ],
                "viewer": {
                  "muted": true,
                  "blocked": "string"
                },
                "indexedAt": "2024-07-29T15:51:28.071Z"
              },
              "following": "string",
              "followedBy": "string",
              "knownFollowers": {
                "count": 0,
                "followers": [\
                  null\
                ]
              },
              "activitySubscription": {
                "post": true,
                "reply": true
              }
            },
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
            ],
            "createdAt": "2024-07-29T15:51:28.071Z",
            "verification": {
              "verifications": [\
                {\
                  "issuer": "string",\
                  "uri": "string",\
                  "isValid": true,\
                  "createdAt": "2024-07-29T15:51:28.071Z"\
                }\
              ],
              "verifiedStatus": "valid",
              "trustedVerifierStatus": "valid"
            },
            "status": {
              "uri": "string",
              "cid": "string",
              "status": "app.bsky.actor.status#live",
              "record": {},
              "embed": {
                "external": {
                  "uri": "string",
                  "title": "string",
                  "description": "string",
                  "thumb": "string"
                }
              },
              "expiresAt": "2024-07-29T15:51:28.071Z",
              "isActive": true,
              "isDisabled": true
            },
            "debug": {}
          },
          "value": {},
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
          ],
          "replyCount": 0,
          "repostCount": 0,
          "likeCount": 0,
          "quoteCount": 0,
          "embeds": [\
            {\
              "images": [\
                {\
                  "thumb": "string",\
                  "fullsize": "string",\
                  "alt": "string",\
                  "aspectRatio": {\
                    "width": 0,\
                    "height": 0\
                  }\
                }\
              ]\
            },\
            {\
              "cid": "string",\
              "playlist": "string",\
              "thumbnail": "string",\
              "alt": "string",\
              "aspectRatio": {\
                "width": 0,\
                "height": 0\
              },\
              "presentation": "default"\
            },\
            {\
              "external": {\
                "uri": "string",\
                "title": "string",\
                "description": "string",\
                "thumb": "string"\
              }\
            },\
            null,\
            {\
              "media": {\
                "images": [\
                  {\
                    "thumb": "string",\
                    "fullsize": "string",\
                    "alt": "string",\
                    "aspectRatio": {\
                      "width": 0,\
                      "height": 0\
                    }\
                  }\
                ]\
              }\
            }\
          ],
          "indexedAt": "2024-07-29T15:51:28.071Z"
        }
      },
      "reactions": [\
        {\
          "value": "string",\
          "sender": {\
            "did": "string"\
          },\
          "createdAt": "2024-07-29T15:51:28.071Z"\
        }\
      ],
      "sender": {
        "did": "string"
      },
      "sentAt": "2024-07-29T15:51:28.071Z"
    },
    "lastReaction": {
      "message": {
        "id": "string",
        "rev": "string",
        "text": "string",
        "facets": [\
          {\
            "index": {\
              "byteStart": 0,\
              "byteEnd": 0\
            },\
            "features": [\
              {\
                "did": "string"\
              },\
              {\
                "uri": "string"\
              },\
              {\
                "tag": "string"\
              }\
            ]\
          }\
        ],
        "embed": {
          "record": {
            "uri": "string",
            "cid": "string",
            "author": {
              "did": "string",
              "handle": "string",
              "displayName": "string",
              "pronouns": "string",
              "avatar": "string",
              "associated": {
                "lists": 0,
                "feedgens": 0,
                "starterPacks": 0,
                "labeler": true,
                "chat": {
                  "allowIncoming": "all"
                },
                "activitySubscription": {
                  "allowSubscriptions": "followers"
                },
                "germ": {
                  "messageMeUrl": "string",
                  "showButtonTo": "usersIFollow"
                }
              },
              "viewer": {
                "muted": true,
                "mutedByList": {
                  "uri": "string",
                  "cid": "string",
                  "name": "string",
                  "purpose": "string",
                  "avatar": "string",
                  "listItemCount": 0,
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
                  ],
                  "viewer": {
                    "muted": true,
                    "blocked": "string"
                  },
                  "indexedAt": "2024-07-29T15:51:28.071Z"
                },
                "blockedBy": true,
                "blocking": "string",
                "blockingByList": {
                  "uri": "string",
                  "cid": "string",
                  "name": "string",
                  "purpose": "string",
                  "avatar": "string",
                  "listItemCount": 0,
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
                  ],
                  "viewer": {
                    "muted": true,
                    "blocked": "string"
                  },
                  "indexedAt": "2024-07-29T15:51:28.071Z"
                },
                "following": "string",
                "followedBy": "string",
                "knownFollowers": {
                  "count": 0,
                  "followers": [\
                    null\
                  ]
                },
                "activitySubscription": {
                  "post": true,
                  "reply": true
                }
              },
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
              ],
              "createdAt": "2024-07-29T15:51:28.071Z",
              "verification": {
                "verifications": [\
                  {\
                    "issuer": "string",\
                    "uri": "string",\
                    "isValid": true,\
                    "createdAt": "2024-07-29T15:51:28.071Z"\
                  }\
                ],
                "verifiedStatus": "valid",
                "trustedVerifierStatus": "valid"
              },
              "status": {
                "uri": "string",
                "cid": "string",
                "status": "app.bsky.actor.status#live",
                "record": {},
                "embed": {
                  "external": {
                    "uri": "string",
                    "title": "string",
                    "description": "string",
                    "thumb": "string"
                  }
                },
                "expiresAt": "2024-07-29T15:51:28.071Z",
                "isActive": true,
                "isDisabled": true
              },
              "debug": {}
            },
            "value": {},
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
            ],
            "replyCount": 0,
            "repostCount": 0,
            "likeCount": 0,
            "quoteCount": 0,
            "embeds": [\
              {\
                "images": [\
                  {\
                    "thumb": "string",\
                    "fullsize": "string",\
                    "alt": "string",\
                    "aspectRatio": {\
                      "width": 0,\
                      "height": 0\
                    }\
                  }\
                ]\
              },\
              {\
                "cid": "string",\
                "playlist": "string",\
                "thumbnail": "string",\
                "alt": "string",\
                "aspectRatio": {\
                  "width": 0,\
                  "height": 0\
                },\
                "presentation": "default"\
              },\
              {\
                "external": {\
                  "uri": "string",\
                  "title": "string",\
                  "description": "string",\
                  "thumb": "string"\
                }\
              },\
              null,\
              {\
                "media": {\
                  "images": [\
                    {\
                      "thumb": "string",\
                      "fullsize": "string",\
                      "alt": "string",\
                      "aspectRatio": {\
                        "width": 0,\
                        "height": 0\
                      }\
                    }\
                  ]\
                }\
              }\
            ],
            "indexedAt": "2024-07-29T15:51:28.071Z"
          }
        },
        "reactions": [\
          {\
            "value": "string",\
            "sender": {\
              "did": "string"\
            },\
            "createdAt": "2024-07-29T15:51:28.071Z"\
          }\
        ],
        "sender": {
          "did": "string"
        },
        "sentAt": "2024-07-29T15:51:28.071Z"
      },
      "reaction": {
        "value": "string",
        "sender": {
          "did": "string"
        },
        "createdAt": "2024-07-29T15:51:28.071Z"
      }
    },
    "muted": true,
    "status": "request",
    "unreadCount": 0
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

Parameters

members — queryrequired

Add item

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**