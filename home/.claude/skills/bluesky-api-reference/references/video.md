# Bluesky API Reference: video

## app.bsky.video.get.job.status

Source: https://docs.bsky.app/docs/api/app-bsky-video-get-job-status

# app.bsky.video.getJobStatus

```
GET /xrpc/app.bsky.video.getJobStatus
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Get status details for a video processing job.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-video-get-job-status\#request "Direct link to Request")

### Query Parameters

**jobId** stringrequired

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-video-get-job-status\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**jobStatus** objectrequired

**jobId** stringrequired

**did** didrequired

**state** stringrequired

The state of the video processing job. All values not listed as a known value indicate that the job is in process.

**Possible values:** \[`JOB_STATE_COMPLETED`, `JOB_STATE_FAILED`\]

**progress** integer

**Possible values:**`<= 100`

**blob** binary

**error** string

**message** string

```json
{
  "jobStatus": {
    "jobId": "string",
    "did": "string",
    "state": "JOB_STATE_COMPLETED",
    "progress": 0,
    "blob": "string",
    "error": "string",
    "message": "string"
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

jobId — queryrequired

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**

---

## app.bsky.video.get.upload.limits

Source: https://docs.bsky.app/docs/api/app-bsky-video-get-upload-limits

# app.bsky.video.getUploadLimits

```
GET /xrpc/app.bsky.video.getUploadLimits
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Get video upload limits for the authenticated user.

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-video-get-upload-limits\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**canUpload** booleanrequired

**remainingDailyVideos** integer

**remainingDailyBytes** integer

**message** string

**error** string

```json
{
  "canUpload": true,
  "remainingDailyVideos": 0,
  "remainingDailyBytes": 0,
  "message": "string",
  "error": "string"
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

## app.bsky.video.upload.video

Source: https://docs.bsky.app/docs/api/app-bsky-video-upload-video

# app.bsky.video.uploadVideo

```
POST /xrpc/app.bsky.video.uploadVideo
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Upload a video to be processed then stored on the PDS.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-video-upload-video\#request "Direct link to Request")

- video/mp4

### Body **required**

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-video-upload-video\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**jobStatus** objectrequired

**jobId** stringrequired

**did** didrequired

**state** stringrequired

The state of the video processing job. All values not listed as a known value indicate that the job is in process.

**Possible values:** \[`JOB_STATE_COMPLETED`, `JOB_STATE_FAILED`\]

**progress** integer

**Possible values:**`<= 100`

**blob** binary

**error** string

**message** string

```json
{
  "jobStatus": {
    "jobId": "string",
    "did": "string",
    "state": "JOB_STATE_COMPLETED",
    "progress": 0,
    "blob": "string",
    "error": "string",
    "message": "string"
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

```plaintext

```

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**

---

