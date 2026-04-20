---
name: alpaca-api-reference
description: Alpaca Markets API reference. Use for trading/market data/broker API, orders, positions, account management, or building Alpaca-based bots/apps.
---

Alpaca API reference for looking up endpoint specifications, request/response schemas, authentication, order types, and market data access.

## When to Use

- User asks about a specific Alpaca API endpoint
- User needs to know how to place orders, check positions, or access market data
- User is building a trading bot or algorithmic trading system with Alpaca
- User asks about order types, time-in-force values, or order lifecycle
- User needs authentication or SDK setup guidance

## API Overview

Alpaca offers API-first trading solutions. Three main APIs:

- **Trading API** — For individual traders: place orders, manage positions, get account info
- **Broker API** — For businesses building trading apps on Alpaca's infrastructure
- **Market Data API** — Historical and real-time market data for stocks, crypto, options

### Base URLs

| Environment | Trading API | Market Data API |
|---|---|---|
| Live | `https://api.alpaca.markets` | `https://data.alpaca.markets` |
| Paper (test) | `https://paper-api.alpaca.markets` | `https://data.alpaca.markets` |
| Broker sandbox | `https://broker-api.sandbox.alpaca.markets/v1` | — |

### Authentication

All requests require API key authentication via headers:

```
APCA-API-KEY-ID: {API_KEY}
APCA-API-SECRET-KEY: {API_SECRET}
```

Or as Basic Auth. Get keys from [Alpaca Dashboard](https://app.alpaca.markets/brokerage/dashboard/overview).

### SDKs

| Language | Install |
|---|---|
| Python | `pip install alpaca-py` |
| Go | `go get -u github.com/alpacahq/alpaca-trade-api-go/v3/alpaca` |
| JavaScript | `npm install --save @alpacahq/alpaca-trade-api` |
| C# | `dotnet add package Alpaca.Markets` |

### Request IDs

All endpoints return `X-Request-ID` in response headers. Persist this for support requests.

## Reference Files

When asked about a specific topic, read the appropriate reference file:

| Topic | Reference File | Contents |
|---|---|---|
| Getting started, auth, SDK setup | `references/getting-started.md` | Overview, quickstart, SDK examples |
| Orders (place, cancel, types) | `references/trading-orders.md` | Order types, TIF, lifecycle, bracket orders |
| Positions | `references/positions.md` | GET /v2/positions endpoint |
| Account | `references/account.md` | GET /v2/account endpoint |
| Stock historical bars | `references/market-data-stock-bars.md` | GET /v2/stocks/bars parameters |
| Market data overview | `references/market-data.md` | Subscription plans, data sources, SDK examples |

## Common API Endpoints

### Trading API (paper: `https://paper-api.alpaca.markets`)

| Method | Path | Description |
|---|---|---|
| GET | `/v2/account` | Get account details, buying power, equity |
| GET | `/v2/orders` | List orders (query: status, symbols, limit, etc.) |
| POST | `/v2/orders` | Place an order |
| DELETE | `/v2/orders/{order_id}` | Cancel an order |
| GET | `/v2/positions` | List all open positions |
| GET | `/v2/positions/{symbol}` | Get position for a symbol |
| DELETE | `/v2/positions/{symbol}` | Close a position |

### Market Data API (`https://data.alpaca.markets`)

| Method | Path | Description |
|---|---|---|
| GET | `/v2/stocks/bars` | Historical stock OHLCV bars (multi-symbol) |
| GET | `/v2/stocks/{symbol}/bars` | Historical bars for single symbol |
| GET | `/v2/stocks/trades` | Historical trades |
| GET | `/v2/stocks/quotes` | Historical quotes |
| GET | `/v2/stocks/snapshots` | Latest snapshot for symbols |
| GET | `/v2/crypto/bars` | Crypto historical bars |

## How to Look Up an Endpoint

1. Identify the topic from the user's question
2. Map to the reference file using the table above
3. Read the file and extract the relevant details
4. If the file doesn't cover it, check `https://docs.alpaca.markets/reference`

Source: https://docs.alpaca.markets/ (crawled 2026-04-13)
