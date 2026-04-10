---
name: bluesky-api-reference
description: Bluesky (AT Protocol) API reference lookup and answering. Use this skill whenever the user asks about Bluesky API endpoints, AT Protocol XRPC methods, app.bsky.* APIs, chat.bsky.* APIs, or needs to understand how to call specific Bluesky API methods — even if they don't explicitly say "Bluesky API" and instead mention AT Proto, Bsky, Blue Sky, or XRPC endpoints. Also trigger when the user is building a Bluesky bot, client, or integration and needs API details.
---

Bluesky API reference for looking up endpoint specifications, request/response schemas, and authentication requirements.

## When to Use

- User asks about a specific Bluesky API endpoint (e.g., "How do I get a user's timeline?")
- User needs request/response schema details for an AT Protocol XRPC method
- User is building a Bluesky integration and needs API specifics
- User asks about authentication requirements for Bluesky endpoints

## API Overview

Bluesky's API is built on AT Protocol's XRPC framework. Endpoints follow the naming convention:

```
{namespace}.{collection}.{method}
```

- **app.bsky.\*** — Bluesky application APIs (feed, graph, actor, notification, etc.)
- **chat.bsky.\*** — Chat/DM APIs
- **com.atproto.\*** — AT Protocol core APIs (repo, sync, identity, server)

### Base URLs

- Public endpoints: `https://public.api.bsky.app`
- Authenticated: proxied via user's PDS with service proxy headers

### Authentication

- Public endpoints: no auth required
- Authenticated endpoints: Bearer token in Authorization header

## Endpoint Categories

When asked about an endpoint, read the appropriate reference file. Use the table below to find the right file.

| Category | Reference File | Key Endpoints |
|---|---|---|
| Actor (profiles, search, preferences) | `references/actor/` directory (7 files) | getProfile, searchActors, getPreferences |
| Feed (timeline, posts, likes, search) | `references/feed/` directory (18 files) | getTimeline, searchPosts, getLikes, getPostThread |
| Graph (follows, lists, mutes, blocks) | `references/graph/` directory (23 files) | getFollows, getFollowers, getLists, muteActor |
| Notification | `references/notification.md` | listNotifications, registerPush, updateSeen |
| Chat/DM | `references/chat-convo/` directory (17 files) | sendMessage, listConvos, getMessages |
| Chat/Actor | `references/chat-actor.md` | deleteAccount, exportAccountData |
| Bookmark | `references/bookmark.md` | createBookmark, getBookmarks |
| Draft | `references/draft.md` | createDraft, getDrafts, updateDraft |
| Contact | `references/contact.md` | importContacts, getMatches |
| Labeler | `references/labeler.md` | getServices |
| Video | `references/video.md` | uploadVideo, getJobStatus |
| Age Assurance | `references/ageassurance.md` | begin, getConfig, getState |
| AT Protocol Core | `references/at-protocol.md` | XRPC API overview |

## How to Look Up an Endpoint

1. Parse the user's question to identify the relevant API category
2. Map the category to the reference file using the table above
3. For directory-based categories (actor, feed, graph, chat-convo), each endpoint is a separate file named by its dotted path (e.g., `app.bsky.feed.getTimeline` → `app_bsky_feed_get_timeline.md`)
4. Read the relevant file and extract the information the user needs

### Example Mappings

| User Question | Category | File to Read |
|---|---|---|
| "How to get a user's timeline?" | Feed | `references/feed/app_bsky_feed_get_timeline.md` |
| "Search for posts containing X" | Feed | `references/feed/app_bsky_feed_search_posts.md` |
| "Get someone's followers" | Graph | `references/graph/app_bsky_graph_get_followers.md` |
| "Send a DM" | Chat | `references/chat-convo/chat_bsky_convo_send_message.md` |
| "What are the notification APIs?" | Notification | `references/notification.md` |

## Common API Patterns

### Pagination

Most list endpoints use cursor-based pagination with `cursor` and `limit` parameters:

```
GET /xrpc/app.bsky.feed.getTimeline?cursor=xxx&limit=50
```

Response includes `cursor` field for the next page.

### Record Keys

Records are identified by AT URI: `at://{did}/{collection}/{rkey}`

- `did` — Decentralized Identifier of the repo owner
- `collection` — Lexicon namespace (e.g., `app.bsky.feed.post`)
- `rkey` — Record key (unique within collection)

### Date/Time

All timestamps use ISO 8601 format with timezone (e.g., `2024-01-15T10:30:00.000Z`).

## Limitations

This reference covers the HTTP XRPC API endpoints only. For:
- Lexicon schemas and type definitions: see https://atproto.com
- Client SDK documentation: see the respective SDK repos
- Firehose/event streaming: see the AT Protocol documentation

The reference data was crawled from https://docs.bsky.app on 2026-04-10. For the latest updates, check the official documentation directly.