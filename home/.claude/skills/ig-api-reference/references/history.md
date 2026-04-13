# IG REST API - History

---

## Source: https://labs.ig.com/reference/history-activity-dates.html

# /history/activity/{fromDate}/{toDate}

- [Version: 1](https://labs.ig.com/reference/history-activity-dates.html#GET1)

## GET (version: 1)

Returns the account activity history for the given date range.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | fromDate (String) | Start date in dd-mm-yyyy format |
| Path | toDate (String) | End date in dd-mm-yyyy format |

Request

| |     |     |
| --- | --- |
| activities (Array\[Object\]) | |     |     |
| --- | --- |
| actionStatus (String) | The action status of the activity item. The value of the action status can be any one of these.<br> "ACCEPT" - Manual accept or auto accept.<br> "REJECT" - Manual reject or declined.<br> "MANUAL" - Gone manual and in pending. Cannot determine if accepted or rejected.<br> "NOT\_SET" - Default value which should have been overwritten by more specific status. Possibly caused by an error in processing by order server. |
| activity (String) | The high-level activity description, e.g. "Order" |
| activityHistoryId (String) | Activity history identifier |
| channel (String) | The channel the activity occurred on, e.g. "WEB" or "Mobile" |
| currency (String) | The currency, e.g. a pound symbol. |
| date (String) | The date of the activity item in format DD/MM/YY for en\_GB locale |
| dealId (String) | Deal identifier |
| epic (String) | Instrument epic identifier |
| level (String) | The market level that the activity item occurred at, e.g. "5253.5" |
| limit (String) | The limit level of the activity item if any, e.g. "5233.5" or "-" |
| marketName (String) | The market name of the activity item, e.g. "FTSE 100". This will be much longer for a sprint market, e.g. "FTSE 100 to be below 6598.4 at 12:42:05 on 13/08/13" |
| period (String) | The period of the activity item, e.g. "DFB" or "02-SEP-11". This will be the expiry time/date for sprint markets, e.g. "13/08/13 12:42:05" |
| result (String) | The description of the result of the activity, e.g. "Guaranteed Position opened: KYG46BAQ" |
| size (String) | The size of the activity item, e.g. "+1" OR "-3.85". There will be no direction symbol if the activity is for a sprint market |
| stop (String) | The stop level of the activity item, if any, e.g. "5233.5" or "-" |
| stopType (String) | The type of stop if applicable to the activity item, either "G" for guaranteed stop, or "N" for non-guaranteed stop, or T(50) for a trailing stop of step size 50 |
| time (String) | The time that the activity item occurred, in format hh:mm | | |

Response

| HTTP code | Description |
| --- | --- |
| 400 | |     |     |
| --- | --- |
| error.public-api.failure.encryption.required | A login has been attempted to the login V1 service by a client from the IG Singapore company.<br> They need to use the v2 version as they need to send their passwords encrypyted. | |
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

## Source: https://labs.ig.com/reference/history-activity-period.html

# /history/activity/{lastPeriod}

- [Version: 1](https://labs.ig.com/reference/history-activity-period.html#GET1)

## GET (version: 1)

Returns the account activity history for the last specified period.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | lastPeriod (long) | Interval in milliseconds |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| activities (Array\[Object\]) | |     |     |
| --- | --- |
| actionStatus (String) | The action status of the activity item. The value of the action status can be any one of these.<br> "ACCEPT" - Manual accept or auto accept.<br> "REJECT" - Manual reject or declined.<br> "MANUAL" - Gone manual and in pending. Cannot determine if accepted or rejected.<br> "NOT\_SET" - Default value which should have been overwritten by more specific status. Possibly caused by an error in processing by order server. |
| activity (String) | The high-level activity description, e.g. "Order" |
| activityHistoryId (String) | Activity history identifier |
| channel (String) | The channel the activity occurred on, e.g. "WEB" or "Mobile" |
| currency (String) | The currency, e.g. a pound symbol. |
| date (String) | The date of the activity item in format DD/MM/YY for en\_GB locale |
| dealId (String) | Deal identifier |
| epic (String) | Instrument epic identifier |
| level (String) | The market level that the activity item occurred at, e.g. "5253.5" |
| limit (String) | The limit level of the activity item if any, e.g. "5233.5" or "-" |
| marketName (String) | The market name of the activity item, e.g. "FTSE 100"<br> This will be much longer for a sprint market, e.g. "FTSE 100 to be below 6598.4 at 12:42:05 on 13/08/13" |
| period (String) | The period of the activity item, e.g. "DFB" or "02-SEP-11".<br> This will be the expiry time/date for sprint markets, e.g. "13/08/13 12:42:05" |
| result (String) | The description of the result of the activity, e.g. "Guaranteed Position opened: KYG46BAQ" |
| size (String) | The size of the activity item, e.g. "+1" OR "-3.85".<br> There will be no direction symbol if the activity is for a sprint market |
| stop (String) | The stop level of the activity item, if any, e.g. "5233.5" or "-" |
| stopType (String) | The type of stop if applicable to the activity item, either "G" for guaranteed stop, or "N" for non-guaranteed stop, or T(50) for a trailing stop of step size 50 |
| time (String) | The time that the activity item occurred, in format hh:mm | | |

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

## Source: https://labs.ig.com/reference/history-activity.html

# /history/activity

- [Version: 3](https://labs.ig.com/reference/history-activity.html#GET3)
- [Version: 2](https://labs.ig.com/reference/history-activity.html#GET2)

## GET (version: 3)

Returns the account activity history.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Request (Optional) | from (DateTime) | Start date |
| Request (Optional) | to (DateTime) | End date (Default = current time. A date without time component refers to the end of that day.) |
| Request (Optional) (Default=false) | detailed (boolean) | Indicates whether to retrieve additional details about the activity |
| Request (Optional) | dealId (String) | Deal ID |
| Request (Optional) | filter (String) | FIQL filter (supported operators: ==\|!=\|,\|;) |
| Request (Optional) (Default=50) | pageSize (int) | Page size (min: 10, max: 500) |

Request

| |     |     |
| --- | --- |
| activities (Array\[Object\]) | |     |     |
| --- | --- |
| channel (Constant) | The channel which triggered the activity.

|     |     |
| --- | --- |

| DEALER | Dealer |
| MOBILE | Mobile |
| PUBLIC\_FIX\_API | Public FIX API |
| PUBLIC\_WEB\_API | Public Web API |
| SYSTEM | System |
| WEB | Web | |
| date (String) | The date of the activity item |
| dealId (String) | Deal identifier |
| description (String) | Activity description |
| details (Object) | Activity details

|     |     |
| --- | --- |

| actions (Array\[Object\]) | Deal affected by an activity

|     |     |
| --- | --- |

| actionType (Constant) | Action type

|     |     |
| --- | --- |

| LIMIT\_ORDER\_AMENDED | Limit order amended |
| LIMIT\_ORDER\_DELETED | Limit order deleted |
| LIMIT\_ORDER\_FILLED | Limit order filled |
| LIMIT\_ORDER\_OPENED | Limit order opened |
| LIMIT\_ORDER\_ROLLED | Limit order rolled |
| POSITION\_CLOSED | Position closed |
| POSITION\_DELETED | Position deleted |
| POSITION\_OPENED | Position opened |
| POSITION\_PARTIALLY\_CLOSED | Position partially closed |
| POSITION\_ROLLED | Position rolled |
| STOP\_LIMIT\_AMENDED | Stop or limit amended |
| STOP\_ORDER\_AMENDED | Stop order amended |
| STOP\_ORDER\_DELETED | Stop order deleted |
| STOP\_ORDER\_FILLED | Stop order filled |
| STOP\_ORDER\_OPENED | Stop order opened |
| STOP\_ORDER\_ROLLED | Stop order rolled |
| UNKNOWN | Unknown |
| WORKING\_ORDER\_DELETED | Working order deleted | |
| affectedDealId (String) | Affected deal id | |
| currency (String) | Currency |
| dealReference (String) | Deal reference |
| direction (Constant) | Deal direction

|     |     |
| --- | --- |

| BUY | Buy |
| SELL | Sell | |
| goodTillDate (String) | Good till date |
| guaranteedStop (Boolean) | Guaranteed stop |
| level (Number) | Level |
| limitDistance (Number) | Limit distance |
| limitLevel (Number) | Limit level |
| marketName (String) | Market name |
| size (Number) | Size |
| stopDistance (Number) | Stop distance |
| stopLevel (Number) | Stop level |
| trailingStep (Number) | Trailing step size |
| trailingStopDistance (Number) | Trailing stop distance | |
| epic (String) | Instrument epic identifier |
| period (String) | The period of the activity item, e.g. "DFB" or "02-SEP-11". This will be the expiry time/date for sprint markets, e.g. "2015-10-13T12:42:05" |
| status (Constant) | Action status

|     |     |
| --- | --- |

| ACCEPTED | Accepted |
| REJECTED | Rejected |
| UNKNOWN | Unknown | |
| type (Constant) | Activity type

|     |     |
| --- | --- |

| EDIT\_STOP\_AND\_LIMIT | Amend stop or limit activity |
| POSITION | Position activity |
| SYSTEM | System generated activity |
| WORKING\_ORDER | Working order activity | | |
| metadata (Object) | Paging metadata

|     |     |
| --- | --- |

| paging (Object) | Paging metadata

|     |     |
| --- | --- |

| next (String) | Next page |
| size (Number) | Page size | | | |

Response

| HTTP code | Description |
| --- | --- |
| 400 | |     |     |
| --- | --- |
| error.public-api.failure.encryption.required | A login has been attempted to the login V1 service by a client from the IG Singapore company.<br> They need to use the v2 version as they need to send their passwords encrypyted. | |
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

## GET (version: 2)

Returns the account activity history.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Request (Optional) | from (DateTime) | Start date |
| Request (Optional) | to (DateTime) | End date (date without time refers to the end of that day) |
| Request (Optional) (Default=600) | maxSpanSeconds (long) | Limits the timespan in seconds through to current time (not applicable if a date range has been specified) |
| Request (Optional) (Default=20) | pageSize (int) | Page size (disable paging = 0) |
| Request (Optional) (Default=1) | pageNumber (int) | Page number |

Request

| |     |     |
| --- | --- |
| activities (Array\[Object\]) | |     |     |
| --- | --- |
| actionStatus (String) | The action status of the activity item. The value of the action status can be any one of these.<br> "ACCEPT" - Manual accept or auto accept.<br> "REJECT" - Manual reject or declined.<br> "MANUAL" - Gone manual and in pending. Cannot determine if accepted or rejected.<br> "NOT\_SET" - Default value which should have been overwritten by more specific status. Possibly caused by an error in processing by order server. |
| activity (String) | The high-level activity description, e.g. "Order" |
| activityHistoryId (String) | Activity history identifier |
| channel (String) | The channel the activity occurred on, e.g. "WEB" or "Mobile" |
| currency (String) | The currency, e.g. a pound symbol. |
| date (String) | The date of the activity item |
| dealId (String) | Deal identifier |
| epic (String) | Instrument epic identifier |
| level (String) | The market level that the activity item occurred at, e.g. "5253.5" |
| limit (String) | The limit level of the activity item if any, e.g. "5233.5" or "-" |
| marketName (String) | The market name of the activity item, e.g. "FTSE 100". This will be much longer for a sprint market, e.g. "FTSE 100 to be below 6598.4 at 12:42:05 on 13/08/13" |
| period (String) | The period of the activity item, e.g. "DFB" or "02-SEP-11". This will be the expiry time/date for sprint markets, e.g. "2015-10-13T12:42:05" |
| result (String) | The description of the result of the activity, e.g. "Guaranteed Position opened: KYG46BAQ" |
| size (String) | The size of the activity item, e.g. "+1" OR "-3.85". There will be no direction symbol if the activity is for a sprint market |
| stop (String) | The stop level of the activity item, if any, e.g. "5233.5" or "-" |
| stopType (String) | The type of stop if applicable to the activity item, either "G" for guaranteed stop, or "N" for non-guaranteed stop, or T(50) for a trailing stop of step size 50 | |
| metadata (Object) | Paging metadata

|     |     |
| --- | --- |

| pageData (Object) | Paging metadata

|     |     |
| --- | --- |

| pageNumber (Number) | Page number |
| pageSize (Number) | Page size |
| totalPages (Number) | Total number of pages | |
| size (Number) | Size | | |

Response

| HTTP code | Description |
| --- | --- |
| 400 | |     |     |
| --- | --- |
| error.public-api.failure.encryption.required | A login has been attempted to the login V1 service by a client from the IG Singapore company.<br> They need to use the v2 version as they need to send their passwords encrypyted. | |
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

## Source: https://labs.ig.com/reference/history-transactions-dates.html

# /history/transactions/{transactionType}/{fromDate}/{toDate}

- [Version: 1](https://labs.ig.com/reference/history-transactions-dates.html#GET1)

## GET (version: 1)

Returns the transaction history for the specified transaction type and given date range.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | transactionType (TransactionType) | Transaction type (( ALL, ALL\_DEAL, DEPOSIT, WITHDRAWAL ) ) |
| Path | fromDate (String) | Start date in dd-mm-yyyy format |
| Path | toDate (String) | End date in dd-mm-yyyy format |

Request

| List of transactions

|     |     |
| --- | --- |
| transactions (Array\[Object\]) | Transaction data

|     |     |
| --- | --- |
| cashTransaction (Boolean) | True if this was a cash transaction |
| closeLevel (String) | Level at which the order was closed |
| currency (String) | Order currency |
| date (String) | Transaction date, format dd-MMM-yyyy |
| instrumentName (String) | Instrument name |
| openLevel (String) | Level at which the order was opened |
| period (String) | Period in milliseconds |
| profitAndLoss (String) | Profit and loss |
| reference (String) | Reference |
| size (String) | Formatted order size, including the direction (+ for buy, - for sell) |
| transactionType (String) | Transaction type | | |

Response

| HTTP code | Description |
| --- | --- |
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

## Source: https://labs.ig.com/reference/history-transactions-period.html

# /history/transactions/{transactionType}/{lastPeriod}

- [Version: 1](https://labs.ig.com/reference/history-transactions-period.html#GET1)

## GET (version: 1)

Returns the transaction history for the specified transaction type and period.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | transactionType (TransactionType) | Transaction type (( ALL, ALL\_DEAL, DEPOSIT, WITHDRAWAL ) ) |
| Path | lastPeriod (long) | Interval in milliseconds |

Request

| List of transactions

|     |     |
| --- | --- |
| transactions (Array\[Object\]) | Transaction data

|     |     |
| --- | --- |
| cashTransaction (Boolean) | True if this was a cash transaction |
| closeLevel (String) | Level at which the order was closed |
| currency (String) | Order currency |
| date (String) | Transaction date, format dd-MMM-yyyy |
| instrumentName (String) | Instrument name |
| openLevel (String) | Level at which the order was opened |
| period (String) | Period in milliseconds |
| profitAndLoss (String) | Profit and loss |
| reference (String) | Reference |
| size (String) | Formatted order size, including the direction (+ for buy, - for sell) |
| transactionType (String) | Transaction type | | |

Response

| HTTP code | Description |
| --- | --- |
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

## Source: https://labs.ig.com/reference/history-transactions.html

# /history/transactions

- [Version: 2](https://labs.ig.com/reference/history-transactions.html#GET2)

## GET (version: 2)

Returns the transaction history. Returns the minute prices within the last 10 minutes by default.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Request (Optional) (Default=ALL) | type (TransactionType) | Transaction type


|     |     |
| --- | --- |
| ALL | All |
| ALL\_DEAL | Deals |
| DEPOSIT | Deposit |
| WITHDRAWAL | Withdrawal | |
| Request (Optional) | from (DateTime) | Start date |
| Request (Optional) | to (DateTime) | End date (date without time refers to the end of that day) |
| Request (Optional) (Default=600) | maxSpanSeconds (long) | Limits the timespan in seconds through to current time (not applicable if a date range has been specified) |
| Request (Optional) (Default=20) | pageSize (int) | Page size (disable paging = 0) |
| Request (Optional) (Default=1) | pageNumber (int) | Page number |

Request

|     |     |
| --- | --- |
| List of transactions

|     |     |
| --- | --- |
| metadata (Object) | Paging metadata

|     |     |
| --- | --- |
| pageData (Object) | Paging metadata

|     |     |
| --- | --- |
| pageNumber (Number) | Page number |
| pageSize (Number) | Page size |
| totalPages (Number) | Total number of pages | |
| size (Number) | Size | |
| transactions (Array\[Object\]) | Transaction data

|     |     |
| --- | --- |
| cashTransaction (Boolean) | True if this was a cash transaction |
| closeLevel (String) | Level at which the order was closed |
| currency (String) | Order currency |
| date (String) | Local date |
| dateUtc (String) | Date |
| instrumentName (String) | Instrument name |
| openDateUtc (String) | Position opened date |
| openLevel (String) | Level at which the order was opened |
| period (String) | Period |
| profitAndLoss (String) | Profit and loss |
| reference (String) | Reference |
| size (String) | Formatted order size, including the direction (+ for buy, - for sell) |
| transactionType (String) | Transaction type | | |

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

