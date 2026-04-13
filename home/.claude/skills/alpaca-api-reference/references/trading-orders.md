# Alpaca Trading API: Orders

Source: https://docs.alpaca.markets/docs/orders-at-alpaca

## Place an Order

```
POST /v2/orders
```

### Request Body

| Field | Type | Description |
|---|---|---|
| `symbol` | string | required. Stock symbol or crypto pair (e.g. `AAPL`, `BTC/USD`) |
| `qty` | string | Number of shares. Mutually exclusive with `notional` |
| `notional` | string | Dollar amount. Mutually exclusive with `qty` |
| `side` | string | `buy` or `sell` |
| `type` | string | `market`, `limit`, `stop`, `stop_limit`, `trailing_stop` |
| `time_in_force` | string | `day`, `gtc`, `opg`, `cls`, `ioc`, `fok` |
| `limit_price` | string | Required for `limit` and `stop_limit` orders |
| `stop_price` | string | Required for `stop` and `stop_limit` orders |
| `trail_price` | string | Dollar trail for `trailing_stop` |
| `trail_percent` | string | Percent trail for `trailing_stop` |
| `extended_hours` | boolean | Allow execution in extended hours (limit orders, day/gtc only) |
| `client_order_id` | string | Client-provided unique ID |
| `order_class` | string | `simple`, `bracket`, `oco`, `oto` |
| `take_profit` | object | `{ limit_price: "..." }` for bracket/oto/oco |
| `stop_loss` | object | `{ stop_price: "...", limit_price: "..." }` for bracket/oto/oco |

### Example: Market Order

```json
{
  "symbol": "AAPL",
  "qty": "10",
  "side": "buy",
  "type": "market",
  "time_in_force": "day"
}
```

### Example: Limit Order

```json
{
  "symbol": "AAPL",
  "qty": "10",
  "side": "buy",
  "type": "limit",
  "time_in_force": "gtc",
  "limit_price": "150.00"
}
```

### Example: Bracket Order

```json
{
  "symbol": "SPY",
  "qty": "100",
  "side": "buy",
  "type": "market",
  "time_in_force": "gtc",
  "order_class": "bracket",
  "take_profit": { "limit_price": "301" },
  "stop_loss": { "stop_price": "299", "limit_price": "298.5" }
}
```

### Example: Trailing Stop Order

```json
{
  "symbol": "SPY",
  "qty": "100",
  "side": "sell",
  "type": "trailing_stop",
  "time_in_force": "day",
  "trail_price": "6.15"
}
```

## List Orders

```
GET /v2/orders
```

Query parameters:

| Parameter | Type | Default | Description |
|---|---|---|---|
| `status` | string | `open` | `open`, `closed`, or `all` |
| `limit` | integer | 50 | Max 500 |
| `after` | string | — | Only orders submitted after this timestamp (exclusive) |
| `until` | string | — | Only orders submitted until this timestamp (exclusive) |
| `direction` | string | `desc` | `asc` or `desc` |
| `nested` | boolean | — | Roll up multi-leg orders under `legs` field |
| `symbols` | string | — | Comma-separated symbols (e.g. `AAPL,TSLA`) |
| `side` | string | — | Filter by `buy` or `sell` |
| `asset_class` | array | — | Filter by asset class (e.g. `us_option`) |
| `before_order_id` | string | — | Return orders before this ID (exclusive) |
| `after_order_id` | string | — | Return orders after this ID (exclusive) |

## Order Types

### Market Order
Fills at current market price immediately. No price guarantee.

### Limit Order
Fills at specified price or better.
- Buy limit: executes at limit price or **lower**
- Sell limit: executes at limit price or **higher**
- Sub-penny: max 2 decimals for price ≥$1.00, max 4 decimals for price <$1.00

### Stop (Market) Order
Triggers a market order when stop price is reached.
- Elected on consolidated print at or through stop price

### Stop Limit Order
Triggers a limit order when stop price is reached.

### Bracket Order
Chain of 3 orders: entry + take-profit (limit) + stop-loss (stop or stop-limit).
- Requirements: `time_in_force` must be `day` or `gtc`; no extended hours
- `take_profit.limit_price` must be higher than `stop_loss.stop_price` (for buy bracket)
- Both `take_profit.limit_price` and `stop_loss.stop_price` required

### Trailing Stop Order
Stop price automatically adjusts based on price movement.
- `trail_price`: dollar offset from high water mark
- `trail_percent`: percent offset from high water mark
- Valid TIF: `day` or `gtc`
- Does not trigger outside regular market hours

## Time in Force

| Value | Description |
|---|---|
| `day` | Valid only on the day placed. Canceled after closing auction if unfilled. |
| `gtc` | Good Till Canceled. Auto-cancels after 90 days (aged order policy). |
| `opg` | Market/Limit on Open (MOO/LOO). Executes only in opening auction. |
| `cls` | Market/Limit on Close (MOC/LOC). Executes only in closing auction. |
| `ioc` | Immediate or Cancel. Fill all or part immediately; rest is canceled. |
| `fok` | Fill or Kill. Fill entire order immediately or cancel entirely. |

### TIF Support Matrix (Equities)

| TIF | Market | Limit | Stop | Stop Limit |
|---|---|---|---|---|
| GTC | ✓ | ✓ | ✓ | ✓ |
| DAY | ✓ | ✓ | ✓ | ✓ |
| IOC | ✓* | ✓* | — | — |
| FOK | ✓* | ✓* | — | — |
| OPG | ✓* | ✓* | — | — |
| CLS | ✓* | ✓* | — | — |

*Contact sales team

### Crypto TIF Support

| TIF | Market | Limit | Stop Limit |
|---|---|---|---|
| GTC | ✓ | ✓ | ✓ |
| IOC | ✓ | ✓ | — |
| DAY | — | ✓ | — |

Crypto does NOT support: `opg`, `fok`, `cls`

## Extended Hours Trading

To enable: set `extended_hours: true` in order request.

- Requirements: `type` must be `limit`, `time_in_force` must be `day` or `gtc`
- Hours:
  - Overnight: 8:00pm - 4:00am ET (Sun-Fri)
  - Pre-market: 4:00am - 9:30am ET (Mon-Fri)
  - After-hours: 4:00pm - 8:00pm ET (Mon-Fri)

## Order Lifecycle / Status

| Status | Description |
|---|---|
| `new` | Received and routed to exchanges |
| `partially_filled` | Partially executed |
| `filled` | Completely filled |
| `done_for_day` | Done for the day |
| `canceled` | Canceled (by user or exchange) |
| `expired` | Expired per TIF |
| `replaced` | Replaced by another order |
| `pending_cancel` | Waiting to be canceled |
| `pending_replace` | Waiting to be replaced |

Can cancel an order until it reaches `filled`, `canceled`, or `expired`.

## Buying Power

- Available buying power reduced by open buy long and sell short orders
- Sell long and buy-to-cover orders do NOT replenish buying power until executed
- Short sell order value = MAX(limit price, 3% above current ask) × qty
