# app.bsky.feed.search.posts

Source: https://docs.bsky.app/docs/api/app-bsky-feed-search-posts

# app.bsky.feed.searchPosts

```
GET /xrpc/app.bsky.feed.searchPosts
```

_This endpoint is part of the Bluesky application Lexicon APIs (`app.bsky.*`). Public endpoints which don't require authentication can be made directly against the public Bluesky AppView API: [https://public.api.bsky.app](https://public.api.bsky.app/). Authenticated requests are usually proxied via the user's PDS, using service proxy headers. Authenticated requests can be used for both public and non-public endpoints._

_To learn more about calling atproto API endpoints like this one, see the [API Hosts and Auth](https://docs.bsky.app/docs/advanced-guides/api-directory) guide._

Find posts matching search criteria, returning views of those posts. Note that this API endpoint may require authentication (eg, not public) for some service providers and implementations.

## Request [​](https://docs.bsky.app/docs/api/app-bsky-feed-search-posts\#request "Direct link to Request")

### Query Parameters

**q** stringrequired

Search query string; syntax, phrase, boolean, and faceting is unspecified, but Lucene query syntax is recommended.

**sort** string

**Possible values:** \[`top`, `latest`\]

Specifies the ranking order of results.

**Default value:** `latest`

**since** string

Filter results for posts after the indicated datetime (inclusive). Expected to use 'sortAt' timestamp, which may not match 'createdAt'. Can be a datetime, or just an ISO date (YYYY-MM-DD).

**until** string

Filter results for posts before the indicated datetime (not inclusive). Expected to use 'sortAt' timestamp, which may not match 'createdAt'. Can be a datetime, or just an ISO date (YYY-MM-DD).

**mentions** at-identifier

Filter to posts which mention the given account. Handles are resolved to DID before query-time. Only matches rich-text facet mentions.

**author** at-identifier

Filter to posts by the given account. Handles are resolved to DID before query-time.

**lang** language

Filter to posts in the given language. Expected to be based on post language field, though server may override language detection.

**domain** string

Filter to posts with URLs (facet links or embeds) linking to the given domain (hostname). Server may apply hostname normalization.

**url** uri

Filter to posts with links (facet links or embeds) pointing to this URL. Server may apply URL normalization or fuzzy matching.

**tag** string\[\]

**Possible values:**`<= 640 characters`

Filter to posts with the given tag (hashtag), based on rich-text facet or tag field. Do not include the hash (#) prefix. Multiple tags can be specified, with 'AND' matching.

**limit** integer

**Possible values:**`>= 1` and `<= 100`

**Default value:** `25`

**cursor** string

Optional pagination mechanism; may not necessarily allow scrolling through entire result set.

## Responses [​](https://docs.bsky.app/docs/api/app-bsky-feed-search-posts\#responses "Direct link to Responses")

- 200
- 400
- 401

OK

- application/json

- Schema
- Example (auto)

**Schema**

**cursor** string

**hitsTotal** integer

**posts** app.bsky.feed.defs.postView\[\]required

```json
{
  "cursor": "string",
  "hitsTotal": 0,
  "posts": [\
    null\
  ]
}
```

Bad Request

- application/json

- Schema
- Example (auto)

**Schema**

**error** stringrequired

**Possible values:** \[`InvalidRequest`, `ExpiredToken`, `InvalidToken`, `BadQueryString`\]

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

q — queryrequired

Show optional parameters

sort — query

\-\-\-toplatest

since — query

until — query

mentions — query

author — query

lang — query

domain — query

url — query

tag — query

Add item

limit — query

cursor — query

Send API Request

ResponseClear

Click the `Send API Request` button above and see the response here!

reCAPTCHA

Recaptcha requires verification.

protected by **reCAPTCHA**