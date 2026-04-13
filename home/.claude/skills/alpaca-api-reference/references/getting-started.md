# Alpaca API Getting Started

Source: https://docs.alpaca.markets/docs/getting-started

## Overview

Alpaca offers API-first trading solutions:

- **Trading API** — Stock trading for individuals and business accounts (retail, algo, proprietary traders)
- **Broker API** — Build trading apps and brokerage services for end users (trading apps, challenger banks)
- **Market Data API** — Real-time and historical data for stocks and crypto (6+ years of history)
- **Connect API** — OAuth2 for letting Alpaca brokerage account holders connect to your app

## Paper Trading

Free simulation environment for testing. Available to all users. Uses real-time market data.

- Paper trading base URL: `https://paper-api.alpaca.markets`

## Authentication

### API Key Auth (headers)

```
APCA-API-KEY-ID: YOUR_API_KEY_ID
APCA-API-SECRET-KEY: YOUR_API_SECRET_KEY
```

### Generate Keys

Go to [Alpaca Dashboard](https://app.alpaca.markets/brokerage/dashboard/overview) → API Keys section → Generate New Keys.

## SDK Installation

```python
pip install alpaca-py
```

```go
go get -u github.com/alpacahq/alpaca-trade-api-go/v3/alpaca
```

```javascript
npm install --save @alpacahq/alpaca-trade-api
```

```csharp
dotnet add package Alpaca.Markets
```

## Market Data SDK Quick Start (Python)

### Crypto historical bars (no API key required)

```python
from alpaca.data.historical import CryptoHistoricalDataClient
from alpaca.data.requests import CryptoBarsRequest
from alpaca.data.timeframe import TimeFrame
from datetime import datetime

client = CryptoHistoricalDataClient()

request_params = CryptoBarsRequest(
    symbol_or_symbols=["BTC/USD"],
    timeframe=TimeFrame.Day,
    start=datetime(2022, 9, 1),
    end=datetime(2022, 9, 7)
)

btc_bars = client.get_crypto_bars(request_params)
btc_bars.df  # Returns pandas DataFrame
```

### Stock historical bars (API key required)

```python
from alpaca.data.historical import StockHistoricalDataClient
from alpaca.data.requests import StockBarsRequest
from alpaca.data.timeframe import TimeFrame

client = StockHistoricalDataClient(api_key="YOUR_KEY", secret_key="YOUR_SECRET")

request = StockBarsRequest(
    symbol_or_symbols=["AAPL", "MSFT"],
    timeframe=TimeFrame.Day,
    start=datetime(2024, 1, 1),
    end=datetime(2024, 1, 31)
)

bars = client.get_stock_bars(request)
```

## Request ID

All endpoints return `X-Request-ID` in response headers. Save this value for support requests — it cannot be queried later.

```shell
$ curl -v https://paper-api.alpaca.markets/v2/account
...
< X-Request-ID: 649c5a79da1ab9cb20742ffdada0a7bb
```
