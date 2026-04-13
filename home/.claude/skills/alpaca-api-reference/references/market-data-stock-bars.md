# Alpaca Market Data: Stock Bars Endpoint

Source: https://docs.alpaca.markets/reference/stockbars

## GET /v2/stocks/bars

Multi-symbol historical OHLCV bars.

Base URL: `https://data.alpaca.markets/v2/stocks/bars`

### Query Parameters

| Parameter | Type | Required | Default | Description |
|---|---|---|---|---|
| `symbols` | string | ✓ | — | Comma-separated list of stock symbols |
| `timeframe` | string | ✓ | — | Bar aggregation interval (see below) |
| `start` | date-time | — | Beginning of current day | RFC-3339 or YYYY-MM-DD |
| `end` | date-time | — | Current time (or -15min without real-time) | RFC-3339 or YYYY-MM-DD |
| `limit` | integer | — | 1000 | Max 10000. Applies to total data points, not per symbol. |
| `adjustment` | string | — | `raw` | Price/volume adjustment (see below) |
| `feed` | string | — | `sip` | Data source: `sip`, `iex`, `boats`, `otc` |
| `currency` | string | — | `USD` | ISO 4217 currency code |
| `page_token` | string | — | — | Pagination cursor from previous response |
| `sort` | string | — | `asc` | `asc` or `desc` |
| `asof` | string | — | Today | YYYY-MM-DD. For looking up past symbols (e.g. FB→META) |

### Timeframe Values

| Format | Example | Description |
|---|---|---|
| `[1-59]Min` or `[1-59]T` | `5Min`, `5T` | Minute bars |
| `[1-23]Hour` or `[1-23]H` | `1Hour`, `4H` | Hour bars |
| `1Day` or `1D` | `1Day` | Daily bars |
| `1Week` or `1W` | `1Week` | Weekly bars |
| `[1,2,3,4,6,12]Month` or `[1,2,3,4,6,12]M` | `1Month`, `3M` | Monthly bars |

### Adjustment Values

| Value | Description |
|---|---|
| `raw` | No adjustments |
| `split` | Adjust for forward and reverse stock splits |
| `dividend` | Adjust for cash dividends |
| `spin-off` | Adjust for spin-offs |
| `all` | All adjustments |

Can combine: `split,spin-off`

### Example Request

```shell
curl --request GET \
  --url 'https://data.alpaca.markets/v2/stocks/bars?symbols=AAPL,MSFT&timeframe=1Day&start=2024-01-01&end=2024-01-31&limit=1000&adjustment=raw&feed=sip&sort=asc' \
  --header 'accept: application/json' \
  --header 'APCA-API-KEY-ID: YOUR_KEY' \
  --header 'APCA-API-SECRET-KEY: YOUR_SECRET'
```

### Response Structure

```json
{
  "bars": {
    "AAPL": [
      {
        "t": "2024-01-02T05:00:00Z",
        "o": 185.23,
        "h": 186.74,
        "l": 183.92,
        "c": 185.85,
        "v": 71628600,
        "n": 534291,
        "vw": 185.45
      }
    ]
  },
  "next_page_token": "..."
}
```

### Pagination

Always check `next_page_token` in response. Pass it as `page_token` in the next request to get more data.

### Response Codes

| Code | Meaning |
|---|---|
| 200 | OK |
| 400 | Invalid request parameter |
| 401 | Missing or invalid authentication |
| 403 | Forbidden resource |
| 429 | Rate limit exceeded (check `X-RateLimit-*` headers) |
| 500 | Internal server error (retry later) |

## GET /v2/stocks/{symbol}/bars

Single-symbol variant. Same parameters but `symbol` is in the path, not `symbols` in the query.

```shell
curl 'https://data.alpaca.markets/v2/stocks/AAPL/bars?timeframe=1Day&start=2024-01-01'
```

## GET /v2/stocks/latest/bars

Latest bar for one or more symbols.

```
GET /v2/stocks/latest/bars?symbols=AAPL,MSFT&feed=sip
```
