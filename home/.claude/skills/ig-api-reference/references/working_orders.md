# IG REST API - Working Orders

---

## Source: https://labs.ig.com/reference/working-orders-otc-deal-id.html

# /working-orders/otc/{dealId}

- [Version: 2](https://labs.ig.com/reference/working-orders-otc-deal-id.html#DELETE2)
- [Version: 1](https://labs.ig.com/reference/working-orders-otc-deal-id.html#DELETE1)

## DELETE (version: 2)

Deletes an OTC working order.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | dealId (String) | Deal identifier |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| Delete working order response |
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

## DELETE (version: 1)

Deletes an OTC working order.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | dealId (String) | Deal identifier |
| Body | request (Object) | Delete working order request. N.B.: This request requires a payload with no request attributes (e.g. empty json string: {} ) |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| Delete working order response |
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

- [Version: 2](https://labs.ig.com/reference/working-orders-otc-deal-id.html#PUT2)
- [Version: 1](https://labs.ig.com/reference/working-orders-otc-deal-id.html#PUT1)

## PUT (version: 2)

Updates an OTC working order.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | dealId (String) | Deal identifier |
| Body | request (Object) | **Edit working order request**

\[Constraint: If guaranteedStop equals true, then set stopLevel\]

\[Constraint: If timeInForce equals GOOD\_TILL\_DATE, then set goodTillDate\]

\[Constraint: Set only one of {limitLevel,limitDistance}\]

\[Constraint: Set only one of {stopLevel,stopDistance}\]

|     |     |
| --- | --- |
| goodTillDate (String) | Good till date - This accepts two possible formats either yyyy/mm/dd hh:mm:ss in UTC Time or Unix Timestamp in milliseconds |
| guaranteedStop (Boolean) |  |
| level (Number) | Limit level<br>\[Constraint: NotNull\] |
| limitDistance (Number) | Limit distance |
| limitLevel (Number) | Limit level |
| stopDistance (Number) | Stop distance |
| stopLevel (Number) | Stop level |
| timeInForce (Constant) | |     |     |
| --- | --- |
| Time in force |
| GOOD\_TILL\_CANCELLED | Good until cancelled |
| GOOD\_TILL\_DATE | Good until specified date | |
| type (Constant) | |     |     |
| --- | --- |
| Working order type |
| LIMIT | Limit working order |
| STOP | Stop working order | | |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| Edit working order response |
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

Updates an OTC working order.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | dealId (String) | Deal identifier |
| Body | request (Object) | **Edit working order request**

\[Constraint: If guaranteedStop equals true, then set stopLevel\]

\[Constraint: If timeInForce equals GOOD\_TILL\_DATE, then set goodTillDate\]

\[Constraint: Set only one of {limitLevel,limitDistance}\]

\[Constraint: Set only one of {stopLevel,stopDistance}\]

|     |     |
| --- | --- |
| goodTillDate (String) | Good till date - This accepts two possible formats either yyyy/mm/dd hh:mm:ss in UTC Time or Unix Timestamp in milliseconds |
| guaranteedStop (Boolean) |  |
| level (Number) | Limit level<br>\[Constraint: NotNull\] |
| limitDistance (Number) | Limit distance |
| limitLevel (Number) | Limit level |
| stopDistance (Number) | Stop distance |
| stopLevel (Number) | Stop level |
| timeInForce (Constant) | |     |     |
| --- | --- |
| Time in force |
| GOOD\_TILL\_CANCELLED | Good until cancelled |
| GOOD\_TILL\_DATE | Good until specified date | |
| type (Constant) | |     |     |
| --- | --- |
| Working order type |
| LIMIT | Limit working order |
| STOP | Stop working order | | |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| Edit working order response |
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

## Source: https://labs.ig.com/reference/working-orders-otc.html

# /working-orders/otc

- [Version: 2](https://labs.ig.com/reference/working-orders-otc.html#POST2)
- [Version: 1](https://labs.ig.com/reference/working-orders-otc.html#POST1)

## POST (version: 2)

Creates an OTC working order.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Body | request (Object) | **Create working order request**

\[Constraint: If guaranteedStop equals true, then set only one of stopDistance\]

\[Constraint: If timeInForce equals GOOD\_TILL\_DATE, then set goodTillDate\]

\[Constraint: Set only one of {limitLevel,limitDistance}\]

\[Constraint: Set only one of {stopLevel,stopDistance}\]

|     |     |
| --- | --- |
| currencyCode (String) | Currency. Restricted to available instrument currencies<br>\[Constraint: NotNull\]<br>\[Constraint: Pattern(regexp="\[A-Z\]{3}")\] |
| dealReference (String) | A user-defined reference identifying the submission of the order<br>\[Constraint: Pattern(regexp="\[A-Za-z0-9\_\\\-\]{1,30}")\] |
| direction (Constant) | |     |     |
| --- | --- |
| Deal direction |
| BUY | Buy |
| SELL | Sell | |
| epic (String) | Instrument epic<br>\[Constraint: NotNull\] |
| expiry (String) | Expiry<br>\[Constraint: NotNull\]<br>\[Constraint: Pattern(regexp="(\\\d{2}-)?\[A-Z\]{3}-\\\d{2}\|-\|DFB")\] |
| forceOpen (Boolean) | Force open |
| goodTillDate (String) | Good till date - This accepts two possible formats either yyyy/mm/dd hh:mm:ss in UTC Time or Unix Timestamp in milliseconds<br>\[Constraint: Pattern(regexp="(\\\d{4}/\\\d{2}/\\\d{2} \\\d{2}:\\\d{2}:\\\d{2}\|\\\d\*)")\] |
| guaranteedStop (Boolean) | Guaranteed stop<br>\[Constraint: NotNull\] |
| level (Number) | Deal level<br>\[Constraint: NotNull\] |
| limitDistance (Number) | Limit distance |
| limitLevel (Number) | Limit level |
| size (Number) | Order size<br>\[Constraint: NotNull\]\[Constraint: Check precision is not more than 12 decimal places\] |
| stopDistance (Number) | Stop distance |
| stopLevel (Number) | Stop level |
| timeInForce (Constant) | |     |     |
| --- | --- |
| Time in force |
| GOOD\_TILL\_CANCELLED | Good until cancelled |
| GOOD\_TILL\_DATE | Good until specified date | |
| type (Constant) | |     |     |
| --- | --- |
| Working order type |
| LIMIT | Limit working order |
| STOP | Stop working order | | |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| Create working order response |
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

## POST (version: 1)

Creates an OTC working order.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Body | request (Object) | **Create working order request**

\[Constraint: If guaranteedStop equals true, then set only one of stopLevel,stopDistance\]

\[Constraint: If timeInForce equals GOOD\_TILL\_DATE, then set goodTillDate\]

\[Constraint: Set only one of {limitLevel,limitDistance}\]

\[Constraint: Set only one of {stopLevel,stopDistance}\]

|     |     |
| --- | --- |
| currencyCode (String) | Currency. Restricted to available instrument currencies<br>\[Constraint: NotNull\]<br>\[Constraint: Pattern(regexp="\[A-Z\]{3}")\] |
| dealReference (String) | A user-defined reference identifying the submission of the order<br>\[Constraint: Pattern(regexp="\[A-Za-z0-9\_\\\-\]{1,30}")\] |
| direction (Constant) | |     |     |
| --- | --- |
| Deal direction |
| BUY | Buy |
| SELL | Sell | |
| epic (String) | Instrument epic<br>\[Constraint: NotNull\] |
| expiry (String) | Expiry<br>\[Constraint: NotNull\]<br>\[Constraint: Pattern(regexp="(\\\d{2}-)?\[A-Z\]{3}-\\\d{2}\|-\|DFB")\] |
| goodTillDate (String) | Good till date - format is yyyy/mm/dd hh:mm:ss in UTC Time<br>\[Constraint: Pattern(regexp="(\\\d{4}/\\\d{2}/\\\d{2} \\\d{2}:\\\d{2}:\\\d{2}\|\\\d\*)")\] |
| guaranteedStop (Boolean) | Guaranteed stop<br>\[Constraint: NotNull\] |
| level (Number) | Deal level<br>\[Constraint: NotNull\] |
| limitDistance (Number) | Limit distance |
| limitLevel (Number) | Limit level |
| size (Number) | Order size<br>\[Constraint: NotNull\]\[Constraint: Check precision is not more than 12 decimal places\] |
| stopDistance (Number) | Stop distance |
| stopLevel (Number) | Stop level |
| timeInForce (Constant) | |     |     |
| --- | --- |
| Time in force |
| GOOD\_TILL\_CANCELLED | Good until cancelled |
| GOOD\_TILL\_DATE | Good until specified date | |
| type (Constant) | |     |     |
| --- | --- |
| Working order type |
| LIMIT | Limit working order |
| STOP | Stop working order | | |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| Create working order response |
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

## Source: https://labs.ig.com/reference/working-orders.html

# /working-orders

- [Version: 2](https://labs.ig.com/reference/working-orders.html#GET2)
- [Version: 1](https://labs.ig.com/reference/working-orders.html#GET1)

## GET (version: 2)

Returns all open working orders for the active account.

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| List working orders response |
| working-orders (Array\[Object\]) | |     |     |
| --- | --- |
| marketData (Object) | Market data

|     |     |
| --- | --- |
| bid (Number) | Bid |
| delayTime (Number) | Instrument price delay (minutes) |
| epic (String) | Instrument epic identifier |
| exchangeId (String) | Exchange identifier for this instrument |
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
| streamingPricesAvailable (Boolean) | True if streaming prices are available |
| updateTime (String) | Local time of last instrument price update |
| updateTimeUTC (String) | Time of last instrument price update | |
| workingOrderData (Object) | Working order data

|     |     |
| --- | --- |
| createdDate (String) | Local date and time when the order was created. Format is yyyy/MM/dd kk:mm:ss:SSS |
| createdDateUTC (String) | Date and time when the order was created. |
| currencyCode (String) | Currency ISO code |
| dealId (String) | Deal identifier |
| direction (Constant) | Deal direction

|     |     |
| --- | --- |
| BUY | Buy |
| SELL | Sell | |
| dma (Boolean) | True if this is a DMA working order |
| epic (String) | Instrument epic identifier |
| goodTillDate (String) | The date and time the working order will be deleted if not triggered till then. Date format is yyyy/MM/dd hh:mm |
| goodTillDateISO (String) | The date and time the working order will be deleted if not triggered till then. |
| guaranteedStop (Boolean) | True if controlled risk |
| limitDistance (Number) | Limit distance |
| limitedRiskPremium (Number) | Limited Risk Premium |
| orderLevel (Number) | Price at which to execute the trade |
| orderSize (Number) | Order size |
| orderType (Constant) | Working order type

|     |     |
| --- | --- |
| LIMIT | Limit working order |
| STOP | Stop working order | |
| stopDistance (Number) | Stop distance |
| timeInForce (Constant) | Describes the type of time in force for a given order

|     |     |
| --- | --- |
| GOOD\_TILL\_CANCELLED | Good until cancelled |
| GOOD\_TILL\_DATE | Good until specified date | | | | |

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
| error.trading.otc.instrument-not-found | Instrument not found | |
| 404 | |     |     |
| --- | --- |
| invalid.url |  | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |

Exceptions

## GET (version: 1)

Returns all open working orders for the active account.

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| List working orders response |
| working-orders (Array\[Object\]) | |     |     |
| --- | --- |
| marketData (Object) | Market data

|     |     |
| --- | --- |
| bid (Number) | Bid |
| delayTime (Number) | Instrument price delay (minutes) |
| epic (String) | Instrument epic identifier |
| exchangeId (String) | Exchange identifier for this instrument |
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
| streamingPricesAvailable (Boolean) | True if streaming prices are available |
| updateTime (String) | Last instrument price update time | |
| workingOrderData (Object) | Working order data

|     |     |
| --- | --- |
| contingentLimit (Number) | Limit level |
| contingentStop (Number) | Stop level |
| controlledRisk (Boolean) | True if controlled risk |
| createdDate (String) | Date and time when the order was created. Format is yyyy/MM/dd kk:mm:ss:SSS |
| currencyCode (String) | Currency ISO code |
| dealId (String) | Deal identifier |
| direction (Constant) | Deal direction

|     |     |
| --- | --- |
| BUY | Buy |
| SELL | Sell | |
| dma (Boolean) | True if this is a DMA working order |
| epic (String) | Instrument epic identifier |
| goodTill (String) | Working order expiry date and time. If set, format is dd/MM/yy HH:mm |
| level (Number) | Price at which to execute the trade |
| limitedRiskPremium (Number) | Limited Risk Premium |
| requestType (Constant) | Working order request type

|     |     |
| --- | --- |
| LIMIT\_ORDER | Limit order |
| STOP\_ORDER | Stop order | |
| size (Number) | Order size |
| trailingStopDistance (Number) | Trailing stop distance |
| trailingStopIncrement (Number) | Trailing stop increment |
| trailingTriggerDistance (Number) | Trailing stop distance |
| trailingTriggerIncrement (Number) | Trailing trigger increment | | | |

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

