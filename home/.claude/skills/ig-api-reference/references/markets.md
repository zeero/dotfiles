# IG REST API - Markets

---

## Source: https://labs.ig.com/reference/categories-category-id-instruments.html

# /categories/{categoryId}/instruments

- [Version: 1](https://labs.ig.com/reference/categories-category-id-instruments.html#GET1)

## GET (version: 1)

Returns all instruments for the given category.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | categoryId (String) | The identifier of the category |
| Request (Optional) (Default=0) | pageNumber (Number) | The number of the page to be displayed from the response pages available (min: 0) |
| Request (Optional) (Default=150) | pageSize (Number) | Page size (min: 1, max: 1000) |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| instruments (Array\[Object\]) | |     |     |
| --- | --- |
| epic (String) | Unique instrument identifier |
| instrumentName (String) | Name of the instrument |
| expiry (String) | Expiry date of the instrument |
| instrumentType (Constant) | |     |     |
| --- | --- |
| Instrument type |
| SHARES |  |
| CURRENCIES |  |
| INDICES |  |
| SPRINT\_MARKET |  |
| BINARY |  |
| COMMODITIES |  |
| RATES |  |
| SECTORS |  |
| BUNGEE\_CAPPED |  |
| BUNGEE\_CURRENCIES |  |
| BUNGEE\_INDICES |  |
| BUNGEE\_COMMODITIES |  |
| OPT\_SHARES |  |
| OPT\_CURRENCIES |  |
| OPT\_INDICES |  |
| OPT\_COMMODITIES |  |
| OPT\_RATES |  |
| KNOCKOUTS\_INDICES |  |
| KNOCKOUTS\_COMMODITIES |  |
| KNOCKOUTS\_CURRENCIES |  |
| KNOCKOUTS\_SHARES |  |
| TEST\_MARKET |  |
| UNKNOWN |  | |
| InstrumentlotSize (Number) | Size of an instrumentlot for this instrument |
| otcTradeable (Boolean) | True if the instrument can be traded OTC |
| marketStatus (Constant) | |     |     |
| --- | --- |
| Current status of the market |
| OFFLINE | Offline |
| CLOSED | Closed |
| SUSPENDED | Suspended |
| ON\_AUCTION | In auction mode |
| ON\_AUCTION\_NO\_EDITS | In no-edits mode |
| EDITS\_ONLY | Open for edits |
| CLOSINGS\_ONLY | Closings only allowed |
| DEAL\_NO\_EDIT | Deals but not edits allowed |
| TRADEABLE | Open for trades | |
| delayTime (Number) | Price delay time for market data in minutes |
| bid (Number) | Current bid price |
| offer (Number) | Current offer price |
| high (Number) | Highest price for the current session |
| low (Number) | Lowest price for the current session |
| netChange (Number) | Net change in price |
| percentageChange (Number) | Percentage change in price |
| updateTime (String) | Time of last price update |
| scalingFactor (Number) | Multiplying factor to determine actual pip value for the levels used by the instrument | |
| metadata (Object) | |     |     |
| --- | --- |
| Paging metadata |
| pageNumber (Number) | Current page number |
| pageSize (Number) | Number of items per page | | |

Response

| HTTP code | Description |
| --- | --- |
| 400 | |     |     |
| --- | --- |
| error.public-api.failure.encryption.required | A login has been attempted to the login V1 service by a client from the IG Singapore company. They need to use the v2 version as they need to send their passwords encrypyted. | |
| 400 | |     |     |
| --- | --- |
| error.request.invalid.date-range | Invalid date range | |
| 400 | |     |     |
| --- | --- |
| error.request.invalid.page-size | Invalid page size | |
| 400 | |     |     |
| --- | --- |
| error.security.api-key-missing | The api key was not provided | |
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

## Source: https://labs.ig.com/reference/categories.html

# /categories

- [Version: 1](https://labs.ig.com/reference/categories.html#GET1)

## GET (version: 1)

Returns a list of all categories of instruments enabled for the IG account.

|     |     |
| --- | --- |
| List of categories

|     |     |
| --- | --- |

| categories (Array\[Object\]) | |     |     |
| --- | --- |
| Categories data |
| code (String) | Category code |
| nonTradeable (Boolean) | True if the category is non-tradeable | | |

Response

| HTTP code | Description |
| --- | --- |
| 400 | |     |     |
| --- | --- |
| error.public-api.failure.encryption.required | A login has been attempted to the login V1 service by a client from the IG Singapore company. They need to use the v2 version as they need to send their passwords encrypted. | |
| 400 | |     |     |
| --- | --- |
| error.request.invalid.date-range | Invalid date range | |
| 400 | |     |     |
| --- | --- |
| error.security.api-key-missing | The api key was not provided | |
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

## Source: https://labs.ig.com/reference/markets-epic.html

# /markets/{epic}

- [Version: 4](https://labs.ig.com/reference/markets-epic.html#GET4)
- [Version: 3](https://labs.ig.com/reference/markets-epic.html#GET3)
- [Version: 2](https://labs.ig.com/reference/markets-epic.html#GET2)
- [Version: 1](https://labs.ig.com/reference/markets-epic.html#GET1)

## GET (version: 4)

Returns the details of the given market.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | epic (String) | The epic of the market to be retrieved |

Request

| |     |     |
| --- | --- |
| dealingRules (Object) | Dealing
rules


|     |     |
| --- | --- |

| controlledRiskSpacing (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| maxStopOrLimitDistance (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| minControlledRiskStopDistance<br> (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| minDealSize<br> (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| minNormalStopOrLimitDistance<br> (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| minStepDistance<br> (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| trailingStopsPreference (Constant) | Trailing
stops trading
preference for the
specified market

|     |     |
| --- | --- |

| AVAILABLE | Trailing<br> stops are allowed<br> for the current market |
| NOT\_AVAILABLE | Trailing<br> stops are not<br> allowed for the current<br> market | | |
| instrument<br> (Object) | Instrument
details


|     |     |
| --- | --- |

| chartCode<br> (String) | Chart code |
| contractSize<br> (String) | Contract<br> size |
| country (String) | Country |
| currencies<br> (Array\[Object\]) | Currency

|     |     |
| --- | --- |

| baseExchangeRate<br> (Number) | Base<br> exchange rate |
| code<br> (String) | Code, to<br> be used when placing<br> orders |
| exchangeRate (Number) | Exchange<br> rate. |
| isDefault (Boolean) | True if<br> this is the default currency |
| symbol<br> (String) | Symbol,<br> for display purposes | |
| epic<br> (String) | Instrument<br> identifier |
| expiry<br> (String) | Expiry |
| limitedRiskPremium<br> (Object) | The limited risk
premium.


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| lotSize (Number) | Lot<br> size |
| marketId (String) | Market<br> identifier |
| name (String) | Name |
| newsCode (String) | Reuters news code |
| streamingPricesAvailable (Boolean) | True if streaming<br> prices<br> are available, i.e. the market<br> is open and the client has<br> appropriate permissions |
| limitAllowed (Boolean) | True if streaming<br> is allowed |
| stopAllowed (Boolean) | True if stops<br> is allowed |
| type (Constant) | Instrument
type

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
| unit (Constant) | Unit used to qualify the
size of a trade


|     |     |
| --- | --- |

| AMOUNT |  |
| CONTRACTS |  |
| SHARES |  | |
| valueOfOnePip<br> (String) | Value of one pip | |
| snapshot (Object) | Market
snapshot data


|     |     |
| --- | --- |

| decimalPlacesFactor<br> (Number) | Number of decimal<br> positions<br> for marketlevels |
| delayTime<br> (Number) | Price<br> delay |
| high (Number) | Highest price<br> on the day |
| low (Number) | Lowest price<br> on the day |
| marketStatus<br> (Constant) | Describes the current
status of a given market

|     |     |
| --- | --- |

| OFFLINE | Offline |
| CLOSED | Closed |
| SUSPENDED | Suspended |
| ON\_AUCTION | In<br> auction mode |
| ON\_AUCTION\_NO\_EDITS | In<br> no-edits mode |
| EDITS\_ONLY | Open for<br> edits |
| CLOSINGS\_ONLY | Closings only allowed |
| DEAL\_NO\_EDIT | Deals but not edits allowed |
| TRADEABLE | Open for<br> trades | |
| netChange<br> (Number) | Net price<br> change on the day |
| percentageChange<br> (Number) | Percentage price<br> change on the day |
| scalingFactor<br> (Number) | Multiplying factor<br> to determine actual pip value for<br> the levels<br> used by the instrument |
| updateTimestampUTC<br> (Number) | Time (in seconds since 1970)<br> of last price<br> update |
| priceLadder<br> (Array\[Object\]) | Price Ladder

|     |     |
| --- | --- |

| bid<br> (String) | Bid price |
| ask<br> (String) | Ask price<br> orders | |
| currencyLadders<br> (Array\[Object\]) | Price Ladder

|     |     |
| --- | --- |

| currency<br> (String) | Currency |
| bidSizes<br> Array(Numbers) | List of bid prices<br> orders |
| askSizes<br> Array(Numbers) | List of asking prices<br> orders | | | |

Response

| HTTP code | Description |
| --- | --- |
| 400 | |     |     |
| --- | --- |
| error.public-api.failure.encryption.required | A login has been attempted to the login V1 service by a client from the IG Singapore company. They need to use the v2 version as they need to send their passwords encrypted. | |
| 400 | |     |     |
| --- | --- |
| error.public-api.too-many-epics | The client is providing too many epics to the service. Reduce the number of epics provided. | |
| 400 | |     |     |
| --- | --- |
| error.request.invalid.date-range | Invalid date range | |
| 400 | |     |     |
| --- | --- |
| error.security.api-key-missing | The api key was not provided | |
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
| 404 | |     |     |
| --- | --- |
| error.public-api.epic-not-found | Epic not found | |
| 404 | |     |     |
| --- | --- |
| invalid.url |  | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |

Exceptions

## GET (version: 3)

Returns the details of the given market.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | epic (String) | The epic of the market to be retrieved |

Request

| |     |     |
| --- | --- |
| dealingRules (Object) | Dealing
rules


|     |     |
| --- | --- |

| controlledRiskSpacing (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| marketOrderPreference (Constant) | Client's market
order trading
preference


|     |     |
| --- | --- |

| AVAILABLE\_DEFAULT\_OFF | Market<br> orders are allowed<br> for the account<br> type and instrument,<br> and the user has enabled<br> market<br> orders in<br> their preferences but<br> decided the default<br> state is off. |
| AVAILABLE\_DEFAULT\_ON | Market<br> orders are allowed<br> for the account<br> type and instrument,<br> and the user has enabled<br> market<br> orders in<br> their preferences and<br> has decided the default<br> state is on. |
| NOT\_AVAILABLE | Market<br> orders are not<br> allowed for the current<br> site and/or instrument | |
| maxStopOrLimitDistance (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| minControlledRiskStopDistance<br> (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| minDealSize<br> (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| minNormalStopOrLimitDistance<br> (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| minStepDistance<br> (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| trailingStopsPreference (Constant) | Trailing
stops trading
preference for the
specified market

|     |     |
| --- | --- |

| AVAILABLE | Trailing<br> stops are allowed<br> for the current market |
| NOT\_AVAILABLE | Trailing<br> stops are not<br> allowed for the current<br> market | | |
| instrument<br> (Object) | Instrument
details


|     |     |
| --- | --- |

| chartCode<br> (String) | Chart code |
| contractSize<br> (String) | Contract<br> size |
| controlledRiskAllowed (Boolean) | True if controlled<br> risk trades are allowed |
| country (String) | Country |
| currencies<br> (Array\[Object\]) | Currency

|     |     |
| --- | --- |

| baseExchangeRate<br> (Number) | Base<br> exchange rate |
| code<br> (String) | Code, to<br> be used when placing<br> orders |
| exchangeRate (Number) | Exchange<br> rate. |
| isDefault (Boolean) | True if<br> this is the default currency |
| symbol<br> (String) | Symbol,<br> for display purposes | |
| epic<br> (String) | Instrument<br> identifier |
| expiry<br> (String) | Expiry |
| expiryDetails<br> (Object) | Marketexpiry
details


|     |     |
| --- | --- |

| lastDealingDate (String) | Last<br> dealing date |
| settlementInfo (String) | Settlement information | |
| forceOpenAllowed<br> (Boolean) | True if force<br> open is allowed |
| limitedRiskPremium<br> (Object) | The limited risk
premium.


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| lotSize (Number) | Lot<br> size |
| marginDepositBands<br> (Array\[Object\]) | Deposit
band


|     |     |
| --- | --- |

| currency<br> (String) | the currency<br> for this currency<br> band factor calculation |
| margin<br> (Number) | Margin<br> Percentage |
| max<br> (Number) | Band<br> maximum |
| min<br> (Number) | Band<br> minimum | |
| marginFactor<br> (Number) | margin<br> requirement factor |
| marginFactorUnit<br> (Constant) | describes the dimension
for a dealing rule value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| marketId (String) | Market<br> identifier |
| name (String) | Name |
| newsCode (String) | Reuters news code |
| onePipMeans<br> (String) | Meaning of one pip |
| openingHours<br> (Object) | Market
open and close times

|     |     |
| --- | --- |

| marketTimes<br> (Array\[Object\]) | Time
range


|     |     |
| --- | --- |

| closeTime<br> (String) | Close time |
| openTime<br> (String) | Open time | | |
| rolloverDetails<br> (Object) | Marketrollover
details


|     |     |
| --- | --- |

| lastRolloverTime<br> (String) | Last<br> rolloverdate |
| rolloverInfo (String) | Rollover<br> info | |
| slippageFactor<br> (Object) | Slippage
factor details for a
given market

|     |     |
| --- | --- |

| unit<br> (String) | Unit |
| value<br> (Number) | Value | |
| specialInfo<br> (Array\[String\]) | List of special<br> information notices |
| sprintMarketsMaximumExpiryTime<br> (Number) | For sprint markets<br> only, the maximum value to be<br> specified as the expiry<br> of a sprint markets<br> trade |
| sprintMarketsMinimumExpiryTime<br> (Number) | For sprint markets<br> only, the minimum value to be<br> specified as the expiry<br> of a sprint markets<br> trade |
| stopsLimitsAllowed<br> (Boolean) | True if stops and<br> limits are allowed |
| streamingPricesAvailable (Boolean) | True if streaming<br> prices<br> are available, i.e. the market<br> is open and the client has<br> appropriate permissions |
| type (Constant) | Instrument
type

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
| unit (Constant) | Unit used to qualify the
size of a trade


|     |     |
| --- | --- |

| AMOUNT |  |
| CONTRACTS |  |
| SHARES |  | |
| valueOfOnePip<br> (String) | Value of one pip | |
| snapshot (Object) | Market
snapshot data


|     |     |
| --- | --- |

| bid<br> (Number) | Bidprice |
| binaryOdds<br> (Number) | Binary<br> odds |
| controlledRiskExtraSpread (Number) | the number of points<br> to add on each side of the market<br> as an additional spread<br> when<br> placing a guaranteed<br> stop trade. |
| decimalPlacesFactor<br> (Number) | Number of decimal<br> positions<br> for marketlevels |
| delayTime<br> (Number) | Price<br> delay |
| high (Number) | Highest price<br> on the day |
| low (Number) | Lowest price<br> on the day |
| marketStatus<br> (Constant) | Describes the current
status of a given market

|     |     |
| --- | --- |

| CLOSED | Closed |
| EDITS\_ONLY | Open for<br> edits |
| OFFLINE | Offline |
| ON\_AUCTION | In<br> auction mode |
| ON\_AUCTION\_NO\_EDITS | In<br> no-edits mode |
| SUSPENDED | Suspended |
| TRADEABLE | Open for<br> trades | |
| netChange<br> (Number) | Net price<br> change on the day |
| offer<br> (Number) | Offerprice |
| percentageChange<br> (Number) | Percentage price<br> change on the day |
| scalingFactor<br> (Number) | Multiplying factor<br> to determine actual pip value for<br> the levels<br> used by the instrument |
| updateTime<br> (String) | Time<br> of last price<br> update | | |

Response

| HTTP code | Description |
| --- | --- |
| 400 | |     |     |
| --- | --- |
| error.public-api.failure.encryption.required | A login has been attempted to the login V1 service by a client from the IG Singapore company. They need to use the v2 version as they need to send their passwords encrypted. | |
| 400 | |     |     |
| --- | --- |
| error.public-api.too-many-epics | The client is providing too many epics to the service. Reduce the number of epics provided. | |
| 400 | |     |     |
| --- | --- |
| error.request.invalid.date-range | Invalid date range | |
| 400 | |     |     |
| --- | --- |
| error.security.api-key-missing | The api key was not provided | |
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
| 404 | |     |     |
| --- | --- |
| error.public-api.epic-not-found | Epic not found | |
| 404 | |     |     |
| --- | --- |
| invalid.url |  | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |

Exceptions

## GET (version: 2)

Returns the details of the given market.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | epic (String) | The epic of the market to be retrieved |

Request

| |     |     |
| --- | --- |
| dealingRules (Object) | Dealing
rules


|     |     |
| --- | --- |

| controlledRiskSpacing (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| marketOrderPreference (Constant) | Client's market
order trading
preference


|     |     |
| --- | --- |

| AVAILABLE\_DEFAULT\_OFF | Market<br> orders are allowed<br> for the account<br> type and instrument,<br> and the user has enabled<br> market<br> orders in<br> their preferences but<br> decided the default<br> state is off. |
| AVAILABLE\_DEFAULT\_ON | Market<br> orders are allowed<br> for the account<br> type and instrument,<br> and the user has enabled<br> market<br> orders in<br> their preferences and<br> has decided the default<br> state is on. |
| NOT\_AVAILABLE | Market<br> orders are not<br> allowed for the current<br> site and/or instrument | |
| maxStopOrLimitDistance (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| minControlledRiskStopDistance<br> (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| minDealSize<br> (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| minNormalStopOrLimitDistance<br> (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| minStepDistance<br> (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| trailingStopsPreference (Constant) | Trailing
stops trading
preference for the
specified market

|     |     |
| --- | --- |

| AVAILABLE | Trailing<br> stops are allowed<br> for the current market |
| NOT\_AVAILABLE | Trailing<br> stops are not<br> allowed for the current<br> market | | |
| instrument<br> (Object) | Instrument
details


|     |     |
| --- | --- |

| chartCode<br> (String) | Chart code |
| contractSize<br> (String) | Contract<br> size |
| controlledRiskAllowed (Boolean) | True if controlled<br> risk trades are allowed |
| country (String) | Country |
| currencies<br> (Array\[Object\]) | Currency

|     |     |
| --- | --- |

| baseExchangeRate<br> (Number) | Base<br> exchange rate |
| code<br> (String) | Code, to<br> be used when placing<br> orders |
| exchangeRate (Number) | Exchange<br> rate. |
| isDefault (Boolean) | True if<br> this is the default currency |
| symbol<br> (String) | Symbol,<br> for display purposes | |
| epic<br> (String) | Instrument<br> identifier |
| expiry<br> (String) | Expiry |
| expiryDetails<br> (Object) | Marketexpiry
details


|     |     |
| --- | --- |

| lastDealingDate (String) | Last<br> dealing date<br> (GMT) |
| settlementInfo (String) | Settlement information | |
| forceOpenAllowed<br> (Boolean) | True if force<br> open is allowed |
| lotSize (Number) | Lot<br> size |
| marginDepositBands<br> (Array\[Object\]) | Deposit
band


|     |     |
| --- | --- |

| currency<br> (String) | the currency<br> for this currency<br> band factor calculation |
| margin<br> (Number) | Margin<br> Percentage |
| max<br> (Number) | Band<br> maximum |
| min<br> (Number) | Band<br> minimum | |
| marginFactor<br> (Number) | margin<br> requirement factor |
| marginFactorUnit<br> (Constant) | describes the dimension
for a dealing rule value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| marketId (String) | Market<br> identifier |
| name (String) | Name |
| newsCode (String) | Reuters news code |
| onePipMeans<br> (String) | Meaning of one pip |
| openingHours<br> (Object) | Market
open and close times

|     |     |
| --- | --- |

| marketTimes<br> (Array\[Object\]) | Time
range


|     |     |
| --- | --- |

| closeTime<br> (String) | Close time |
| openTime<br> (String) | Open time | | |
| rolloverDetails<br> (Object) | Marketrollover
details


|     |     |
| --- | --- |

| lastRolloverTime<br> (String) | Last<br> rolloverdate<br> (GMT) |
| rolloverInfo (String) | Rollover<br> info | |
| slippageFactor<br> (Object) | Slippage
factor details for a
given market

|     |     |
| --- | --- |

| unit<br> (String) | Unit |
| value<br> (Number) | Value | |
| specialInfo<br> (Array\[String\]) | List of special<br> information notices |
| sprintMarketsMaximumExpiryTime<br> (Number) | For sprint markets<br> only, the maximum value to be<br> specified as the expiry<br> of a sprint markets<br> trade |
| sprintMarketsMinimumExpiryTime<br> (Number) | For sprint markets<br> only, the minimum value to be<br> specified as the expiry<br> of a sprint markets<br> trade |
| stopsLimitsAllowed<br> (Boolean) | True if stops and<br> limits are allowed |
| streamingPricesAvailable (Boolean) | True if streaming<br> prices<br> are available, i.e. the market<br> is open and the client has<br> appropriate permissions |
| type (Constant) | Instrument
type

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
| unit (Constant) | Unit used to qualify the
size of a trade


|     |     |
| --- | --- |

| AMOUNT |  |
| CONTRACTS |  |
| SHARES |  | |
| valueOfOnePip<br> (String) | Value of one pip | |
| snapshot (Object) | Market
snapshot data


|     |     |
| --- | --- |

| bid<br> (Number) | Bidprice |
| binaryOdds<br> (Number) | Binary<br> odds |
| controlledRiskExtraSpread (Number) | the number of points<br> to add on each side of the market<br> as an additional spread<br> when<br> placing a guaranteed<br> stop trade. |
| decimalPlacesFactor<br> (Number) | Number of decimal<br> positions<br> for marketlevels |
| delayTime<br> (Number) | Price<br> delay |
| high (Number) | Highest price<br> on the day |
| low (Number) | Lowest price<br> on the day |
| marketStatus<br> (Constant) | Describes the current
status of a given market

|     |     |
| --- | --- |

| CLOSED | Closed |
| EDITS\_ONLY | Open for<br> edits |
| OFFLINE | Offline |
| ON\_AUCTION | In<br> auction mode |
| ON\_AUCTION\_NO\_EDITS | In<br> no-edits mode |
| SUSPENDED | Suspended |
| TRADEABLE | Open for<br> trades | |
| netChange<br> (Number) | Net price<br> change on the day |
| offer<br> (Number) | Offerprice |
| percentageChange<br> (Number) | Percentage price<br> change on the day |
| scalingFactor<br> (Number) | Multiplying factor<br> to determine actual pip value for<br> the levels<br> used by the instrument |
| updateTime<br> (String) | Price<br> last update time<br> (hh:mm:ss) | | |

Response

| HTTP code | Description |
| --- | --- |
| 400 | |     |     |
| --- | --- |
| error.public-api.failure.encryption.required | A login has been attempted to the login V1 service by a client from the IG Singapore company. They need to use the v2 version as they need to send their passwords encrypted. | |
| 400 | |     |     |
| --- | --- |
| error.public-api.too-many-epics | The client is providing too many epics to the service. Reduce the number of epics provided. | |
| 400 | |     |     |
| --- | --- |
| error.request.invalid.date-range | Invalid date range | |
| 400 | |     |     |
| --- | --- |
| error.security.api-key-missing | The api key was not provided | |
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
| 404 | |     |     |
| --- | --- |
| error.public-api.epic-not-found | Epic not found | |
| 404 | |     |     |
| --- | --- |
| invalid.url |  | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |

Exceptions

## GET (version: 1)

Returns the details of the given market.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | epic (String) | The epic of the market to be retrieved |

Request

| |     |     |
| --- | --- |
| dealingRules (Object) | Dealing
rules


|     |     |
| --- | --- |

| controlledRiskSpacing (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| marketOrderPreference (Constant) | Client's market
order trading
preference


|     |     |
| --- | --- |

| AVAILABLE\_DEFAULT\_OFF | Market<br> orders are allowed<br> for the account<br> type and instrument,<br> and the user has enabled<br> market<br> orders in<br> their preferences but<br> decided the default<br> state is off. |
| AVAILABLE\_DEFAULT\_ON | Market<br> orders are allowed<br> for the account<br> type and instrument,<br> and the user has enabled<br> market<br> orders in<br> their preferences and<br> has decided the default<br> state is on. |
| NOT\_AVAILABLE | Market<br> orders are not<br> allowed for the current<br> site and/or instrument | |
| maxStopOrLimitDistance (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| minControlledRiskStopDistance<br> (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| minDealSize<br> (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| minNormalStopOrLimitDistance<br> (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | |
| minStepDistance<br> (Object) | Dealing rule


|     |     |
| --- | --- |

| unit<br> (Constant) | describes
the
dimension
for a
dealing rule
value


|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value<br> (Number) | Value | | |
| instrument<br> (Object) | Instrument
details


|     |     |
| --- | --- |

| chartCode<br> (String) | Chart code |
| contractSize<br> (String) | Contract<br> size |
| controlledRiskAllowed (Boolean) | True if controlled<br> risk trades are allowed |
| country (String) | Country |
| currencies<br> (Array\[Object\]) | Currency

|     |     |
| --- | --- |

| baseExchangeRate<br> (Number) | Base<br> exchange rate |
| code<br> (String) | Code |
| exchangeRate (Number) | Exchange<br> rate |
| isDefault (Boolean) | True if<br> this is the default currency |
| name<br> (String) | Name |
| symbol<br> (String) | Symbol | |
| epic<br> (String) | Instrument<br> identifier |
| expiry<br> (String) | Expiry |
| expiryDetails<br> (Object) | |     |     |
| --- | --- |
| lastDealingDate (String) | Last<br> dealing date<br> (GMT) |
| settlementInfo (String) | Settlement information | |
| forceOpenAllowed<br> (Boolean) | True if force<br> open is allowed |
| lotSize (Number) | Lot<br> size |
| margin<br> (Number) | Default margin<br> requirement |
| marginDepositBands<br> (Array\[Object\]) | Deposit
band


|     |     |
| --- | --- |

| margin<br> (Number) | Margin<br> Percentage |
| max<br> (Number) | Band<br> maximum |
| min<br> (Number) | Band<br> minimum | |
| marketId (String) | Market<br> identifier |
| name (String) | Name |
| newsCode (String) | Reuters news code |
| onePipMeans<br> (String) | Meaning of one pip |
| openingHours<br> (Object) | Market
open and close times

|     |     |
| --- | --- |

| marketTimes<br> (Array\[Object\]) | Time
range


|     |     |
| --- | --- |

| closeTime<br> (String) | Close time |
| openTime<br> (String) | Open time | | |
| rolloverDetails<br> (Object) | Marketrollover
details


|     |     |
| --- | --- |

| lastRolloverTime<br> (String) | Last<br> rolloverdate<br> (GMT) |
| rolloverInfo (String) | Rollover<br> info | |
| slippageFactor<br> (Object) | Slippage
factor details for a
given market

|     |     |
| --- | --- |

| unit<br> (String) | Unit |
| value<br> (Number) | Value | |
| specialInfo<br> (Array\[String\]) | List of special<br> information notices |
| stopsLimitsAllowed<br> (Boolean) | True if stops and<br> limits are allowed |
| streamingPricesAvailable (Boolean) | True if streaming<br> prices<br> are available, i.e. the market<br> is open and the client has<br> appropriate permissions |
| type (Constant) | Instrument
type

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
| unit (Constant) | Unit used to qualify the
size of a trade


|     |     |
| --- | --- |

| AMOUNT |  |
| CONTRACTS |  |
| SHARES |  | |
| valueOfOnePip<br> (String) | Value of one pip | |
| snapshot (Object) | Market
snapshot data


|     |     |
| --- | --- |

| bid<br> (Number) | Bidprice |
| binaryOdds<br> (Number) | Binary<br> odds |
| controlledRiskExtraSpread (Number) | the number of points<br> to add on each side of the market<br> as an additional spread<br> when<br> placing a guaranteed<br> stop trade. |
| decimalPlacesFactor<br> (Number) | Number of decimal<br> positions<br> for marketlevels |
| delayTime<br> (Number) | Price<br> delay |
| high (Number) | Highest price<br> on the day |
| low (Number) | Lowest price<br> on the day |
| marketStatus<br> (Constant) | Describes the current
status of a given market

|     |     |
| --- | --- |

| CLOSED | Closed |
| EDITS\_ONLY | Open for<br> edits |
| OFFLINE | Offline |
| ON\_AUCTION | In<br> auction mode |
| ON\_AUCTION\_NO\_EDITS | In<br> no-edits mode |
| SUSPENDED | Suspended |
| TRADEABLE | Open for<br> trades | |
| netChange<br> (Number) | Net price<br> change on the day |
| offer<br> (Number) | Offerprice |
| percentageChange<br> (Number) | Percentage price<br> change on the day |
| scalingFactor<br> (Number) | Multiplying factor<br> to determine actual pip value for<br> the levels<br> used by the instrument |
| updateTime<br> (String) | Price<br> last update time<br> (hh:mm:ss) | | |

Response

| HTTP code | Description |
| --- | --- |
| 400 | |     |     |
| --- | --- |
| error.public-api.failure.encryption.required | A login has been attempted to the login V1 service by a client from the IG Singapore company. They need to use the v2 version as they need to send their passwords encrypted. | |
| 400 | |     |     |
| --- | --- |
| error.public-api.too-many-epics | The client is providing too many epics to the service. Reduce the number of epics provided. | |
| 400 | |     |     |
| --- | --- |
| error.request.invalid.date-range | Invalid date range | |
| 400 | |     |     |
| --- | --- |
| error.security.api-key-missing | The api key was not provided | |
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
| 404 | |     |     |
| --- | --- |
| error.public-api.epic-not-found | Epic not found | |
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

## Source: https://labs.ig.com/reference/markets-searchterm.html

# /markets?searchTerm={searchTerm}

- [Version: 1](https://labs.ig.com/reference/markets-searchterm.html#GET1)

## GET (version: 1)

Returns all markets matching the search term.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Request (Optional) | searchTerm (String) | The term to be used in the search |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| Search markets response |
| markets (Array\[Object\]) | Market data

|     |     |
| --- | --- |
| bid (Number) | Bidprice |
| delayTime (Number) | Price delay time in minutes |
| epic (String) | Instrumentepic identifier |
| expiry (String) | Instrumentexpiryperiod |
| high (Number) | Highest price of the day |
| instrumentName (String) | Instrument name |
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
| low (Number) | Lowest price of the day |
| marketStatus (Constant) | Describes the current status of a given market

|     |     |
| --- | --- |
| CLOSED | Closed |
| EDITS\_ONLY | Open for edits |
| OFFLINE | Offline |
| ON\_AUCTION | In auction mode |
| ON\_AUCTION\_NO\_EDITS | In no-edits mode |
| SUSPENDED | Suspended |
| TRADEABLE | Open for trades | |
| netChange (Number) | Price net change |
| offer (Number) | Offerprice |
| percentageChange (Number) | Percentage price change on the day |
| scalingFactor (Number) | multiplying factor to determine actual pip value for the levels used by the instrument |
| streamingPricesAvailable (Boolean) | True if streaming prices are available, i.e. if the market is tradeable and the client has appropriate permissions |
| updateTime (String) | Local time of last price update |
| updateTimeUTC (String) | Time of last price update | | |

Response

| HTTP code | Description |
| --- | --- |
| 400 | |     |     |
| --- | --- |
| error.public-api.failure.encryption.required | A login has been attempted to the login V1 service by a client from the IG Singapore company.<br> They need to use the v2 version as they need to send their passwords encrypted. | |
| 400 | |     |     |
| --- | --- |
| error.request.invalid.date-range | Invalid date range | |
| 400 | |     |     |
| --- | --- |
| error.security.api-key-missing | The api key was not provided | |
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

## Source: https://labs.ig.com/reference/markets.html

# /markets

- [Version: 2](https://labs.ig.com/reference/markets.html#GET2)
- [Version: 1](https://labs.ig.com/reference/markets.html#GET1)

## GET (version: 2)

Returns the details of the given markets.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Request (Mandatory) | epics (String) | The epics of the market to be retrieved, separated by a comma. Max number of epics is limited to 50.<br>\[Constraint: Pattern(regexp="^(?>(?:\[A-Za-z0-9.\_\]){6,30},?){0,200}$")\] |
| Request (Optional) (Default=ALL) | filter (MarketDetailsFilterType) | MarketDetailsFilterType


|     |     |
| --- | --- |
| Filter for the market details |
| ALL | Display all market details. Market details includes all instrument data, dealing rules and market snapshot values for all epics specified. |
| SNAPSHOT\_ONLY | Display the market snapshot and minimal instrument data fields. This mode is faster because it only sets the epic and instrument type in the instrument data and the market data snapshot values with all the other fields being unset for each epic specified. | |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| marketDetails (Array\[Object\]) | |     |     |
| --- | --- |
| dealingRules (Object) | Dealing rules

|     |     |
| --- | --- |
| controlledRiskSpacing (Object) | Dealing rule

|     |     |
| --- | --- |
| unit (Constant) | describes the dimension for a dealing rule value

|     |     |
| --- | --- |
| PERCENTAGE |  |
| POINTS |  | |
| value (Number) | Value | |
| marketOrderPreference (Constant) | Client's market order trading preference

|     |     |
| --- | --- |
| AVAILABLE\_DEFAULT\_OFF | Market orders are allowed for the account type and instrument, and the user has enabled market orders in their preferences but decided the default state is off. |
| AVAILABLE\_DEFAULT\_ON | Market orders are allowed for the account type and instrument, and the user has enabled market orders in their preferences and has decided the default state is on. |
| NOT\_AVAILABLE | Market orders are not allowed for the current site and/or instrument | |
| maxStopOrLimitDistance (Object) | Dealing rule

|     |     |
| --- | --- |
| unit (Constant) | describes the dimension for a dealing rule value

|     |     |
| --- | --- |
| PERCENTAGE |  |
| POINTS |  | |
| value (Number) | Value | |
| minControlledRiskStopDistance (Object) | Dealing rule

|     |     |
| --- | --- |
| unit (Constant) | describes the dimension for a dealing rule value

|     |     |
| --- | --- |
| PERCENTAGE |  |
| POINTS |  | |
| value (Number) | Value | |
| minDealSize (Object) | Dealing rule

|     |     |
| --- | --- |
| unit (Constant) | describes the dimension for a dealing rule value

|     |     |
| --- | --- |
| PERCENTAGE |  |
| POINTS |  | |
| value (Number) | Value | |
| minNormalStopOrLimitDistance (Object) | Dealing rule

|     |     |
| --- | --- |
| unit (Constant) | describes the dimension for a dealing rule value

|     |     |
| --- | --- |
| PERCENTAGE |  |
| POINTS |  | |
| value (Number) | Value | |
| minStepDistance (Object) | Dealing rule

|     |     |
| --- | --- |
| unit (Constant) | describes the dimension for a dealing rule value

|     |     |
| --- | --- |
| PERCENTAGE |  |
| POINTS |  | |
| value (Number) | Value | |
| trailingStopsPreference (Constant) | Client's trailing stop trading preference

|     |     |
| --- | --- |
| AVAILABLE | Trailing stops are allowed for this market |
| NOT\_AVAILABLE | Trailing stops are not allowed for this market | | |
| instrument (Object) | Instrument data

|     |     |
| --- | --- |
| chartCode (String) | Chart code |
| contractSize (String) | Contract size |
| controlledRiskAllowed (Boolean) | True if controlled risk trades are allowed |
| country (String) | Country |
| currencies (Array\[Object\]) | Currency data

|     |     |
| --- | --- |
| baseExchangeRate (Number) | Base exchange rate |
| code (String) | Currency code |
| exchangeRate (Number) | Exchange rate |
| isDefault (Boolean) | True if this is the default currency |
| symbol (String) | Currency symbol | |
| epic (String) | Instrument epic identifier |
| expiry (String) | Instrument expiry period |
| expiryDetails (Object) | Expiry details

|     |     |
| --- | --- |
| lastDealingDate (String) | Last dealing date |
| settlementInfo (String) | Settlement info | |
| forceOpenAllowed (Boolean) | True if force open is allowed |
| limitedRiskPremium (Object) | Limited risk premium

|     |     |
| --- | --- |
| unit (Constant) | describes the dimension for a dealing rule value

|     |     |
| --- | --- |
| PERCENTAGE |  |
| POINTS |  | |
| value (Number) | Value | |
| lotSize (Number) | Instrument lot size |
| marginDepositBands (Array\[Object\]) | Margin deposit bands

|     |     |
| --- | --- |
| currency (String) | Currency |
| margin (Number) | Margin percentage |
| max (Number) | Maximum |
| min (Number) | Minimum | |
| marginFactor (Number) | Margin factor |
| marginFactorUnit (Constant) | describes the dimension for a dealing rule value

|     |     |
| --- | --- |
| PERCENTAGE |  |
| POINTS |  | |
| marketId (String) | Market identifier |
| name (String) | Instrument name |
| newsCode (String) | News code |
| onePipMeans (String) | One pip means |
| openingHours (Object) | Opening hours

|     |     |
| --- | --- |
| marketTimes (Array\[Object\]) | Market times

|     |     |
| --- | --- |
| closeTime (String) | Close time |
| openTime (String) | Open time | | |
| rolloverDetails (Object) | Rollover details

|     |     |
| --- | --- |
| lastRolloverTime (String) | Last rollover time |
| rolloverInfo (String) | Rollover info | |
| slippageFactor (Object) | Slippage factor

|     |     |
| --- | --- |
| unit (Constant) | describes the dimension for a dealing rule value

|     |     |
| --- | --- |
| PERCENTAGE |  |
| POINTS |  | |
| value (Number) | Value | |
| specialInfo (Array\[String\]) | Special info |
| sprintMarketsMaximumExpiryTime (Number) | Sprint markets maximum expiry time |
| sprintMarketsMinimumExpiryTime (Number) | Sprint markets minimum expiry time |
| stopsLimitsAllowed (Boolean) | True if stops and limits are allowed |
| streamingPricesAvailable (Boolean) | True if streaming prices are available |
| type (Constant) | Instrument type

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
| unit (Constant) | Unit

|     |     |
| --- | --- |
| AMOUNT |  |
| CONTRACTS |  |
| SHARES |  | |
| valueOfOnePip (String) | Value of one pip | |
| snapshot (Object) | Market snapshot

|     |     |
| --- | --- |
| bid (Number) | Bid price |
| binaryOdds (Number) | Binary odds |
| controlledRiskExtraSpread (Number) | Controlled risk extra spread |
| decimalPlacesFactor (Number) | Decimal places factor |
| delayTime (Number) | Price delay time in minutes |
| high (Number) | Highest price of the day |
| low (Number) | Lowest price of the day |
| marketStatus (Constant) | Describes the current status of a given market

|     |     |
| --- | --- |
| CLOSED | Closed |
| EDITS\_ONLY | Open for edits |
| OFFLINE | Offline |
| ON\_AUCTION | In auction mode |
| ON\_AUCTION\_NO\_EDITS | In no-edits mode |
| SUSPENDED | Suspended |
| TRADEABLE | Open for trades | |
| netChange (Number) | Price net change |
| offer (Number) | Offer price |
| percentageChange (Number) | Percentage price change on the day |
| scalingFactor (Number) | Scaling factor |
| updateTime (String) | Local time of last price update (milliseconds since epoch) | | | |

Response

| HTTP code | Description |
| --- | --- |
| 400 | |     |     |
| --- | --- |
| error.public-api.failure.encryption.required | A login has been attempted to the login V1 service by a client from the IG Singapore company. They need to use the v2 version as they need to send their passwords encrypyted. | |
| 400 | |     |     |
| --- | --- |
| error.public-api.too-many-epics | Too many epics | |
| 400 | |     |     |
| --- | --- |
| error.request.invalid.date-range | Invalid date range | |
| 400 | |     |     |
| --- | --- |
| error.security.api-key-missing | The api key was not provided | |
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
| 404 | |     |     |
| --- | --- |
| error.public-api.epic-not-found | Epic not found | |
| 404 | |     |     |
| --- | --- |
| invalid.url |  | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |

Exceptions

## GET (version: 1)

Returns the details of the given markets.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Request (Mandatory) | epics (String) | The epics of the market to be retrieved, separated by a comma. Max number of epics is limited to 50.<br>\[Constraint: Pattern(regexp="^(?>(?:\[A-Za-z0-9.\_\]){6,30},?){0,200}$")\] |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| marketDetails (Array\[Object\]) | |     |     |
| --- | --- |
| dealingRules (Object) | Dealing rules

|     |     |
| --- | --- |

| controlledRiskSpacing (Object) | Dealing rule

|     |     |
| --- | --- |

| unit (Constant) | describes the dimension for a dealing rule value

|     |     |
| --- | --- |

| PERCENTAGE |  |
| POINTS |  | |
| value (Number) | Value | |
| marketOrderPreference (Constant) | Client's market order trading preference

|     |     |
| --- | --- |

| AVAILABLE\_DEFAULT\_OFF | Market orders are allowed but default state is off. |
| AVAILABLE\_DEFAULT\_ON | Market orders are allowed and default state is on. |
| NOT\_AVAILABLE | Market orders are not allowed for the current site and/or instrument | |
| maxStopOrLimitDistance (Object) | Dealing rule

|     |     |
| --- | --- |

| unit (Constant) | PERCENTAGE or POINTS |
| value (Number) | Value | |
| minControlledRiskStopDistance (Object) | Dealing rule

|     |     |
| --- | --- |

| unit (Constant) | PERCENTAGE or POINTS |
| value (Number) | Value | |
| minDealSize (Object) | Dealing rule

|     |     |
| --- | --- |

| unit (Constant) | PERCENTAGE or POINTS |
| value (Number) | Value | |
| minNormalStopOrLimitDistance (Object) | Dealing rule

|     |     |
| --- | --- |

| unit (Constant) | PERCENTAGE or POINTS |
| value (Number) | Value | |
| minStepDistance (Object) | Dealing rule

|     |     |
| --- | --- |

| unit (Constant) | PERCENTAGE or POINTS |
| value (Number) | Value | |
| trailingStopsPreference (Constant) | Trailing stops trading preference for the specified market

|     |     |
| --- | --- |

| AVAILABLE | Trailing stops are allowed for the current market |
| NOT\_AVAILABLE | Trailing stops are not allowed for the current market | | |
| instrument (Object) | Instrument details

|     |     |
| --- | --- |

| chartCode (String) | Chart code |
| contractSize (String) | Contract size |
| controlledRiskAllowed (Boolean) | True if controlled risk trades are allowed |
| country (String) | Country |
| currencies (Array\[Object\]) | Currency information including code, symbol, exchange rates |
| epic (String) | Instrument identifier |
| expiry (String) | Expiry |
| expiryDetails (Object) | Market expiry details including last dealing date and settlement info |
| forceOpenAllowed (Boolean) | True if force open is allowed |
| limitedRiskPremium (Object) | The limited risk premium with unit and value |
| lotSize (Number) | Lot size |
| marginDepositBands (Array\[Object\]) | Deposit band information including currency, margin, max, min |
| marginFactor (Number) | margin requirement factor |
| marginFactorUnit (Constant) | PERCENTAGE or POINTS |
| marketId (String) | Market identifier |
| name (String) | Name |
| newsCode (String) | Reuters news code |
| onePipMeans (String) | Meaning of one pip |
| openingHours (Object) | Market open and close times with marketTimes array |
| rolloverDetails (Object) | Market rollover details including last rollover time and rollover info |
| slippageFactor (Object) | Slippage factor details with unit and value |
| specialInfo (Array\[String\]) | List of special information notices |
| sprintMarketsMaximumExpiryTime (Number) | For sprint markets only, the maximum expiry time |
| sprintMarketsMinimumExpiryTime (Number) | For sprint markets only, the minimum expiry time |
| stopsLimitsAllowed (Boolean) | True if stops and limits are allowed |
| streamingPricesAvailable (Boolean) | True if streaming prices are available |
| type (Constant) | Instrument type (BINARY, BUNGEE\_CAPPED, COMMODITIES, CURRENCIES, etc.) |
| unit (Constant) | Unit used to qualify the size of a trade (AMOUNT, CONTRACTS, SHARES) |
| valueOfOnePip (String) | Value of one pip | |
| snapshot (Object) | Market snapshot data

|     |     |
| --- | --- |

| bid (Number) | Bid price |
| binaryOdds (Number) | Binary odds |
| controlledRiskExtraSpread (Number) | Additional spread for guaranteed stop trades |
| decimalPlacesFactor (Number) | Number of decimal positions for market levels |
| delayTime (Number) | Price delay |
| high (Number) | Highest price on the day |
| low (Number) | Lowest price on the day |
| marketStatus (Constant) | Current market status (CLOSED, EDITS\_ONLY, OFFLINE, ON\_AUCTION, ON\_AUCTION\_NO\_EDITS, SUSPENDED, TRADEABLE) |
| netChange (Number) | Net price change on the day |
| offer (Number) | Offer price |
| percentageChange (Number) | Percentage price change on the day |
| scalingFactor (Number) | Multiplying factor to determine actual pip value |
| updateTime (String) | Time of last price update | | | |

Response

| HTTP code | Description |
| --- | --- |
| 400 | |     |     |
| --- | --- |
| error.public-api.failure.encryption.required | A login has been attempted to the login V1 service by a client from the IG Singapore company. They need to use the v2 version as they need to send their passwords encrypyted. | |
| 400 | |     |     |
| --- | --- |
| error.public-api.too-many-epics | the client is providing too many epics to the service. Reduce the number of epics provided. | |
| 400 | |     |     |
| --- | --- |
| error.request.invalid.date-range | Invalid date range | |
| 400 | |     |     |
| --- | --- |
| error.security.api-key-missing | The api key was not provided | |
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
| 404 | |     |     |
| --- | --- |
| error.public-api.epic-not-found | Epic not found | |
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

