# IG REST API - Operations

---

## Source: https://labs.ig.com/reference/operations-application-disable.html

# /operations/application/disable

- [Version: 1](https://labs.ig.com/reference/operations-application-disable.html#PUT1)

## PUT (version: 1)

Disables the current application key from processing further requests.
Disabled keys may be re-enabled via the 'my account' section on our web dealing platform.

|     |     |
| --- | --- |
| Client application

|     |     |
| --- | --- |

| allowEquities (Boolean) | True if access to equity prices is permitted |
| allowQuoteOrders (Boolean) | True if quote orders are permitted |
| allowanceAccountHistoricalData (Number) | Historical price data data points per minute allowance |
| allowanceAccountOverall (Number) | Per account request per minute allowance |
| allowanceAccountTrading (Number) | Per account trading request per minute allowance |
| allowanceApplicationOverall (Number) | Overall request per minute allowance |
| apiKey (String) | API key |
| concurrentSubscriptionsLimit (Number) | Concurrent subscription limit per lightstreamer connection |
| createdDate (String) | Application creation date |
| name (String) | Application name |
| status (Constant) | Application status

|     |     |
| --- | --- |
| DISABLED | Disabled |
| ENABLED | Enabled |
| REVOKED | Revoked | | |

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
| 403 | |     |     |
| --- | --- |
| unauthorised.api-key.revoked | API key is in REVOKED state and cannot be used | |
| 403 | |     |     |
| --- | --- |
| unauthorised.clientId.api-key.mismatch | API key does not belong to the authenticated individual | |
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

## Source: https://labs.ig.com/reference/operations-application.html

# /operations/application

- [Version: 1](https://labs.ig.com/reference/operations-application.html#GET1)

## GET (version: 1)

Returns a list of client-owned applications.

|     |     |
| --- | --- |
| Client application

|     |     |
| --- | --- |

| allowEquities (Boolean) | True if access to equity prices is permitted |
| allowQuoteOrders (Boolean) | True if quote orders are permitted |
| allowanceAccountHistoricalData (Number) | Historical price data data points per minute allowance |
| allowanceAccountOverall (Number) | Per account request per minute allowance |
| allowanceAccountTrading (Number) | Per account trading request per minute allowance |
| allowanceApplicationOverall (Number) | Overall request per minute allowance |
| apiKey (String) | API key |
| concurrentSubscriptionsLimit (Number) | Concurrent subscription limit per lightstreamer connection |
| createdDate (String) | Application creation date |
| name (String) | Application name |
| status (Constant) | Application status

|     |     |
| --- | --- |
| DISABLED | Disabled |
| ENABLED | Enabled |
| REVOKED | Revoked | | |

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
| 403 | |     |     |
| --- | --- |
| unauthorised.api-key.revoked | The api key is in REVOKED state and cannot be used | |
| 403 | |     |     |
| --- | --- |
| unauthorised.clientId.api-key.mismatch | The api key does not belong to the authenticated individual | |
| 404 | |     |     |
| --- | --- |
| invalid.url |  | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |

Exceptions

- [Version: 1](https://labs.ig.com/reference/operations-application.html#PUT1)

## PUT (version: 1)

Alters the details of a given user application.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Body | request (Object) | |     |     |
| --- | --- |
| allowanceAccountOverall (Number) | Per account request per minute allowance<br>\[Constraint: NotNull\] |
| allowanceAccountTrading (Number) | Per account trading request per minute allowance<br>\[Constraint: NotNull\] |
| apiKey (String) | API key<br>\[Constraint: NotNull\] |
| status (Constant) | Application status

|     |     |
| --- | --- |

| DISABLED | Disabled |
| ENABLED | Enabled |
| REVOKED | Revoked | | |

Request

|     |     |
| --- | --- |
| Client application

|     |     |
| --- | --- |

| allowEquities (Boolean) | True if access to equity prices is permitted |
| allowQuoteOrders (Boolean) | True if quote orders are permitted |
| allowanceAccountHistoricalData (Number) | Historical price data data points per minute allowance |
| allowanceAccountOverall (Number) | Per account request per minute allowance |
| allowanceAccountTrading (Number) | Per account trading request per minute allowance |
| allowanceApplicationOverall (Number) | Overall request per minute allowance |
| apiKey (String) | API key |
| concurrentSubscriptionsLimit (Number) | Concurrent subscription limit per lightstreamer connection |
| createdDate (String) | Application creation date |
| name (String) | Application name |
| status (Constant) | Application status

|     |     |
| --- | --- |
| DISABLED | Disabled |
| ENABLED | Enabled |
| REVOKED | Revoked | | |

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
| 403 | |     |     |
| --- | --- |
| unauthorised.api-key.revoked | The api key is in REVOKED state and cannot be used | |
| 403 | |     |     |
| --- | --- |
| unauthorised.clientId.api-key.mismatch | The api key does not belong to the authenticated individual | |
| 404 | |     |     |
| --- | --- |
| invalid.url |  | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |

Exceptions

