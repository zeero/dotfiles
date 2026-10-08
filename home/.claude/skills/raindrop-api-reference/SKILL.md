---
name: raindrop-api-reference
description: Raindrop.io REST API reference. Use for bookmarks (raindrops), collections, highlights, tags, filters, user, import/export/backups endpoints, OAuth authentication, or building Raindrop.io integrations/bots.
---

Raindrop.io API reference for looking up endpoint specifications, request/response fields, and authentication requirements.

## When to Use

- User asks about a specific Raindrop.io API endpoint (e.g., "How do I create a raindrop?")
- User needs request body / query parameter details for a bookmark, collection, highlight, or tag operation
- User is building a Raindrop.io integration and needs API specifics
- User asks about OAuth authentication or access token handling for Raindrop.io

## API Overview

Raindrop.io is a bookmark manager. In the API, bookmarks are called **raindrops** and are organized into **collections**.

### Base URL

```
https://api.raindrop.io/rest/v1
```

### Format

- Non-POST requests: url-encoded values
- POST/PUT requests: JSON body with `Content-Type: application/json`
- HTTP verbs: `GET` (retrieve), `POST` (create), `PUT` (update / custom actions), `DELETE` (delete)

### Authentication

All calls require OAuth 2.0. Register an app at `https://app.raindrop.io/settings/integrations`, obtain an access token, then send it as `Authorization: Bearer <token>`. See `references/v1-authentication.md`, `references/v1-authentication-token.md`, and `references/v1-authentication-calls.md`.

## Endpoint Categories

When asked about an endpoint, read the appropriate reference file. Reference files are the official documentation pages saved as Markdown (filenames mirror the doc URL path).

| Category | Reference File | Key Endpoints / Content |
|---|---|---|
| Overview | `references/readme.md` | API format, HTTP verbs, versioning |
| Authentication | `references/v1-authentication.md`, `v1-authentication-token.md`, `v1-authentication-calls.md` | OAuth flow, obtain/refresh token, authorized calls |
| Collections (data model) | `references/v1-collections.md` | Collection fields, system collections (-1 Unsorted, -99 Trash) |
| Collection methods | `references/v1-collections-methods.md` | Get/Create/Update/Remove, reorder, merge, expand/collapse |
| Nested structure | `references/v1-collections-nested-structure.md` | Parent/child collection hierarchy |
| Sharing | `references/v1-collections-sharing.md` | Share, collaborators, access levels, invitations |
| Covers/icons | `references/v1-collections-covers-icons.md` | Search cover/icon images |
| Raindrops (data model) | `references/v1-raindrops.md` | Raindrop fields, types |
| Single raindrop | `references/v1-raindrops-single.md` | Get/Create/Update/Remove, upload file/cover, permanent copy, suggestions |
| Multiple raindrops | `references/v1-raindrops-multiple.md` | Get/Create many/Update many/Remove many (with search params) |
| Highlights | `references/v1-highlights.md` | Get/Add/Update/Remove highlights |
| User (data model) | `references/v1-user.md` | User fields, config, groups |
| Authenticated user | `references/v1-user-authenticated.md` | Get/Update user, connect/disconnect social accounts |
| Tags | `references/v1-tags.md` | Get/Rename/Merge/Remove tags |
| Filters | `references/v1-filters.md` | Get filters (counts by tag, type, etc.) |
| Import | `references/v1-import.md` | Parse URL, check URL existence, parse HTML import file |
| Export | `references/v1-export.md` | Export raindrops in a format |
| Backups | `references/v1-backups.md` | Get all / download / generate backup |
| MCP Server | `references/mcp-mcp.md` | Official Raindrop MCP server endpoint, auth, client config |
| Changelog | `references/more-changelog.md` | API changes |

## How to Look Up an Endpoint

1. Parse the user's question to identify the relevant category (raindrops, collections, highlights, tags, etc.)
2. Map it to the reference file using the table above — note the split between **data model** pages (fields/schema, e.g. `v1-raindrops.md`) and **methods** pages (endpoints, e.g. `v1-raindrops-single.md`)
3. Read the file and extract the endpoint, parameters, and example the user needs

### Example Mappings

| User Question | File to Read |
|---|---|
| "How to create a bookmark?" | `references/v1-raindrops-single.md` (Create raindrop) |
| "Get raindrops in a collection with search" | `references/v1-raindrops-multiple.md` (Get raindrops) |
| "What fields does a raindrop have?" | `references/v1-raindrops.md` |
| "Create a nested collection" | `references/v1-collections-methods.md` + `v1-collections-nested-structure.md` |
| "How does OAuth work?" | `references/v1-authentication-token.md` |
| "Rename a tag across all bookmarks" | `references/v1-tags.md` (Rename tag) |

## Common API Patterns

### Collection IDs

- `0` — all collections (used in some endpoints)
- `-1` — Unsorted
- `-99` — Trash

### Pagination & Search (multiple raindrops)

`GET /raindrops/{collectionId}` supports `search`, `sort`, `page`, `perpage`, and `nested` query parameters. See `references/v1-raindrops-multiple.md` for the full search operator syntax.

### Nested Field Parsing

`POST /raindrop` accepts `pleaseParse: {}` (empty object) to auto-extract cover, description, and metadata in the background.

## Limitations

This reference covers the public REST API v1 endpoints as documented at https://developer.raindrop.io. For:
- Official SDKs / libraries: check the Raindrop.io developer portal
- The MCP server integration: see `references/mcp-mcp.md`

The reference data was fetched from the official Markdown docs (`developer.raindrop.io/*.md`) on 2026-07-06. For the latest updates, check the official documentation directly.
