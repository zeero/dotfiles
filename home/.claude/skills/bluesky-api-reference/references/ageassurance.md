# Bluesky API Reference: ageassurance

## app.bsky.ageassurance.begin

Source: https://docs.bsky.app/docs/api/app-bsky-ageassurance-begin

# app.bsky.ageassurance.begin

```
POST /xrpc/app.bsky.ageassurance.begin
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Initiate Age Assurance for an account.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-ageassurance-begin\#request "Direct link to Request")

- application/json

### Body **required**

**email** stringrequired

The user's email address to receive Age Assurance instructions.

**language** stringrequired

The user's preferred language for communication during the Age Assurance process.

**countryCode** stringrequired

An ISO 3166-1 alpha-2 code of the user's location.

**regionCode** string

An optional ISO 3166-2 code of the user's region or state within the country.

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-ageassurance-begin\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**lastInitiatedAt** date-time

The timestamp when this state was last updated.

**status** app.bsky.ageassurance.defs.status (string)required

The status of the Age Assurance process.

**Possible values:** \[`unknown`, `pending`, `assured`, `blocked`\]

**access** app.bsky.ageassurance.defs.access (string)required

The access level granted based on Age Assurance data we've processed.

**Possible values:** \[`unknown`, `none`, `safe`, `full`\]

```json
{
  "lastInitiatedAt": "2024-07-29T15:51:28.071Z",
  "status": "unknown",
  "access": "unknown"
}
```

Bad Request

- application/json

- Schema
- Example (auto)

**Schema**

**error** stringrequired

**Possible values:** \[`InvalidRequest`, `ExpiredToken`, `InvalidToken`, `InvalidEmail`, `DidTooLong`, `InvalidInitiation`, `RegionNotSupported`\]

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

  "email": "string",

  "language": "string",

  "countryCode": "string",

  "regionCode": "string"

}
```

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**

---

## app.bsky.ageassurance.get.config

Source: https://docs.bsky.app/docs/api/app-bsky-ageassurance-get-config

# app.bsky.ageassurance.getConfig

```
GET /xrpc/app.bsky.ageassurance.getConfig
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Returns Age Assurance configuration for use on the client.

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-ageassurance-get-config\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**regions** object\[\]required

Array \[\
\
**countryCode** stringrequired\
\
The ISO 3166-1 alpha-2 country code this configuration applies to.\
\
**regionCode** string\
\
The ISO 3166-2 region code this configuration applies to. If omitted, the configuration applies to the entire country.\
\
**minAccessAge** integerrequired\
\
**rules** object\[\]required\
\
Array \[\
\
oneOf\
\
- app.bsky.ageassurance.defs.configRegionRuleDefault\
- app.bsky.ageassurance.defs.configRegionRuleIfDeclaredOverAge\
- app.bsky.ageassurance.defs.configRegionRuleIfDeclaredUnderAge\
- app.bsky.ageassurance.defs.configRegionRuleIfAssuredOverAge\
- app.bsky.ageassurance.defs.configRegionRuleIfAssuredUnderAge\
- app.bsky.ageassurance.defs.configRegionRuleIfAccountNewerThan\
- app.bsky.ageassurance.defs.configRegionRuleIfAccountOlderThan\
\
**access** app.bsky.ageassurance.defs.access (string)required\
\
The access level granted based on Age Assurance data we've processed.\
\
**Possible values:** \[`unknown`, `none`, `safe`, `full`\]\
\
**age** integerrequired\
\
**access** app.bsky.ageassurance.defs.access (string)required\
\
The access level granted based on Age Assurance data we've processed.\
\
**Possible values:** \[`unknown`, `none`, `safe`, `full`\]\
\
**age** integerrequired\
\
**access** app.bsky.ageassurance.defs.access (string)required\
\
The access level granted based on Age Assurance data we've processed.\
\
**Possible values:** \[`unknown`, `none`, `safe`, `full`\]\
\
**age** integerrequired\
\
**access** app.bsky.ageassurance.defs.access (string)required\
\
The access level granted based on Age Assurance data we've processed.\
\
**Possible values:** \[`unknown`, `none`, `safe`, `full`\]\
\
**age** integerrequired\
\
**access** app.bsky.ageassurance.defs.access (string)required\
\
The access level granted based on Age Assurance data we've processed.\
\
**Possible values:** \[`unknown`, `none`, `safe`, `full`\]\
\
**date** date-timerequired\
\
The date threshold as a datetime string.\
\
**access** app.bsky.ageassurance.defs.access (string)required\
\
The access level granted based on Age Assurance data we've processed.\
\
**Possible values:** \[`unknown`, `none`, `safe`, `full`\]\
\
**date** date-timerequired\
\
The date threshold as a datetime string.\
\
**access** app.bsky.ageassurance.defs.access (string)required\
\
The access level granted based on Age Assurance data we've processed.\
\
**Possible values:** \[`unknown`, `none`, `safe`, `full`\]\
\
\]\
\
\]

```json
{
  "regions": [\
    {\
      "countryCode": "string",\
      "regionCode": "string",\
      "minAccessAge": 0,\
      "rules": [\
        {\
          "access": "unknown"\
        },\
        {\
          "age": 0,\
          "access": "unknown"\
        },\
        {\
          "age": 0,\
          "access": "unknown"\
        },\
        {\
          "age": 0,\
          "access": "unknown"\
        },\
        {\
          "age": 0,\
          "access": "unknown"\
        },\
        {\
          "date": "2024-07-29T15:51:28.071Z",\
          "access": "unknown"\
        },\
        {\
          "date": "2024-07-29T15:51:28.071Z",\
          "access": "unknown"\
        }\
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

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**

---

## app.bsky.ageassurance.get.state

Source: https://docs.bsky.app/docs/api/app-bsky-ageassurance-get-state

# app.bsky.ageassurance.getState

```
GET /xrpc/app.bsky.ageassurance.getState
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Returns server-computed Age Assurance state, if available, and any additional metadata needed to compute Age Assurance state client-side.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-ageassurance-get-state\#request "Direct link to Request")

### Query Parameters

**countryCode** stringrequired

**regionCode** string

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-ageassurance-get-state\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**state** objectrequired

The user's computed Age Assurance state.

**lastInitiatedAt** date-time

The timestamp when this state was last updated.

**status** app.bsky.ageassurance.defs.status (string)required

The status of the Age Assurance process.

**Possible values:** \[`unknown`, `pending`, `assured`, `blocked`\]

**access** app.bsky.ageassurance.defs.access (string)required

The access level granted based on Age Assurance data we've processed.

**Possible values:** \[`unknown`, `none`, `safe`, `full`\]

**metadata** objectrequired

Additional metadata needed to compute Age Assurance state client-side.

**accountCreatedAt** date-time

The account creation timestamp.

```json
{
  "state": {
    "lastInitiatedAt": "2024-07-29T15:51:28.071Z",
    "status": "unknown",
    "access": "unknown"
  },
  "metadata": {
    "accountCreatedAt": "2024-07-29T15:51:28.071Z"
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

countryCode — queryrequired

Show optional parameters

regionCode — query

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**

---

