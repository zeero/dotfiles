# IG REST API - Prices

---

## Source: https://labs.ig.com/reference/prices-epic-dates-new.html

# /prices/{epic}/{resolution}/{startDate}/{endDate}

- [Version: 2](https://labs.ig.com/reference/prices-epic-dates-new.html#GET2)

## GET (version: 2)

Returns a list of historical prices for the given epic, resolution and date range.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | epic (String) | Instrumentepic |
| Path | resolution (Resolution) | Price resolution (SECOND, MINUTE, MINUTE\_2, MINUTE\_3, MINUTE\_5, MINUTE\_10, MINUTE\_15, MINUTE\_30, HOUR, HOUR\_2, HOUR\_3, HOUR\_4, DAY, WEEK, MONTH) |
| Path | startDate (String) | Start date (yyyy-MM-dd HH:mm:ss) |
| Path | endDate (String) | End date (yyyy-MM-dd HH:mm:ss). Must be later then the start date. |

Request

|     |     |
| --- | --- |
| List of prices

|     |     |
| --- | --- |

| allowance (Object) | Historical price data allowance

|     |     |
| --- | --- |
| allowanceExpiry (Number) | The number of seconds till the current allowance period will end and the remaining allowance field is reset |
| remainingAllowance (Number) | The number of data points still available to fetch within the current allowance period |
| totalAllowance (Number) | The number of data points the API key and account combination is allowed to fetch in any given allowance period | |
| instrumentType (Constant) | Instrument type

|     |     |
| --- | --- |
| BINARY |  |
| BUNGEE\_CAPPED |  |
| BUNGEE\_COMMODITIES |  |
| BUNGEE\_CURRENCIES |  |
| BUNGEE\_INDICES |  |
| COMMODITIES |  |
| CURRENCIES |  |
| INDICES |  |
| KNOCKOUTS\_COMMODITIES |  |
| KNOCKOUTS\_CURRENCIES |  |
| KNOCKOUTS\_INDICES |  |
| KNOCKOUTS\_SHARES |  |
| OPT\_COMMODITIES |  |
| OPT\_CURRENCIES |  |
| OPT\_INDICES |  |
| OPT\_RATES |  |
| OPT\_SHARES |  |
| RATES |  |
| SECTORS |  |
| SHARES |  |
| SPRINT\_MARKET |  |
| TEST\_MARKET |  |
| UNKNOWN |  | |
| prices (Array\[Object\]) | Historical marketprice snapshot

|     |     |
| --- | --- |
| closePrice (Object) | Price

|     |     |
| --- | --- |
| ask (Number) | Ask price |
| bid (Number) | Bidprice |
| lastTraded (Number) | Last traded price. This will generally be null for non exchange-traded instruments | |
| highPrice (Object) | Price

|     |     |
| --- | --- |
| ask (Number) | Ask price |
| bid (Number) | Bidprice |
| lastTraded (Number) | Last traded price. This will generally be null for non exchange-traded instruments | |
| lastTradedVolume (Number) | Last traded volume. This will generally be null for non exchange-traded instruments |
| lowPrice (Object) | Price

|     |     |
| --- | --- |
| ask (Number) | Ask price |
| bid (Number) | Bidprice |
| lastTraded (Number) | Last traded price. This will generally be null for non exchange-traded instruments | |
| openPrice (Object) | Price

|     |     |
| --- | --- |
| ask (Number) | Ask price |
| bid (Number) | Bidprice |
| lastTraded (Number) | Last traded price. This will generally be null for non exchange-traded instruments | |
| snapshotTime (String) | Snapshot local time, format is yyyy/MM/dd hh:mm:ss | | |

Response

| HTTP code | Description |
| --- | --- |
| 400 | |     |     |
| --- | --- |
| error.invalid.daterange | Invalid date range error | |
| 400 | |     |     |
| --- | --- |
| error.malformed.date | Invalid date format error | |
| 400 | |     |     |
| --- | --- |
| error.public-api.failure.encryption.required | A login has been attempted to the login V1 service by a client from the IG Singapore company. They need to use the v2 version as they need to send their passwords encrypyted. | |
| 400 | |     |     |
| --- | --- |
| error.request.invalid.date-range | Invalid date range | |
| 400 | |     |     |
| --- | --- |
| error.security.api-key-missing | The api key was not provided | |
| 400 | |     |     |
| --- | --- |
| error.unsupported.epic | Invalid EPIC error. Currently only major currency pairs instruments are supported | |
| 400 | |     |     |
| --- | --- |
| invalid.input | A generic input data error has occurred | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.kyc.required | The account is not allowed to log into public API. Please use the web platform. | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.missing.credentials | The user has not provided all required security credentials. | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.pending.agreements.required | The account is not allowed to log into public API. Please use the web platform. | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.preferred.account.disabled | The user's preferred account is disabled. | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.preferred.account.not.set | The user has not set a preferred account. | |
| 401 | |     |     |
| --- | --- |
| error.security.account-token-invalid | The service requires an account token and the one provided was not valid | |
| 401 | |     |     |
| --- | --- |
| error.security.account-token-missing | The service requires an account token and it was not provided | |
| 401 | |     |     |
| --- | --- |
| error.security.client-token-invalid | The service requires a client token and the one provided was not valid | |
| 401 | |     |     |
| --- | --- |
| error.security.client-token-missing | The service requires a client token and it was not provided | |
| 401 | |     |     |
| --- | --- |
| error.security.oauth-token-invalid | Invalid OAuth access token | |
| 403 | |     |     |
| --- | --- |
| endpoint.unavailable.for.api-key | The provided api key was not accepted | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-allowance | The account traffic allowance has been exceeded | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-historical-data-allowance | The account historical data traffic allowance has been exceeded | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-trading-allowance | The account trading traffic allowance has been exceeded | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-api-key-allowance | The api key traffic allowance has been exceeded | |
| 403 | |     |     |
| --- | --- |
| error.public-api.failure.stockbroking-not-supported | Stockbroking not supported for Public API users. | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-disabled | The provided api key was not accepted because it is not currently enabled | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-invalid | The provided api key was not accepted | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-restricted | The provided api key was not valid for the requesting account | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-revoked | The provided api key was not accepted because it has been revoked | |
| 403 | |     |     |
| --- | --- |
| unauthorised.access.to.equity.exception | Unauthorised access to equity data | |
| 404 | |     |     |
| --- | --- |
| invalid.url |  | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |

Exceptions

**70% of retail investor accounts lose money when trading spread bets and CFDs with this provider.**
Spread bets and CFDs are complex instruments and come with a high risk of losing money rapidly due to leverage.
You should consider whether you understand how spread bets and CFDs work, and whether you can afford to take the
high risk of losing your money.

---

## Source: https://labs.ig.com/reference/prices-epic-dates-old.html

# /prices/{epic}/{resolution}?startdate={startdate}&enddate={enddate}

- [Version: 1](https://labs.ig.com/reference/prices-epic-dates-old.html#GET1)

## GET (version: 1)

Returns a list of historical prices for the given epic, resolution and date range.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | epic (String) | Instrumentepic |
| Path | resolution (Resolution) | Price resolution (SECOND, MINUTE, MINUTE\_2, MINUTE\_3, MINUTE\_5, MINUTE\_10, MINUTE\_15, MINUTE\_30, HOUR, HOUR\_2, HOUR\_3, HOUR\_4, DAY, WEEK, MONTH) |
| Request (Mandatory) | startdate (String) | Start date (yyyy:MM:dd-HH:mm:ss) |
| Request (Mandatory) | enddate (String) | End date (yyyy:MM:dd-HH:mm:ss). Must be later then the start date. |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| List of prices |
| allowance (Object) | Historical price data allowance

|     |     |
| --- | --- |
| allowanceExpiry (Number) | The number of seconds till the current allowance period will end and the remaining allowance field is reset |
| remainingAllowance (Number) | The number of data points still available to fetch within the current allowance period |
| totalAllowance (Number) | The number of data points the API key and account combination is allowed to fetch in any given allowance period | |
| instrumentType (Constant) | Instrument type

|     |     |
| --- | --- |
| BINARY |  |
| BUNGEE\_CAPPED |  |
| BUNGEE\_COMMODITIES |  |
| BUNGEE\_CURRENCIES |  |
| BUNGEE\_INDICES |  |
| COMMODITIES |  |
| CURRENCIES |  |
| INDICES |  |
| KNOCKOUTS\_COMMODITIES |  |
| KNOCKOUTS\_CURRENCIES |  |
| KNOCKOUTS\_INDICES |  |
| KNOCKOUTS\_SHARES |  |
| OPT\_COMMODITIES |  |
| OPT\_CURRENCIES |  |
| OPT\_INDICES |  |
| OPT\_RATES |  |
| OPT\_SHARES |  |
| RATES |  |
| SECTORS |  |
| SHARES |  |
| SPRINT\_MARKET |  |
| TEST\_MARKET |  |
| UNKNOWN |  | |
| prices (Array\[Object\]) | Historical marketprice snapshot

|     |     |
| --- | --- |
| closePrice (Object) | Price

|     |     |
| --- | --- |
| ask (Number) | Ask price |
| bid (Number) | Bidprice |
| lastTraded (Number) | Last traded price. This will generally be null for non exchange-traded instruments | |
| highPrice (Object) | Price

|     |     |
| --- | --- |
| ask (Number) | Ask price |
| bid (Number) | Bidprice |
| lastTraded (Number) | Last traded price. This will generally be null for non exchange-traded instruments | |
| lastTradedVolume (Number) | Last traded volume. This will generally be 0 for non exchange-traded instruments |
| lowPrice (Object) | Price

|     |     |
| --- | --- |
| ask (Number) | Ask price |
| bid (Number) | Bidprice |
| lastTraded (Number) | Last traded price. This will generally be null for non exchange-traded instruments | |
| openPrice (Object) | Price

|     |     |
| --- | --- |
| ask (Number) | Ask price |
| bid (Number) | Bidprice |
| lastTraded (Number) | Last traded price. This will generally be null for non exchange-traded instruments | |
| snapshotTime (String) | Snapshot time | | |

Response

| HTTP code | Description |
| --- | --- |
| 400 | |     |     |
| --- | --- |
| error.invalid.daterange | Invalid date range error | |
| 400 | |     |     |
| --- | --- |
| error.malformed.date | Invalid date format error | |
| 400 | |     |     |
| --- | --- |
| error.public-api.failure.encryption.required | A login has been attempted to the login V1 service by a client from the IG Singapore company. They need to use the v2 version as they need to send their passwords encrypyted. | |
| 400 | |     |     |
| --- | --- |
| error.request.invalid.date-range | Invalid date range | |
| 400 | |     |     |
| --- | --- |
| error.security.api-key-missing | The api key was not provided | |
| 400 | |     |     |
| --- | --- |
| error.unsupported.epic | Invalid EPIC error. Currently only major currency pairs instruments are supported | |
| 400 | |     |     |
| --- | --- |
| invalid.input | A generic input data error has occurred | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.kyc.required | The account is not allowed to log into public API. Please use the web platform. | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.missing.credentials | The user has not provided all required security credentials. | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.pending.agreements.required | The account is not allowed to log into public API. Please use the web platform. | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.preferred.account.disabled | The user's preferred account is disabled. | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.preferred.account.not.set | The user has not set a preferred account. | |
| 401 | |     |     |
| --- | --- |
| error.security.account-token-invalid | The service requires an account token and the one provided was not valid | |
| 401 | |     |     |
| --- | --- |
| error.security.account-token-missing | The service requires an account token and it was not provided | |
| 401 | |     |     |
| --- | --- |
| error.security.client-token-invalid | The service requires a client token and the one provided was not valid | |
| 401 | |     |     |
| --- | --- |
| error.security.client-token-missing | The service requires a client token and it was not provided | |
| 401 | |     |     |
| --- | --- |
| error.security.oauth-token-invalid | Invalid OAuth access token | |
| 403 | |     |     |
| --- | --- |
| endpoint.unavailable.for.api-key | The provided api key was not accepted | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-allowance | The account traffic allowance has been exceeded | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-historical-data-allowance | The account historical data traffic allowance has been exceeded | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-trading-allowance | The account trading traffic allowance has been exceeded | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-api-key-allowance | The api key traffic allowance has been exceeded | |
| 403 | |     |     |
| --- | --- |
| error.public-api.failure.stockbroking-not-supported | Stockbroking not supported for Public API users. | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-disabled | The provided api key was not accepted because it is not currently enabled | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-invalid | The provided api key was not accepted | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-restricted | The provided api key was not valid for the requesting account | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-revoked | The provided api key was not accepted because it has been revoked | |
| 403 | |     |     |
| --- | --- |
| unauthorised.access.to.equity.exception | Unauthorised access to equity data | |
| 404 | |     |     |
| --- | --- |
| invalid.url |  | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |

Exceptions

**70% of retail investor accounts lose money when trading spread bets and CFDs with this provider.**
Spread bets and CFDs are complex instruments and come with a high risk of losing money rapidly due to leverage.
You should consider whether you understand how spread bets and CFDs work, and whether you can afford to take the
high risk of losing your money.

---

## Source: https://labs.ig.com/reference/prices-epic-resolution-numpoints.html

# /prices/{epic}/{resolution}/{numPoints}

- [Version: 2](https://labs.ig.com/reference/prices-epic-resolution-numpoints.html#GET2)
- [Version: 1](https://labs.ig.com/reference/prices-epic-resolution-numpoints.html#GET1)

## GET (version: 2)

Returns a list of historical prices for the given epic, resolution and number of data points.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | epic (String) | Instrument epic |
| Path | resolution (Resolution) | Price resolution (MINUTE, MINUTE\_2, MINUTE\_3, MINUTE\_5, MINUTE\_10, MINUTE\_15, MINUTE\_30, HOUR, HOUR\_2, HOUR\_3, HOUR\_4, DAY, WEEK, MONTH) |
| Path | numPoints (int) | Number of data points required |

Request

|     |     |
| --- | --- |
| List of prices

|     |     |
| --- | --- |

| allowance (Object) | Historical price data allowance

|     |     |
| --- | --- |
| allowanceExpiry (Number) | The number of seconds till the current allowance period will end and the remaining allowance field is reset |
| remainingAllowance (Number) | The number of data points still available to fetch within the current allowance period |
| totalAllowance (Number) | The number of data points the API key and account combination is allowed to fetch in any given allowance period | |
| instrumentType (Constant) | Instrument type

|     |     |
| --- | --- |
| BINARY |  |
| BUNGEE\_CAPPED |  |
| BUNGEE\_COMMODITIES |  |
| BUNGEE\_CURRENCIES |  |
| BUNGEE\_INDICES |  |
| COMMODITIES |  |
| CURRENCIES |  |
| INDICES |  |
| KNOCKOUTS\_COMMODITIES |  |
| KNOCKOUTS\_CURRENCIES |  |
| KNOCKOUTS\_INDICES |  |
| KNOCKOUTS\_SHARES |  |
| OPT\_COMMODITIES |  |
| OPT\_CURRENCIES |  |
| OPT\_INDICES |  |
| OPT\_RATES |  |
| OPT\_SHARES |  |
| RATES |  |
| SECTORS |  |
| SHARES |  |
| SPRINT\_MARKET |  |
| TEST\_MARKET |  |
| UNKNOWN |  | |
| prices (Array\[Object\]) | Historical market price snapshot

|     |     |
| --- | --- |
| closePrice (Object) | Price

|     |     |
| --- | --- |
| ask (Number) | Ask price |
| bid (Number) | Bid price |
| lastTraded (Number) | Last traded price (will generally be null for non exchange traded instruments) | |
| highPrice (Object) | Price

|     |     |
| --- | --- |
| ask (Number) | Ask price |
| bid (Number) | Bid price |
| lastTraded (Number) | Last traded price. This will generally be null for non exchange-traded instruments | |
| lowPrice (Object) | Price

|     |     |
| --- | --- |
| ask (Number) | Ask price |
| bid (Number) | Bid price |
| lastTraded (Number) | Last traded price. This will generally be null for non exchange-traded instruments | |
| openPrice (Object) | Price

|     |     |
| --- | --- |
| ask (Number) | Ask price |
| bid (Number) | Bid price |
| lastTraded (Number) | Last traded price. This will generally be null for non exchange-traded instruments | |
| lastTradedVolume (Number) | Last traded volume (will generally be null for non exchange traded instruments) |
| snapshotTime (String) | Snapshot local time (format: yyyy/MM/dd hh:mm:ss) | | |

Response

| HTTP code | Description |
| --- | --- |
| 400 | |     |     |
| --- | --- |
| error.invalid.daterange | Invalid date range error | |
| 400 | |     |     |
| --- | --- |
| error.malformed.date | Invalid date format error | |
| 400 | |     |     |
| --- | --- |
| error.public-api.failure.encryption.required | A login has been attempted to the login V1 service by a client from the IG Singapore company.<br> They need to use the v2 version as they need to send their passwords encrypyted. | |
| 400 | |     |     |
| --- | --- |
| error.request.invalid.date-range | Invalid date range | |
| 400 | |     |     |
| --- | --- |
| error.security.api-key-missing | The api key was not provided | |
| 400 | |     |     |
| --- | --- |
| error.unsupported.epic | Invalid EPIC error. Currently only major currency pairs instruments are supported | |
| 400 | |     |     |
| --- | --- |
| invalid.input | A generic input data error has occurred | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.kyc.required | The account is not allowed to log into public API. Please use the web platform. | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.missing.credentials | The user has not provided all required security credentials. | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.pending.agreements.required | The account is not allowed to log into public API. Please use the web platform. | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.preferred.account.disabled | The user's preferred account is disabled. | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.preferred.account.not.set | The user has not set a preferred account. | |
| 401 | |     |     |
| --- | --- |
| error.security.account-token-invalid | The service requires an account token and the one provided was not valid | |
| 401 | |     |     |
| --- | --- |
| error.security.account-token-missing | The service requires an account token and it was not provided | |
| 401 | |     |     |
| --- | --- |
| error.security.client-token-invalid | The service requires a client token and the one provided was not valid | |
| 401 | |     |     |
| --- | --- |
| error.security.client-token-missing | The service requires a client token and it was not provided | |
| 401 | |     |     |
| --- | --- |
| error.security.oauth-token-invalid | Invalid OAuth access token | |
| 403 | |     |     |
| --- | --- |
| endpoint.unavailable.for.api-key | The provided api key was not accepted | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-allowance | The account traffic allowance has been exceeded | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-historical-data-allowance | The account historical data traffic allowance has been exceeded | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-trading-allowance | The account trading traffic allowance has been exceeded | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-api-key-allowance | The api key traffic allowance has been exceeded | |
| 403 | |     |     |
| --- | --- |
| error.public-api.failure.stockbroking-not-supported | Stockbroking not supported for Public API users. | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-disabled | The provided api key was not accepted because it is not currently enabled | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-invalid | The provided api key was not accepted | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-restricted | The provided api key was not valid for the requesting account | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-revoked | The provided api key was not accepted because it has been revoked | |
| 403 | |     |     |
| --- | --- |
| unauthorised.access.to.equity.exception | Unauthorised access to equity data | |
| 404 | |     |     |
| --- | --- |
| invalid.url |  | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |

Exceptions

## GET (version: 1)

Returns a list of historical prices for the given epic, resolution and number of data points.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | epic (String) | Instrument epic |
| Path | resolution (Resolution) | Price resolution (MINUTE, MINUTE\_2, MINUTE\_3, MINUTE\_5, MINUTE\_10, MINUTE\_15, MINUTE\_30, HOUR, HOUR\_2, HOUR\_3, HOUR\_4, DAY, WEEK, MONTH) |
| Path | numPoints (int) | Number of data points required |

Request

|     |     |
| --- | --- |
| List of prices

|     |     |
| --- | --- |

| allowance (Object) | Historical price data allowance

|     |     |
| --- | --- |
| allowanceExpiry (Number) | The number of seconds till the current allowance period will end and the remaining allowance field is reset |
| remainingAllowance (Number) | The number of data points still available to fetch within the current allowance period |
| totalAllowance (Number) | The number of data points the API key and account combination is allowed to fetch in any given allowance period | |
| instrumentType (Constant) | Instrument type

|     |     |
| --- | --- |
| BINARY |  |
| BUNGEE\_CAPPED |  |
| BUNGEE\_COMMODITIES |  |
| BUNGEE\_CURRENCIES |  |
| BUNGEE\_INDICES |  |
| COMMODITIES |  |
| CURRENCIES |  |
| INDICES |  |
| KNOCKOUTS\_COMMODITIES |  |
| KNOCKOUTS\_CURRENCIES |  |
| KNOCKOUTS\_INDICES |  |
| KNOCKOUTS\_SHARES |  |
| OPT\_COMMODITIES |  |
| OPT\_CURRENCIES |  |
| OPT\_INDICES |  |
| OPT\_RATES |  |
| OPT\_SHARES |  |
| RATES |  |
| SECTORS |  |
| SHARES |  |
| SPRINT\_MARKET |  |
| TEST\_MARKET |  |
| UNKNOWN |  | |
| prices (Array\[Object\]) | Historical market price snapshot

|     |     |
| --- | --- |
| closePrice (Object) | Price

|     |     |
| --- | --- |
| ask (Number) | Ask price |
| bid (Number) | Bid price |
| lastTraded (Number) | Last traded price (will generally be 0 for non exchange traded instruments) | |
| highPrice (Object) | Price

|     |     |
| --- | --- |
| ask (Number) | Ask price |
| bid (Number) | Bid price |
| lastTraded (Number) | Last traded price. This will generally be null for non exchange-traded instruments | |
| lowPrice (Object) | Price

|     |     |
| --- | --- |
| ask (Number) | Ask price |
| bid (Number) | Bid price |
| lastTraded (Number) | Last traded price. This will generally be null for non exchange-traded instruments | |
| openPrice (Object) | Price

|     |     |
| --- | --- |
| ask (Number) | Ask price |
| bid (Number) | Bid price |
| lastTraded (Number) | Last traded price. This will generally be null for non exchange-traded instruments | |
| lastTradedVolume (Number) | Last traded volume. This will generally be 0 for non-exchange traded instruments |
| snapshotTime (String) | Snapshot time | | |

Response

| HTTP code | Description |
| --- | --- |
| 400 | |     |     |
| --- | --- |
| error.invalid.daterange | Invalid date range error | |
| 400 | |     |     |
| --- | --- |
| error.malformed.date | Invalid date format error | |
| 400 | |     |     |
| --- | --- |
| error.public-api.failure.encryption.required | A login has been attempted to the login V1 service by a client from the IG Singapore company.<br> They need to use the v2 version as they need to send their passwords encrypyted. | |
| 400 | |     |     |
| --- | --- |
| error.request.invalid.date-range | Invalid date range | |
| 400 | |     |     |
| --- | --- |
| error.security.api-key-missing | The api key was not provided | |
| 400 | |     |     |
| --- | --- |
| error.unsupported.epic | Invalid EPIC error. Currently only major currency pairs instruments are supported | |
| 400 | |     |     |
| --- | --- |
| invalid.input | A generic input data error has occurred | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.kyc.required | The account is not allowed to log into public API. Please use the web platform. | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.missing.credentials | The user has not provided all required security credentials. | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.pending.agreements.required | The account is not allowed to log into public API. Please use the web platform. | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.preferred.account.disabled | The user's preferred account is disabled. | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.preferred.account.not.set | The user has not set a preferred account. | |
| 401 | |     |     |
| --- | --- |
| error.security.account-token-invalid | The service requires an account token and the one provided was not valid | |
| 401 | |     |     |
| --- | --- |
| error.security.account-token-missing | The service requires an account token and it was not provided | |
| 401 | |     |     |
| --- | --- |
| error.security.client-token-invalid | The service requires a client token and the one provided was not valid | |
| 401 | |     |     |
| --- | --- |
| error.security.client-token-missing | The service requires a client token and it was not provided | |
| 401 | |     |     |
| --- | --- |
| error.security.oauth-token-invalid | Invalid OAuth access token | |
| 403 | |     |     |
| --- | --- |
| endpoint.unavailable.for.api-key | The provided api key was not accepted | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-allowance | The account traffic allowance has been exceeded | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-historical-data-allowance | The account historical data traffic allowance has been exceeded | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-trading-allowance | The account trading traffic allowance has been exceeded | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-api-key-allowance | The api key traffic allowance has been exceeded | |
| 403 | |     |     |
| --- | --- |
| error.public-api.failure.stockbroking-not-supported | Stockbroking not supported for Public API users. | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-disabled | The provided api key was not accepted because it is not currently enabled | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-invalid | The provided api key was not accepted | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-restricted | The provided api key was not valid for the requesting account | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-revoked | The provided api key was not accepted because it has been revoked | |
| 403 | |     |     |
| --- | --- |
| unauthorised.access.to.equity.exception | Unauthorised access to equity data | |
| 404 | |     |     |
| --- | --- |
| invalid.url |  | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |

Exceptions

**70% of retail investor accounts lose money when trading spread bets and CFDs with this provider.**
Spread bets and CFDs are complex instruments and come with a high risk of losing money rapidly due to leverage.
You should consider whether you understand how spread bets and CFDs work, and whether you can afford to take the
high risk of losing your money.

---

## Source: https://labs.ig.com/reference/prices-epic.html

# /prices/{epic}

- [Version: 3](https://labs.ig.com/reference/prices-epic.html#GET3)

## GET (version: 3)

Returns historical prices for a particular instrument. Returns the minute prices within the last 10 minutes by default.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | epic (String) | Instrument epic |
| Request (Optional) (Default=MINUTE) | resolution (Resolution) | Price resolution


|     |     |
| --- | --- |
| Defines the resolution of requested prices. |  |
| DAY | 1 day |
| HOUR | 1 hour |
| HOUR\_2 | 2 hours |
| HOUR\_3 | 3 hours |
| HOUR\_4 | 4 hours |
| MINUTE | 1 minute |
| MINUTE\_10 | 10 minutes |
| MINUTE\_15 | 15 minutes |
| MINUTE\_2 | 2 minutes |
| MINUTE\_3 | 3 minutes |
| MINUTE\_30 | 30 minutes |
| MINUTE\_5 | 5 minutes |
| MONTH | 1 month |
| SECOND | 1 second |
| WEEK | 1 week | |
| Request (Optional) | from (DateTime) | Start date time (yyyy-MM-dd'T'HH:mm:ss) |
| Request (Optional) | to (DateTime) | End date time (yyyy-MM-dd'T'HH:mm:ss) |
| Request (Optional) (Default=10) | max (int) | Limits the number of price points (not applicable if a date range has been specified) |
| Request (Optional) (Default=20) | pageSize (int) | Page size (disable paging = 0) |
| Request (Optional) (Default=1) | pageNumber (int) | Page number |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| List of prices |  |
| instrumentType (Constant) | Instrument type

|     |     |
| --- | --- |
| BINARY |  |
| BUNGEE\_CAPPED |  |
| BUNGEE\_COMMODITIES |  |
| BUNGEE\_CURRENCIES |  |
| BUNGEE\_INDICES |  |
| COMMODITIES |  |
| CURRENCIES |  |
| INDICES |  |
| KNOCKOUTS\_COMMODITIES |  |
| KNOCKOUTS\_CURRENCIES |  |
| KNOCKOUTS\_INDICES |  |
| KNOCKOUTS\_SHARES |  |
| OPT\_COMMODITIES |  |
| OPT\_CURRENCIES |  |
| OPT\_INDICES |  |
| OPT\_RATES |  |
| OPT\_SHARES |  |
| RATES |  |
| SECTORS |  |
| SHARES |  |
| SPRINT\_MARKET |  |
| TEST\_MARKET |  |
| UNKNOWN |  | |
| metadata (Object) | Response metadata data.

|     |     |
| --- | --- |
| pageData (Object) | Paging metadata

|     |     |
| --- | --- |
| pageNumber (Number) | Page number |
| pageSize (Number) | Page size |
| totalPages (Number) | Total number of pages | |
| size (Number) | Size |
| allowance (Object) | Historical price data allowance

|     |     |
| --- | --- |
| allowanceExpiry (Number) | The number of seconds till the current allowance period will end and the remaining allowance field is reset |
| remainingAllowance (Number) | The number of data points still available to fetch within the current allowance period |
| totalAllowance (Number) | The number of data points the API key and account combination is allowed to fetch in any given allowance period | | |
| prices (Array\[Object\]) | Historical market price snapshot

|     |     |
| --- | --- |
| closePrice (Object) | Price

|     |     |
| --- | --- |
| ask (Number) | Ask price |
| bid (Number) | Bid price |
| lastTraded (Number) | Last traded price. This will generally be null for non exchange-traded instruments | |
| highPrice (Object) | Price

|     |     |
| --- | --- |
| ask (Number) | Ask price |
| bid (Number) | Bid price |
| lastTraded (Number) | Last traded price. This will generally be null for non exchange-traded instruments | |
| lastTradedVolume (Number) | Last traded volume. This will generally be null for non exchange-traded instruments |
| lowPrice (Object) | Price

|     |     |
| --- | --- |
| ask (Number) | Ask price |
| bid (Number) | Bid price |
| lastTraded (Number) | Last traded price. This will generally be null for non exchange-traded instruments | |
| openPrice (Object) | Price

|     |     |
| --- | --- |
| ask (Number) | Ask price |
| bid (Number) | Bid price |
| lastTraded (Number) | Last traded price. This will generally be null for non exchange-traded instruments | |
| snapshotTime (String) | Snapshot local time, format is yyyy/MM/dd hh:mm:ss |
| snapshotTimeUTC (String) | Snapshot time | | |

Response

| HTTP code | Description |
| --- | --- |
| 400 | |     |     |
| --- | --- |
| error.invalid.daterange | Invalid date range error | |
| 400 | |     |     |
| --- | --- |
| error.malformed.date | Invalid date format error | |
| 400 | |     |     |
| --- | --- |
| error.public-api.failure.encryption.required | A login has been attempted to the login V1 service by a client from the IG Singapore company.<br> They need to use the v2 version as they need to send their passwords encrypyted. | |
| 400 | |     |     |
| --- | --- |
| error.request.invalid.date-range | Invalid date range | |
| 400 | |     |     |
| --- | --- |
| error.security.api-key-missing | The api key was not provided | |
| 400 | |     |     |
| --- | --- |
| error.unsupported.epic | Invalid EPIC error. Currently only major currency pairs instruments are supported | |
| 400 | |     |     |
| --- | --- |
| invalid.input | A generic input data error has occurred | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.kyc.required | The account is not allowed to log into public API. Please use the web platform. | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.missing.credentials | The user has not provided all required security credentials. | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.pending.agreements.required | The account is not allowed to log into public API. Please use the web platform. | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.preferred.account.disabled | The user's preferred account is disabled. | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.preferred.account.not.set | The user has not set a preferred account. | |
| 401 | |     |     |
| --- | --- |
| error.security.account-token-invalid | The service requires an account token and the one provided was not valid | |
| 401 | |     |     |
| --- | --- |
| error.security.account-token-missing | The service requires an account token and it was not provided | |
| 401 | |     |     |
| --- | --- |
| error.security.client-token-invalid | The service requires a client token and the one provided was not valid | |
| 401 | |     |     |
| --- | --- |
| error.security.client-token-missing | The service requires a client token and it was not provided | |
| 401 | |     |     |
| --- | --- |
| error.security.oauth-token-invalid | Invalid OAuth access token | |
| 403 | |     |     |
| --- | --- |
| endpoint.unavailable.for.api-key | The provided api key was not accepted | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-allowance | The account traffic allowance has been exceeded | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-historical-data-allowance | The account historical data traffic allowance has been exceeded | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-trading-allowance | The account trading traffic allowance has been exceeded | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-api-key-allowance | The api key traffic allowance has been exceeded | |
| 403 | |     |     |
| --- | --- |
| error.public-api.failure.stockbroking-not-supported | Stockbroking not supported for Public API users. | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-disabled | The provided api key was not accepted because it is not currently enabled | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-invalid | The provided api key was not accepted | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-restricted | The provided api key was not valid for the requesting account | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-revoked | The provided api key was not accepted because it has been revoked | |
| 403 | |     |     |
| --- | --- |
| unauthorised.access.to.equity.exception | Unauthorised access to equity data | |
| 404 | |     |     |
| --- | --- |
| invalid.url |  | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |

Exceptions

**70% of retail investor accounts lose money when trading spread bets and CFDs with this provider.**
Spread bets and CFDs are complex instruments and come with a high risk of losing money rapidly due to leverage.
You should consider whether you understand how spread bets and CFDs work, and whether you can afford to take the
high risk of losing your money.

