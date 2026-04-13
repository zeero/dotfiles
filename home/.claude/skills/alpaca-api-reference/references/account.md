# Alpaca Trading API: Account

Source: https://docs.alpaca.markets/reference/gettradingaccount

## GET /v2/account

Get trading account details.

Base URL: `https://paper-api.alpaca.markets/v2/account`

No parameters required.

### Example Request

```shell
curl --request GET \
  --url https://paper-api.alpaca.markets/v2/account \
  --header 'accept: application/json' \
  --header 'APCA-API-KEY-ID: YOUR_KEY' \
  --header 'APCA-API-SECRET-KEY: YOUR_SECRET'
```

### Response: Account object

| Field | Type | Description |
|---|---|---|
| `id` | UUID | Account ID |
| `account_number` | string | Human-readable account number |
| `status` | string | Account status (e.g. `ACTIVE`) |
| `currency` | string | `USD` |
| `cash` | string | Cash balance |
| `portfolio_value` | string | Total portfolio value (cash + positions) |
| `non_marginable_buying_power` | string | Buying power without margin |
| `buying_power` | string | Available buying power |
| `regt_buying_power` | string | Reg T margin buying power |
| `daytrading_buying_power` | string | Day trading buying power |
| `equity` | string | Equity (portfolio value) |
| `last_equity` | string | Equity at previous close |
| `long_market_value` | string | Market value of long positions |
| `short_market_value` | string | Market value of short positions |
| `initial_margin` | string | Initial margin requirement |
| `maintenance_margin` | string | Maintenance margin requirement |
| `last_maintenance_margin` | string | Maintenance margin at previous close |
| `sma` | string | Special Memorandum Account balance |
| `daytrade_count` | integer | Number of day trades in rolling 5-business-day window |
| `pattern_day_trader` | boolean | Whether account is flagged as pattern day trader |
| `trading_blocked` | boolean | Whether trading is blocked |
| `transfers_blocked` | boolean | Whether transfers are blocked |
| `account_blocked` | boolean | Whether account is blocked |
| `shorting_enabled` | boolean | Whether shorting is enabled |
| `multiplier` | string | Margin multiplier (`1` or `2`) |
| `created_at` | string | Account creation timestamp |

### Pattern Day Trading (PDT) Rule

- Flagged as PDT if 4+ day trades in rolling 5-business-day window with account < $25,000
- `daytrade_count` tracks this. Once flagged, day trading requires $25,000+ equity

## Broker API: GET /v1/trading/accounts/{account_id}/account

For broker API, account_id is a UUID path parameter.

Base URL: `https://broker-api.sandbox.alpaca.markets/v1/trading/accounts/{account_id}/account`
