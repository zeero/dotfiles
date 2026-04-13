# Alpaca Trading API: Positions

Source: https://docs.alpaca.markets/reference/getallopenpositions

## GET /v2/positions

List all open positions.

Base URL: `https://paper-api.alpaca.markets/v2/positions`

No query parameters required.

### Example Request

```shell
curl --request GET \
  --url https://paper-api.alpaca.markets/v2/positions \
  --header 'accept: application/json' \
  --header 'APCA-API-KEY-ID: YOUR_KEY' \
  --header 'APCA-API-SECRET-KEY: YOUR_SECRET'
```

### Response: Array of Position objects

| Field | Type | Description |
|---|---|---|
| `asset_id` | UUID | Asset ID |
| `symbol` | string | Symbol (e.g. `AAPL`) |
| `exchange` | string | Exchange where asset is traded |
| `asset_class` | string | `us_equity`, `crypto`, etc. |
| `avg_entry_price` | string | Average entry price |
| `qty` | string | Total quantity |
| `qty_available` | string | Quantity available for trading |
| `side` | string | `long` or `short` |
| `market_value` | string | Total market value |
| `cost_basis` | string | Total cost basis |
| `unrealized_pl` | string | Unrealized P&L |
| `unrealized_plpc` | string | Unrealized P&L percentage |
| `unrealized_intraday_pl` | string | Intraday unrealized P&L |
| `unrealized_intraday_plpc` | string | Intraday P&L percentage |
| `current_price` | string | Current asset price |
| `lastday_price` | string | Previous close price |
| `change_today` | string | Price change today |

---

## GET /v2/positions/{symbol_or_asset_id}

Get position for a specific symbol.

```shell
curl https://paper-api.alpaca.markets/v2/positions/AAPL
```

---

## DELETE /v2/positions/{symbol_or_asset_id}

Close (liquidate) a position.

Query parameters:

| Parameter | Type | Description |
|---|---|---|
| `qty` | string | Quantity to liquidate (fractional supported) |
| `percentage` | string | Percentage of position to liquidate (e.g. `0.5` for 50%) |

```shell
curl --request DELETE \
  --url 'https://paper-api.alpaca.markets/v2/positions/AAPL?percentage=1.0'
```

---

## DELETE /v2/positions

Close all positions.

Query parameters:

| Parameter | Type | Default | Description |
|---|---|---|---|
| `cancel_orders` | boolean | false | Cancel open orders before closing positions |

```shell
curl --request DELETE \
  --url 'https://paper-api.alpaca.markets/v2/positions?cancel_orders=true'
```
