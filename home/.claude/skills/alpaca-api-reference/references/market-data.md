# Alpaca Market Data API

Source: https://docs.alpaca.markets/docs/about-market-data-api

## Overview

Provides historical and real-time market data via REST (HTTP) and WebSocket.
Base URL: `https://data.alpaca.markets`

## Subscription Plans

### Trading API Users (individual traders)

| Plan | Cost | Coverage |
|---|---|---|
| **Basic** | Free | Equities: IEX only (~2.5% market volume); Options: indicative feed |
| **Algo Trader Plus** | Paid | Complete US market coverage (SIP), full options data |

### Broker API Users (businesses)

Separate subscription tiers for broker partners.

## Data Sources (feed parameter)

| Feed | Description |
|---|---|
| `iex` | IEX (Investors Exchange). Single US exchange, ~2.5% market volume. **Free (no subscription required)** |
| `sip` | Securities Information Processor. All US exchanges (UTP for Nasdaq, CTA for NYSE). 100% market volume coverage. Ultra-low latency. |
| `boats` | Blue Ocean ATS. Extended hours (US evening trading). |
| `overnight` | Alpaca's derived feed from BOATS. Cheaper alternative; trades 15 min delayed. |
| `otc` | Over-the-counter exchanges |

## Endpoints

### Stock Data

| Method | Path | Description |
|---|---|---|
| GET | `/v2/stocks/bars` | Historical bars, multi-symbol |
| GET | `/v2/stocks/{symbol}/bars` | Historical bars, single symbol |
| GET | `/v2/stocks/latest/bars` | Latest bar for symbols |
| GET | `/v2/stocks/trades` | Historical trades, multi-symbol |
| GET | `/v2/stocks/{symbol}/trades` | Historical trades, single symbol |
| GET | `/v2/stocks/quotes` | Historical quotes |
| GET | `/v2/stocks/snapshots` | Latest snapshot (bar, trade, quote) |
| GET | `/v2/stocks/{symbol}/snapshot` | Snapshot for single symbol |

### Crypto Data

| Method | Path | Description |
|---|---|---|
| GET | `/v2/crypto/bars` | Crypto historical bars |
| GET | `/v2/crypto/{symbol}/bars` | Single crypto pair bars |
| GET | `/v2/crypto/latest/bars` | Latest bars |
| GET | `/v2/crypto/quotes` | Historical quotes |
| GET | `/v2/crypto/trades` | Historical trades |

### Options Data

| Method | Path | Description |
|---|---|---|
| GET | `/v2/options/trades` | Options trades |
| GET | `/v2/options/snapshots` | Options snapshots |

## SDK Examples

### Python: Crypto bars (no auth needed)

```python
from alpaca.data.historical import CryptoHistoricalDataClient
from alpaca.data.requests import CryptoBarsRequest
from alpaca.data.timeframe import TimeFrame
from datetime import datetime

client = CryptoHistoricalDataClient()

request = CryptoBarsRequest(
    symbol_or_symbols=["BTC/USD"],
    timeframe=TimeFrame.Day,
    start=datetime(2022, 9, 1),
    end=datetime(2022, 9, 7)
)

bars = client.get_crypto_bars(request)
df = bars.df
```

### Python: Stock bars (auth required)

```python
from alpaca.data.historical import StockHistoricalDataClient
from alpaca.data.requests import StockBarsRequest
from alpaca.data.timeframe import TimeFrame

client = StockHistoricalDataClient(
    api_key="YOUR_API_KEY",
    secret_key="YOUR_API_SECRET"
)

request = StockBarsRequest(
    symbol_or_symbols=["AAPL", "TSLA"],
    timeframe=TimeFrame.Hour,
    start=datetime(2024, 1, 1)
)

bars = client.get_stock_bars(request)
```

### Go: Crypto bars

```go
package main

import (
    "fmt"
    "time"
    "github.com/alpacahq/alpaca-trade-api-go/v3/marketdata"
)

func main() {
    client := marketdata.NewClient(marketdata.ClientOpts{})
    
    request := marketdata.GetCryptoBarsRequest{
        TimeFrame: marketdata.OneDay,
        Start:     time.Date(2022, 9, 1, 0, 0, 0, 0, time.UTC),
        End:       time.Date(2022, 9, 7, 0, 0, 0, 0, time.UTC),
    }
    
    bars, err := client.GetCryptoBars("BTC/USD", request)
    if err != nil {
        panic(err)
    }
    for _, bar := range bars {
        fmt.Printf("%+v\n", bar)
    }
}
```

## Bar Response Fields

| Field | Description |
|---|---|
| `t` | Timestamp (RFC-3339) |
| `o` | Open price |
| `h` | High price |
| `l` | Low price |
| `c` | Close price |
| `v` | Volume |
| `n` | Trade count |
| `vw` | Volume-weighted average price (VWAP) |
