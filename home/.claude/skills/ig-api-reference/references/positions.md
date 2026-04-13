# IG REST API - Positions

---

## Source: https://labs.ig.com/reference/confirms-deal-reference.html

# /confirms/{dealReference}

- [Version: 1](https://labs.ig.com/reference/confirms-deal-reference.html#GET1)

## GET (version: 1)

Returns a deal confirmation for the given deal reference.
Please note, this should only be used if the deal confirmation isn't received via the streaming API.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | dealReference (String) | deal reference |

Request

|     |     |
| --- | --- |
| Deal confirmation

|     |     |
| --- | --- |
| affectedDeals (Array\[Object\]) | Affected deal

|     |     |
| --- | --- |
| dealId (String) | Deal identifier |
| status (Constant) | |     |     |
| --- | --- |
| AMENDED | Amended |
| DELETED | Deleted |
| FULLY\_CLOSED | Fully closed |
| OPENED | Opened |
| PARTIALLY\_CLOSED | Partially closed | | |
| date (String) | Transaction date |
| dealId (String) | Deal identifier |
| dealReference (String) | Deal reference |
| dealStatus (Constant) | Deal status

|     |     |
| --- | --- |
| ACCEPTED | Accepted |
| REJECTED | Rejected | |
| direction (Constant) | Deal direction

|     |     |
| --- | --- |
| BUY | Buy |
| SELL | Sell | |
| epic (String) | Instrumentepic identifier |
| expiry (String) | Instrumentexpiry |
| guaranteedStop (Boolean) | True if guaranteed stop |
| level (Number) | Level |
| limitDistance (Number) | Limit distance |
| limitLevel (Number) | Limit level |
| profit (Number) | Profit |
| profitCurrency (String) | Profit currency |
| reason (Constant) | Describes the error (or success) condition for the specified trading operation

|     |     |
| --- | --- |
| ACCOUNT\_NOT\_ENABLED\_TO\_TRADING | The account is not enabled to trade |
| ATTACHED\_ORDER\_LEVEL\_ERROR | The level of the attached stop or limit is not valid |
| ATTACHED\_ORDER\_TRAILING\_STOP\_ERROR | The trailing stop value is invalid |
| CANNOT\_CHANGE\_STOP\_TYPE | Cannot change the stop type. |
| CANNOT\_REMOVE\_STOP | Cannot remove the stop. |
| CLOSING\_ONLY\_TRADES\_ACCEPTED\_ON\_THIS\_MARKET | We are not taking opening deals on a Controlled Risk basis on this market |
| CLOSINGS\_ONLY\_ACCOUNT | You are currently restricted from opening any new positions on your account. |
| CONFLICTING\_ORDER | Resubmitted request does not match the original order. |
| CONTACT\_SUPPORT\_INSTRUMENT\_ERROR | Instrument has an error - check the order's currency is the instrument's currency (see the market's details);<br> otherwise please contact support. |
| CR\_SPACING | Sorry we are unable to process this order.<br> The stop or limit level you have requested is not a valid trading level in the underlyingmarket. |
| DUPLICATE\_ORDER\_ERROR | The order has been rejected as it is a duplicate of a previously issued order |
| EXCHANGE\_MANUAL\_OVERRIDE | Exchange check failed. Please call in for assistance. |
| EXPIRY\_LESS\_THAN\_SPRINT\_MARKET\_MIN\_EXPIRY | Order expiry is less than the sprint market's minimum expiry.<br> Check the sprint market's market details for the allowable expiries. |
| FINANCE\_REPEAT\_DEALING | The total size of deals placed on this market in a short period has exceeded our limits.<br> Please wait before attempting to open further positions on this market. |
| FORCE\_OPEN\_ON\_SAME\_MARKET\_DIFFERENT\_CURRENCY | Ability to force open in different currencies on same market not allowed |
| GENERAL\_ERROR | an error has occurred but no detailed information is available.<br> Check transaction history or contact support for further information |
| GOOD\_TILL\_DATE\_IN\_THE\_PAST | The working order has been set to expire on a past date |
| INSTRUMENT\_NOT\_FOUND | The requested market was not found |
| INSTRUMENT\_NOT\_TRADEABLE\_IN\_THIS\_CURRENCY | Instrument not tradeable in this currency. |
| INSUFFICIENT\_FUNDS | The account has not enough funds available for the requested trade |
| LEVEL\_TOLERANCE\_ERROR | The marketlevel has moved and has been rejected |
| LIMIT\_ORDER\_WRONG\_SIDE\_OF\_MARKET | The deal has been rejected because the limit level is inconsistent with current marketprice given the direction. |
| MANUAL\_ORDER\_TIMEOUT | The manual order timeout limit has been reached |
| MARGIN\_ERROR | Order declined during margin checks<br> Check available funds. |
| MARKET\_CLOSED | The market is currently closed |
| MARKET\_CLOSED\_WITH\_EDITS | The market is currently closed with edits |
| MARKET\_CLOSING | The epic is due to expire shortly, client should deal in the next available contract. |
| MARKET\_NOT\_BORROWABLE | The market does not allow opening shorting positions |
| MARKET\_OFFLINE | The market is currently offline |
| MARKET\_ORDERS\_NOT\_ALLOWED\_ON\_INSTRUMENT | The epic does not support 'Market' order type |
| MARKET\_PHONE\_ONLY | The market can only be traded over the phone |
| MARKET\_ROLLED | The market has been rolled to the next period |
| MARKET\_UNAVAILABLE\_TO\_CLIENT | The requested market is not allowed to this account |
| MAX\_AUTO\_SIZE\_EXCEEDED | The order size exceeds the instrument's maximum configured value for auto-hedging the exposure of a deal |
| MINIMUM\_ORDER\_SIZE\_ERROR | The order size is too small |
| MOVE\_AWAY\_ONLY\_LIMIT | The limit level you have requested is closer to the marketlevel than the existing stop.<br> When the market is closed you can only move the limit order further away from the current marketlevel. |
| MOVE\_AWAY\_ONLY\_STOP | The stop level you have requested is closer to the marketlevel than the existing stop level.<br> When the market is closed you can only move the stop level further away from the current marketlevel |
| MOVE\_AWAY\_ONLY\_TRIGGER\_LEVEL | The order level you have requested is moving closer to the marketlevel than the exisiting order level.<br> When the market is closed you can only move the order further away from the current marketlevel. |
| NCR\_POSITIONS\_ON\_CR\_ACCOUNT | You are not permitted to open a non-controlled riskposition on this account. |
| OPPOSING\_DIRECTION\_ORDERS\_NOT\_ALLOWED | Opening CR position in opposite direction to existing CR position not allowed. |
| OPPOSING\_POSITIONS\_NOT\_ALLOWED | The deal has been rejected to avoid having long and short open positions on the same market<br> or having long and short open positions and working orders on the same epic |
| ORDER\_DECLINED | Order declined; please contact Support |
| ORDER\_LOCKED | The order is locked and cannot be edited by the user |
| ORDER\_NOT\_FOUND | The order has not been found |
| ORDER\_SIZE\_CANNOT\_BE\_FILLED | The order size cannot be filled at this price at the moment. |
| OVER\_NORMAL\_MARKET\_SIZE | The total position size at this stop level is greater than the size allowed on this market.<br> Please reduce the size of the order. |
| PARTIALY\_CLOSED\_POSITION\_NOT\_DELETED | Position cannot be deleted as it has been partially closed. |
| POSITION\_ALREADY\_EXISTS\_IN\_OPPOSITE\_DIRECTION | The deal has been rejected because of an existing position.<br> Either set the 'force open' to be true or cancel opposing position |
| POSITION\_NOT\_AVAILABLE\_TO\_CANCEL | Position cannot be cancelled.<br> Check transaction history or contact support for further information. |
| POSITION\_NOT\_AVAILABLE\_TO\_CLOSE | Cannot close this position. Either the position no longer exists, or the size available to close is less than the size specified. |
| POSITION\_NOT\_FOUND | The position has not been found |
| REJECT\_CFD\_ORDER\_ON\_SPREADBET\_ACCOUNT | Invalid attempt to submit a CFD trade on a spreadbet account |
| REJECT\_SPREADBET\_ORDER\_ON\_CFD\_ACCOUNT | Invalid attempt to submit a spreadbet trade on a CFDaccount |
| SIZE\_INCREMENT | Order size is not an increment of the value specified for the market. |
| SPRINT\_MARKET\_EXPIRY\_AFTER\_MARKET\_CLOSE | The expiry of the position would have fallen after the closingtime of the market |
| STOP\_OR\_LIMIT\_NOT\_ALLOWED | The market does not allow stop or limit attached orders |
| STOP\_REQUIRED\_ERROR | The order requires a stop |
| STRIKE\_LEVEL\_TOLERANCE | The submitted strike level is invalid |
| SUCCESS | The operation completed successfully |
| TRAILING\_STOP\_NOT\_ALLOWED | The market or the account do not allow for trailing stops |
| UNKNOWN | The operation resulted in an unknown result condition.<br> Check transaction history or contact support for further information |
| WRONG\_SIDE\_OF\_MARKET | The requested operation has been attempted on the wrong direction | |
| size (Number) | Size |
| status (Constant) | Position status

|     |     |
| --- | --- |
| AMENDED | Amended |
| CLOSED | Closed |
| DELETED | Deleted |
| OPEN | Open |
| PARTIALLY\_CLOSED | Partially Closed | |
| stopDistance (Number) | Stop distance |
| stopLevel (Number) | Stop level |
| trailingStop (Boolean) | True if trailing stop | |

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
| error.confirms.deal-not-found | Deal confirmation not found | |
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

## Source: https://labs.ig.com/reference/positions-deal-id.html

# /positions/{dealId}

- [Version: 2](https://labs.ig.com/reference/positions-deal-id.html#GET2)
- [Version: 1](https://labs.ig.com/reference/positions-deal-id.html#GET1)

## GET (version: 2)

Returns an open position for the active account by deal identifier.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | **dealId** (String) | deal identifier |

Request

|     |     |
| --- | --- |
| Open position data

|     |     |
| --- | --- |
| market (Object) | Market data

|     |     |
| --- | --- |
| bid (Number) | Bid |
| delayTime (Number) | Instrument price delay (minutes) |
| epic (String) | Instrument epic identifier |
| expiry (String) | Instrument expiry period |
| high (Number) | High price |
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
| lotSize (Number) | Instrument lot size |
| low (Number) | Low price |
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
| offer (Number) | Offer |
| percentageChange (Number) | Price percentage change |
| scalingFactor (Number) | multiplying factor to determine actual pip value for the levels used by the instrument |
| streamingPricesAvailable (Boolean) | True if streaming prices are available, i.e. the market is tradeable and the client has appropriate permissions |
| updateTime (String) | Local time of last instrument price update |
| updateTimeUTC (String) | Time of last instrument price update | |
| position (Object) | Position data

|     |     |
| --- | --- |
| contractSize (Number) | Size of the contract |
| controlledRisk (Boolean) | True if position is risk controlled |
| createdDate (String) | Local date the position was opened |
| createdDateUTC (String) | Date the position was opened |
| currency (String) | Position currency ISO code |
| dealId (String) | deal identifier |
| dealReference (String) | Deal reference |
| direction (Constant) | Deal direction

|     |     |
| --- | --- |
| BUY | Buy |
| SELL | Sell | |
| level (Number) | Level at which the position was opened |
| limitLevel (Number) | Limit level |
| limitedRiskPremium (Number) | Limited Risk Premium |
| size (Number) | Deal size |
| stopLevel (Number) | Stop level |
| trailingStep (Number) | Trailing step size |
| trailingStopDistance (Number) | Trailing stop distance | | |

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
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.missing.credentials | The user has not provided all required security credentials. | |
| 401 | |     |     |
| --- | --- |
| error.security.account-token-invalid | The service requires an account token and the one provided was not valid | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-allowance | The account traffic allowance has been exceeded | |
| 400 | |     |     |
| --- | --- |
| invalid.input | A generic input data error has occurred | |
| 401 | |     |     |
| --- | --- |
| error.public-api.failure.kyc.required | The account is not allowed to log into public API. Please use the web platform. | |
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
| error.position.notfound | The requested position was not found | |
| 404 | |     |     |
| --- | --- |
| invalid.url |  | |
| 500 | |     |     |
| --- | --- |
| error.positions.generic | An unexpected error has been encountered on the server side, cannot proceed. Please contact the support | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |

Exceptions

## GET (version: 1)

Returns an open position for the active account by deal identifier.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | **dealId** (String) | deal identifier |

Request

|     |     |
| --- | --- |
| Open position data

|     |     |
| --- | --- |
| market (Object) | Market data

|     |     |
| --- | --- |
| bid (Number) | Bid |
| delayTime (Number) | Instrument price delay (minutes) |
| epic (String) | Instrument epic identifier |
| expiry (String) | Instrument expiry period |
| high (Number) | High price |
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
| lotSize (Number) | Instrument lot size |
| low (Number) | Low price |
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
| offer (Number) | Offer |
| percentageChange (Number) | Price percentage change |
| scalingFactor (Number) | multiplying factor to determine actual pip value for the levels used by the instrument |
| streamingPricesAvailable (Boolean) | True if streaming prices are available, i.e. the market is tradeable and the client has appropriate permissions |
| updateTime (String) | Local time of last instrument price update |
| updateTimeUTC (String) | Time of last instrument price update | |
| position (Object) | Position data

|     |     |
| --- | --- |
| contractSize (Number) | Size of the contract |
| controlledRisk (Boolean) | True if position is risk controlled |
| createdDate (String) | Local date the position was opened |
| createdDateUTC (String) | Date the position was opened |
| currency (String) | Position currency ISO code |
| dealId (String) | deal identifier |
| dealReference (String) | Deal reference |
| direction (Constant) | Deal direction

|     |     |
| --- | --- |
| BUY | Buy |
| SELL | Sell | |
| level (Number) | Level at which the position was opened |
| limitLevel (Number) | Limit level |
| limitedRiskPremium (Number) | Limited Risk Premium |
| size (Number) | Deal size |
| stopLevel (Number) | Stop level |
| trailingStep (Number) | Trailing step size |
| trailingStopDistance (Number) | Trailing stop distance | | |

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
| error.position.notfound | The requested position was not found | |
| 404 | |     |     |
| --- | --- |
| invalid.url |  | |
| 500 | |     |     |
| --- | --- |
| error.positions.generic | An unexpected error has been encountered on the server side, cannot proceed. Please contact the support | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |

Exceptions

**70% of retail investor accounts lose money when trading spread bets and CFDs with this provider.**
Spread bets and CFDs are complex instruments and come with a high risk of losing money rapidly due to leverage.
You should consider whether you understand how spread bets and CFDs work, and whether you can afford to take the
high risk of losing your money.

---

## Source: https://labs.ig.com/reference/positions-otc-deal-id.html

# /positions/otc/{dealId}

- [Version: 2](https://labs.ig.com/reference/positions-otc-deal-id.html#PUT2)
- [Version: 1](https://labs.ig.com/reference/positions-otc-deal-id.html#PUT1)

## PUT (version: 2)

Updates an OTC position.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | dealId (String) | deal identifier |
| Body | request (Object) | \[Constraint: If guaranteedStop equals true, then set stopLevel\]

\[Constraint: If guaranteedStop equals true, then trailingStop must be false\]

\[Constraint: If trailingStop equals false, then DO NOT set trailingStopDistance,trailingStopIncrement\]

\[Constraint: If trailingStop equals true, then guaranteedStop must be false\]

\[Constraint: If trailingStop equals true, then set trailingStopDistance,trailingStopIncrement,stopLevel\]

|     |     |
| --- | --- |
| guaranteedStop (Boolean) | True if a guaranteed stop is required |
| limitLevel (Number) | Limit level |
| stopLevel (Number) | Stop level |
| trailingStop (Boolean) | True if Trailing stop is required |
| trailingStopDistance (Number) | Trailing stop distance |
| trailingStopIncrement (Number) | Trailing stop step increment | |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| Edit position response |
| dealReference (String) | Deal reference | |

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

## PUT (version: 1)

Updates an OTC position.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | dealId (String) | deal identifier |
| Body | request (Object) | **Edit position request data**

\[Constraint: If guaranteedStop equals true, then set stopLevel\]

|     |     |
| --- | --- |
| guaranteedStop (Boolean) |  |
| limitLevel (Number) | Limit level |
| stopLevel (Number) | Stop level | |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| Edit position response |
| dealReference (String) | Deal reference | |

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

## Source: https://labs.ig.com/reference/positions-otc.html

# /positions/otc

- [Version: 1](https://labs.ig.com/reference/positions-otc.html#DELETE1)

## DELETE (version: 1)

Closes one or more OTC positions.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Body | request (Object) | **Close position request data**

\[Constraint: If epic is defined, then set expiry\]

\[Constraint: If orderType equals LIMIT, then DO NOT set quoteId\]

\[Constraint: If orderType equals LIMIT, then set level\]

\[Constraint: If orderType equals MARKET, then DO NOT set level,quoteId\]

\[Constraint: If orderType equals QUOTE, then set level,quoteId\]

\[Constraint: Set only one of {dealId,epic}\]

|     |     |
| --- | --- |
|  |
| dealId (String) | Deal identifier<br>\[Constraint: Pattern(regexp=".{1,30}")\] |
| direction (Constant) | Deal direction

|     |     |
| --- | --- |
| BUY | Buy |
| SELL | Sell | |
| epic (String) | Instrument epic identifier<br>\[Constraint: Pattern(regexp="\[A-Za-z0-9.\_\]{6,30}")\] |
| expiry (String) | Instrument expiry<br>\[Constraint: Pattern(regexp="(\\\d{2}-)?\[A-Z\]{3}-\\\d{2}\|-\|DFB")\] |
| level (Number) | Closing deal level |
| orderType (Constant) | Describes the order level model to be used for a position operation

|     |     |
| --- | --- |
| LIMIT | Limit orders get executed at the price seen by IG at the moment of booking a trade. A limit determines the level at which the order or the remainder of the order will be rejected. |
| MARKET | Market orders get executed at the price seen by the IG at the time of booking the trade. A level cannot be specified. Not applicable to BINARY instruments |
| QUOTE | Quote orders get executed at the specified level. The level has to be accompanied by a valid quote id. This type is only available subject to agreement with IG. | |
| quoteId (String) | Lightstreamer price quote identifier |
| size (Number) | Deal size<br>\[Constraint: NotNull\]\[Constraint: Check precision is not more than 12 decimal places\] |
| timeInForce (Constant) | The time in force determines the order fill strategy.

|     |     |
| --- | --- |
| EXECUTE\_AND\_ELIMINATE | Execute and eliminate |
| FILL\_OR\_KILL | Fill or kill | | |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| Close position response |
| dealReference (String) | Deal reference | |

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
| error.trading.otc.market-orders.not-supported | Market Orders are not supported | |
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

- [Version: 2](https://labs.ig.com/reference/positions-otc.html#POST2)
- [Version: 1](https://labs.ig.com/reference/positions-otc.html#POST1)

## POST (version: 2)

Creates an OTC position.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Body | request (Object) | **Create position request**

\[Constraint: If a limitDistance is set, then forceOpen must be true\]

\[Constraint: If a limitLevel is set, then forceOpen must be true\]

\[Constraint: If a stopDistance is set, then forceOpen must be true\]

\[Constraint: If a stopLevel is set, then forceOpen must be true\]

\[Constraint: If guaranteedStop equals true, then set only one of stopLevel,stopDistance\]

\[Constraint: If orderType equals LIMIT, then DO NOT set quoteId\]

\[Constraint: If orderType equals LIMIT, then set level\]

\[Constraint: If orderType equals MARKET, then DO NOT set level,quoteId\]

\[Constraint: If orderType equals QUOTE, then set level,quoteId\]

\[Constraint: If trailingStop equals false, then DO NOT set trailingStopIncrement\]

\[Constraint: If trailingStop equals true, then DO NOT set stopLevel\]

\[Constraint: If trailingStop equals true, then guaranteedStop must be false\]

\[Constraint: If trailingStop equals true, then set stopDistance,trailingStopIncrement\]

\[Constraint: Set only one of {limitLevel,limitDistance}\]

\[Constraint: Set only one of {stopLevel,stopDistance}\]

|     |     |
| --- | --- |
|  |
| currencyCode (String) | Currency. Restricted to available instrument currencies<br>\[Constraint: NotNull\]<br>\[Constraint: Pattern(regexp="\[A-Z\]{3}")\] |
| dealReference (String) | A user-defined reference identifying the submission of the order<br>\[Constraint: Pattern(regexp="\[A-Za-z0-9\_\\\-\]{1,30}")\] |
| direction (Constant) | Deal direction

|     |     |
| --- | --- |
| BUY | Buy |
| SELL | Sell | |
| epic (String) | Instrument epic identifier<br>\[Constraint: NotNull\]<br>\[Constraint: Pattern(regexp="\[A-Za-z0-9.\_\]{6,30}")\] |
| expiry (String) | Instrument expiry<br>\[Constraint: NotNull\]<br>\[Constraint: Pattern(regexp="(\\\d{2}-)?\[A-Z\]{3}-\\\d{2}\|-\|DFB")\] |
| forceOpen (Boolean) | True if force open is required<br>\[Constraint: NotNull\] |
| guaranteedStop (Boolean) | True if a guaranteed stop is required<br>\[Constraint: NotNull\] |
| level (Number) | Deal level |
| limitDistance (Number) | Limit distance |
| limitLevel (Number) | Limit level |
| orderType (Constant) | Describes the order level model to be used for a position operation

|     |     |
| --- | --- |
| LIMIT | Limit orders get executed at the price seen by IG at the moment of booking a trade. A limit determines the level at which the order or the remainder of the order will be rejected. |
| MARKET | Market orders get executed at the price seen by the IG at the time of booking the trade. A level cannot be specified. Not applicable to BINARY instruments |
| QUOTE | Quote orders get executed at the specified level. The level has to be accompanied by a valid quote id. This type is only available subject to agreement with IG. | |
| quoteId (String) | Lightstreamer price quote identifier |
| size (Number) | Deal size<br>\[Constraint: NotNull\]\[Constraint: Check precision is not more than 12 decimal places\] |
| stopDistance (Number) | Stop distance |
| stopLevel (Number) | Stop level |
| timeInForce (Constant) | The time in force determines the order fill strategy.

|     |     |
| --- | --- |
| EXECUTE\_AND\_ELIMINATE | Execute and eliminate |
| FILL\_OR\_KILL | Fill or kill | |
| trailingStop (Boolean) | Whether the stop has to be moved towards the current level in case of a favourable trade |
| trailingStopIncrement (Number) | increment step in pips for the trailing stop | |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| Create position response |
| dealReference (String) | Deal reference of the transaction | |

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
| error.trading.otc.market-orders.not-supported | Market Orders are not supported | |
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
| error.trading.otc.instrument-not-found | Instrument not found | |
| 404 | |     |     |
| --- | --- |
| invalid.url |  | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |

Exceptions

## POST (version: 1)

Creates an OTC position.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Body | request (Object) | **Create position request**

\[Constraint: If guaranteedStop equals true, then set only one of stopLevel,stopDistance\]

\[Constraint: If orderType equals LIMIT, then DO NOT set quoteId\]

\[Constraint: If orderType equals LIMIT, then set level\]

\[Constraint: If orderType equals MARKET, then DO NOT set level,quoteId\]

\[Constraint: If orderType equals QUOTE, then set level,quoteId\]

\[Constraint: Set only one of {limitLevel,limitDistance}\]

\[Constraint: Set only one of {stopLevel,stopDistance}\]

|     |     |
| --- | --- |
|  |
| currencyCode (String) | Currency. Restricted to available instrument currencies<br>\[Constraint: NotNull\]<br>\[Constraint: Pattern(regexp="\[A-Z\]{3}")\] |
| dealReference (String) | A user-defined reference identifying the submission of the order<br>\[Constraint: Pattern(regexp="\[A-Za-z0-9\_\\\-\]{1,30}")\] |
| direction (Constant) | Deal direction

|     |     |
| --- | --- |
| BUY | Buy |
| SELL | Sell | |
| epic (String) | Instrument epic identifier<br>\[Constraint: NotNull\]<br>\[Constraint: Pattern(regexp="\[A-Za-z0-9.\_\]{6,30}")\] |
| expiry (String) | Instrument expiry<br>\[Constraint: NotNull\]<br>\[Constraint: Pattern(regexp="(\\\d{2}-)?\[A-Z\]{3}-\\\d{2}\|-\|DFB")\] |
| forceOpen (Boolean) | True if force open is required<br>\[Constraint: NotNull\] |
| guaranteedStop (Boolean) | True if a guaranteed stop is required<br>\[Constraint: NotNull\] |
| level (Number) | Deal level |
| limitDistance (Number) | Limit distance |
| limitLevel (Number) | Limit level |
| orderType (Constant) | Describes the order level model to be used for a position operation

|     |     |
| --- | --- |
| LIMIT | Limit orders get executed at the price seen by IG at the moment of booking a trade. A limit determines the level at which the order or the remainder of the order will be rejected. |
| MARKET | Market orders get executed at the price seen by the IG at the time of booking the trade. A level cannot be specified. Not applicable to BINARY instruments |
| QUOTE | Quote orders get executed at the specified level. The level has to be accompanied by a valid quote id. This type is only available subject to agreement with IG. | |
| quoteId (String) | Lightstreamer price quote identifier |
| size (Number) | Deal size<br>\[Constraint: NotNull\]\[Constraint: Check precision is not more than 12 decimal places\] |
| stopDistance (Number) | Stop distance |
| stopLevel (Number) | Stop level | |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| Create position response |
| dealReference (String) | Deal reference of the transaction | |

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
| error.trading.otc.market-orders.not-supported | Market Orders are not supported | |
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
| error.trading.otc.instrument-not-found | Instrument not found | |
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

## Source: https://labs.ig.com/reference/positions.html

# /positions

- [Version: 2](https://labs.ig.com/reference/positions.html#GET2)
- [Version: 1](https://labs.ig.com/reference/positions.html#GET1)

## GET (version: 2)

Returns all open positions for the active account.

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| positions (Array\[Object\]) | Open position data

|     |     |
| --- | --- |
| market (Object) | Market data

|     |     |
| --- | --- |
| bid (Number) | Bid |
| delayTime (Number) | Instrument price delay (minutes) |
| epic (String) | Instrument epic identifier |
| expiry (String) | Instrument expiry period |
| high (Number) | High price |
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
| lotSize (Number) | Instrument lot size |
| low (Number) | Low price |
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
| offer (Number) | Offer |
| percentageChange (Number) | Price percentage change |
| scalingFactor (Number) | multiplying factor to determine actual pip value for the levels used by the instrument |
| streamingPricesAvailable (Boolean) | True if streaming prices are available, i.e. the market is tradeable and the client has appropriate permissions |
| updateTime (String) | Local time of last instrument price update |
| updateTimeUTC (String) | Time of last instrument price update | |
| position (Object) | Position data

|     |     |
| --- | --- |
| contractSize (Number) | Size of the contract |
| controlledRisk (Boolean) | True if position is risk controlled |
| createdDate (String) | Local date the position was opened |
| createdDateUTC (String) | Date the position was opened |
| currency (String) | Position currency ISO code |
| dealId (String) | Deal identifier |
| dealReference (String) | Deal reference |
| direction (Constant) | Deal direction

|     |     |
| --- | --- |
| BUY | Buy |
| SELL | Sell | |
| level (Number) | Level at which the position was opened |
| limitLevel (Number) | Limit level |
| limitedRiskPremium (Number) | Limited Risk Premium |
| size (Number) | Deal size |
| stopLevel (Number) | Stop level |
| trailingStep (Number) | Trailing step size |
| trailingStopDistance (Number) | Trailing stop distance | | | |

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
| error.position.notfound | The requested position was not found | |
| 404 | |     |     |
| --- | --- |
| invalid.url | Invalid URL | |
| 500 | |     |     |
| --- | --- |
| error.positions.generic | An unexpected error has been encountered on the server side, cannot proceed. Please contact the support | |
| 500 | |     |     |
| --- | --- |
| system.error | System error | |

Exceptions

## GET (version: 1)

Returns all open positions for the active account.

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| positions (Array\[Object\]) | Open position data

|     |     |
| --- | --- |
| market (Object) | Market data

|     |     |
| --- | --- |
| bid (Number) | Bid |
| delayTime (Number) | Instrumentprice delay (minutes) |
| epic (String) | Instrumentepic identifier |
| expiry (String) | Instrumentexpiryperiod |
| high (Number) | High price |
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
| lotSize (Number) | Instrumentlot size |
| low (Number) | Low price |
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
| offer (Number) | Offer |
| percentageChange (Number) | Price percentage change |
| scalingFactor (Number) | multiplying factor to determine actual pip value for the levels used by the instrument |
| streamingPricesAvailable (Boolean) | True if streaming prices are available, i.e. the market is tradeable and the client has appropriate permissions |
| updateTime (String) | Last instrumentprice update time | |
| position (Object) | Position data

|     |     |
| --- | --- |
| contractSize (Number) | Size of the contract |
| controlledRisk (Boolean) | True if position is risk controlled |
| createdDate (String) | Date the position was opened |
| currency (String) | Positioncurrency ISO code |
| dealId (String) | Deal identifier |
| dealSize (Number) | Deal size |
| direction (Constant) | Deal direction

|     |     |
| --- | --- |
| BUY | Buy |
| SELL | Sell | |
| limitLevel (Number) | Limit level |
| limitedRiskPremium (Number) | Limited Risk Premium |
| openLevel (Number) | Level at which the position was opened |
| stopLevel (Number) | Stop level |
| trailingStep (Number) | Trailing step size |
| trailingStopDistance (Number) | Trailing stop distance | | | |

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
| error.position.notfound | The requested position was not found | |
| 404 | |     |     |
| --- | --- |
| invalid.url |  | |
| 500 | |     |     |
| --- | --- |
| error.positions.generic | An unexpected error has been encountered on the server side, cannot proceed. Please contact the support | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |

Exceptions

Spread bets and CFDs are complex instruments and come with a high risk of losing money rapidly due to leverage.
**XX% of retail investor accounts lose money when trading spread bets and CFDs with this provider.**
You should consider whether you understand how spread bets and CFDs work, and whether you can afford to take the high risk of losing your money.

---

## Source: https://labs.ig.com/reference/repeat-deal-window.html

# /repeat-deal-window

- [Version: 1](https://labs.ig.com/reference/repeat-deal-window.html#GET1)

## GET (version: 1)

Returns the repeat deal window status for the account. This current status determines the price tier that additional deals in the same epics will be in.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Request(Optional) | epic (String) | The epic to filter by if you are only interested in a particular instrument |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| accountId (String) | The account that the repeat deal window data is for |
| requestStartTime (Number) | The timestamp in milliseconds of the time that the request was received |
| repeatDealingEntryList (Array\[Object\]) | repeatDealingEntry

|     |     |
| --- | --- |
| instrumentSource (String) | Always 'E' for epic at the moment |
| instrumentValue (String) | The identifier of the instrument. For now always the epic. |
| currencyList (Array\[Object\]) | currency

|     |     |
| --- | --- |
| currency (String) | For example GBP for UK Pounds Sterling |
| buy (Array\[Object\]) | executionDetails

|     |     |
| --- | --- |
| size (Number) | size of a particular deal within the current time window |
| expiry (Number) | the expiry time at which that this deal is no longer relevant to the price of trades | |
| sell (Array\[Object\]) | executionDetails

|     |     |
| --- | --- |
| size (Number) | size of a particular deal within the current time window |
| expiry (Number) | the expiry time at which that this deal is no longer relevant to the price of trades | | | | |

Response

| HTTP code | Description |
| --- | --- |
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

