# Bluesky API Reference: labeler

## app.bsky.labeler.get.services

Source: https://docs.bsky.app/docs/api/app-bsky-labeler-get-services

# app.bsky.labeler.getServices

```
GET /xrpc/app.bsky.labeler.getServices
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Get information about a list of labeler services.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-labeler-get-services\#request "Direct link to Request")

### Query Parameters

**dids** did\[\]required

**detailed** boolean

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-labeler-get-services\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**views** object\[\]required

Array \[\
\
oneOf\
\
- app.bsky.labeler.defs.labelerView\
- app.bsky.labeler.defs.labelerViewDetailed\
\
**uri** at-urirequired\
\
**cid** cidrequired\
\
**creator** objectrequired\
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
**likeCount** integer\
\
**viewer** object\
\
**like** at-uri\
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
**uri** at-urirequired\
\
**cid** cidrequired\
\
**creator** objectrequired\
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
**policies** objectrequired\
\
**labelValues** com.atproto.label.defs.labelValue (string)\[\]required\
\
**Possible values:** \[`!hide`, `!no-promote`, `!warn`, `!no-unauthenticated`, `dmca-violation`, `doxxing`, `porn`, `sexual`, `nudity`, `nsfl`, `gore`\]\
\
**labelValueDefinitions** object\[\]\
\
Array \[\
\
**identifier** stringrequired\
\
The value of the label being defined. Must only include lowercase ascii and the '-' character (\[a-z-\]+).\
\
**Possible values:**`<= 100 characters`\
\
**severity** stringrequired\
\
How should a client visually convey this label? 'inform' means neutral and informational; 'alert' means negative and warning; 'none' means show nothing.\
\
**Possible values:** \[`inform`, `alert`, `none`\]\
\
**blurs** stringrequired\
\
What should this label hide in the UI, if applied? 'content' hides all of the target; 'media' hides the images/video/audio; 'none' hides nothing.\
\
**Possible values:** \[`content`, `media`, `none`\]\
\
**defaultSetting** string\
\
The default setting for this label.\
\
**Possible values:** \[`ignore`, `warn`, `hide`\]\
\
**Default value:** `warn`\
\
**adultOnly** boolean\
\
Does the user need to have adult content enabled in order to configure this label?\
\
**locales** object\[\]required\
\
Array \[\
\
**lang** languagerequired\
\
The code of the language these strings are written in.\
\
**name** stringrequired\
\
A short human-readable name for the label.\
\
**Possible values:**`<= 640 characters`\
\
**description** stringrequired\
\
A longer description of what the label means and why it might be applied.\
\
**Possible values:**`<= 100000 characters`\
\
\]\
\
\]\
\
**likeCount** integer\
\
**viewer** object\
\
**like** at-uri\
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
**reasonTypes** object\[\]\
\
Array \[\
\
oneOf\
\
- com.atproto.moderation.defs.reasonSpam\
- com.atproto.moderation.defs.reasonViolation\
- com.atproto.moderation.defs.reasonMisleading\
- com.atproto.moderation.defs.reasonSexual\
- com.atproto.moderation.defs.reasonRude\
- com.atproto.moderation.defs.reasonOther\
- com.atproto.moderation.defs.reasonAppeal\
- tools.ozone.report.defs.reasonAppeal\
- tools.ozone.report.defs.reasonOther\
- tools.ozone.report.defs.reasonViolenceAnimal\
- tools.ozone.report.defs.reasonViolenceThreats\
- tools.ozone.report.defs.reasonViolenceGraphicContent\
- tools.ozone.report.defs.reasonViolenceGlorification\
- tools.ozone.report.defs.reasonViolenceExtremistContent\
- tools.ozone.report.defs.reasonViolenceTrafficking\
- tools.ozone.report.defs.reasonViolenceOther\
- tools.ozone.report.defs.reasonSexualAbuseContent\
- tools.ozone.report.defs.reasonSexualNCII\
- tools.ozone.report.defs.reasonSexualDeepfake\
- tools.ozone.report.defs.reasonSexualAnimal\
- tools.ozone.report.defs.reasonSexualUnlabeled\
- tools.ozone.report.defs.reasonSexualOther\
- tools.ozone.report.defs.reasonChildSafetyCSAM\
- tools.ozone.report.defs.reasonChildSafetyGroom\
- tools.ozone.report.defs.reasonChildSafetyPrivacy\
- tools.ozone.report.defs.reasonChildSafetyHarassment\
- tools.ozone.report.defs.reasonChildSafetyOther\
- tools.ozone.report.defs.reasonHarassmentTroll\
- tools.ozone.report.defs.reasonHarassmentTargeted\
- tools.ozone.report.defs.reasonHarassmentHateSpeech\
- tools.ozone.report.defs.reasonHarassmentDoxxing\
- tools.ozone.report.defs.reasonHarassmentOther\
- tools.ozone.report.defs.reasonMisleadingBot\
- tools.ozone.report.defs.reasonMisleadingImpersonation\
- tools.ozone.report.defs.reasonMisleadingSpam\
- tools.ozone.report.defs.reasonMisleadingScam\
- tools.ozone.report.defs.reasonMisleadingElections\
- tools.ozone.report.defs.reasonMisleadingOther\
- tools.ozone.report.defs.reasonRuleSiteSecurity\
- tools.ozone.report.defs.reasonRuleProhibitedSales\
- tools.ozone.report.defs.reasonRuleBanEvasion\
- tools.ozone.report.defs.reasonRuleOther\
- tools.ozone.report.defs.reasonSelfHarmContent\
- tools.ozone.report.defs.reasonSelfHarmED\
- tools.ozone.report.defs.reasonSelfHarmStunts\
- tools.ozone.report.defs.reasonSelfHarmSubstances\
- tools.ozone.report.defs.reasonSelfHarmOther\
\
string\
\
Spam: frequent unwanted promotion, replies, mentions. Prefer new lexicon definition `tools.ozone.report.defs#reasonMisleadingSpam`.\
\
string\
\
Direct violation of server rules, laws, terms of service. Prefer new lexicon definition `tools.ozone.report.defs#reasonRuleOther`.\
\
string\
\
Misleading identity, affiliation, or content. Prefer new lexicon definition `tools.ozone.report.defs#reasonMisleadingOther`.\
\
string\
\
Unwanted or mislabeled sexual content. Prefer new lexicon definition `tools.ozone.report.defs#reasonSexualUnlabeled`.\
\
string\
\
Rude, harassing, explicit, or otherwise unwelcoming behavior. Prefer new lexicon definition `tools.ozone.report.defs#reasonHarassmentOther`.\
\
string\
\
Reports not falling under another report category. Prefer new lexicon definition `tools.ozone.report.defs#reasonOther`.\
\
string\
\
Appeal a previously taken moderation action\
\
string\
\
Appeal a previously taken moderation action\
\
string\
\
An issue not included in these options\
\
string\
\
Animal welfare violations\
\
string\
\
Threats or incitement\
\
string\
\
Graphic violent content\
\
string\
\
Glorification of violence\
\
string\
\
Extremist content. These reports will be sent only be sent to the application's Moderation Authority.\
\
string\
\
Human trafficking\
\
string\
\
Other violent content\
\
string\
\
Adult sexual abuse content\
\
string\
\
Non-consensual intimate imagery\
\
string\
\
Deepfake adult content\
\
string\
\
Animal sexual abuse\
\
string\
\
Unlabelled adult content\
\
string\
\
Other sexual violence content\
\
string\
\
Child sexual abuse material (CSAM). These reports will be sent only be sent to the application's Moderation Authority.\
\
string\
\
Grooming or predatory behavior. These reports will be sent only be sent to the application's Moderation Authority.\
\
string\
\
Privacy violation involving a minor\
\
string\
\
Harassment or bullying of minors\
\
string\
\
Other child safety. These reports will be sent only be sent to the application's Moderation Authority.\
\
string\
\
Trolling\
\
string\
\
Targeted harassment\
\
string\
\
Hate speech\
\
string\
\
Doxxing\
\
string\
\
Other harassing or hateful content\
\
string\
\
Fake account or bot\
\
string\
\
Impersonation\
\
string\
\
Spam\
\
string\
\
Scam\
\
string\
\
False information about elections\
\
string\
\
Other misleading content\
\
string\
\
Hacking or system attacks\
\
string\
\
Promoting or selling prohibited items or services\
\
string\
\
Banned user returning\
\
string\
\
Other\
\
string\
\
Content promoting or depicting self-harm\
\
string\
\
Eating disorders\
\
string\
\
Dangerous challenges or activities\
\
string\
\
Dangerous substances or drug abuse\
\
string\
\
Other dangerous content\
\
\]\
\
**subjectTypes** com.atproto.moderation.defs.subjectType (string)\[\]\
\
**Possible values:** \[`account`, `record`, `chat`\]\
\
**subjectCollections** nsid\[\]\
\
\]

```json
{
  "views": [\
    {\
      "uri": "string",\
      "cid": "string",\
      "creator": {\
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
      "likeCount": 0,\
      "viewer": {\
        "like": "string"\
      },\
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
    },\
    {\
      "uri": "string",\
      "cid": "string",\
      "creator": {\
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
      "policies": {\
        "labelValues": [\
          "!hide"\
        ],\
        "labelValueDefinitions": [\
          {\
            "identifier": "string",\
            "severity": "inform",\
            "blurs": "content",\
            "defaultSetting": "warn",\
            "adultOnly": true,\
            "locales": [\
              {\
                "lang": "string",\
                "name": "string",\
                "description": "string"\
              }\
            ]\
          }\
        ]\
      },\
      "likeCount": 0,\
      "viewer": {\
        "like": "string"\
      },\
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
      ],\
      "reasonTypes": [\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string",\
        "string"\
      ],\
      "subjectTypes": [\
        "account"\
      ],\
      "subjectCollections": [\
        "string"\
      ]\
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

dids — queryrequired

Add item

Show optional parameters

detailed — query

\-\-\-truefalse

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**

---

