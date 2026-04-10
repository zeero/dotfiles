# chat.bsky.convo.delete.message.for.self

Source: https://docs.bsky.app/docs/api/chat-bsky-convo-delete-message-for-self

# chat.bsky.convo.deleteMessageForSelf

```
POST /xrpc/chat.bsky.convo.deleteMessageForSelf
```

_This endpoint is part of the Bluesky Chat (DMs) APIs. Requests usually require authentication, are directed to the user's PDS instance, and proxied to the single central chat service by setting the appropriate service DID (`did:web:api.bsky.chat`) in the service proxying header._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

## Request [​](https://docs.bsky.app/docs/api/chat-bsky-convo-delete-message-for-self\#request "Direct link to Request")

- application/json

### Body **required**

**convoId** stringrequired

**messageId** stringrequired

## Responses [​](https://docs.bsky.app/docs/api/chat-bsky-convo-delete-message-for-self\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**id** stringrequired

**rev** stringrequired

**sender** objectrequired

**did** didrequired

**sentAt** date-timerequired

```json
{
  "id": "string",
  "rev": "string",
  "sender": {
    "did": "string"
  },
  "sentAt": "2024-07-29T15:51:28.071Z"
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

  "convoId": "string",

  "messageId": "string"

}
```

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**