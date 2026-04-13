# IG REST API - Accounts

---

## Source: https://labs.ig.com/reference/accounts-preferences.html

# /accounts/preferences

- [Version: 1](https://labs.ig.com/reference/accounts-preferences.html#GET1)

## GET (version: 1)

Returns account preferences.

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| Returns all account related preferences |
| trailingStopsEnabled (Boolean) | Trailing stops: whether the user wants to be allowed to define trailing stop rules for his trade operations | |

Response

- [Version: 1](https://labs.ig.com/reference/accounts-preferences.html#PUT1)

## PUT (version: 1)

Updates account preferences.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Body | request (Object) | |     |     |
| --- | --- |
| Edits the account preferences |
| trailingStopsEnabled (Boolean) | New trailing stop preference. | |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| Returns the outcome of the account settings edit operation |
| status (Constant) | Status of the request. There is currently only one value but the list may be expanded in future.

|     |     |
| --- | --- |
| SUCCESS |  | | |

Response

**70% of retail investor accounts lose money when trading spread bets and CFDs with this provider.**
Spread bets and CFDs are complex instruments and come with a high risk of losing money rapidly due to leverage.
You should consider whether you understand how spread bets and CFDs work, and whether you can afford to take the
high risk of losing your money.

---

## Source: https://labs.ig.com/reference/accounts.html

# /accounts

- [Version: 1](https://labs.ig.com/reference/accounts.html#GET1)

## GET (version: 1)

Returns a list of the logged-in client's accounts.

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| accounts (Array\[Object\]) | Account data

|     |     |
| --- | --- |
| accountAlias (String) | Account alias |
| accountId (String) | Account identifier |
| accountName (String) | Account name |
| accountType (Constant) | Account type

|     |     |
| --- | --- |
| CFD | CFD account |
| PHYSICAL | Physical account |
| SPREADBET | Spread bet account | |
| balance (Object) | Account balances

|     |     |
| --- | --- |
| available (Number) | Amount available for trading |
| balance (Number) | Balance of funds in the account |
| deposit (Number) | Minimum deposit amount required for margins |
| profitLoss (Number) | Profit and loss amount | |
| canTransferFrom (Boolean) | True if account can be transferred to |
| canTransferTo (Boolean) | True if account can be transferred from |
| currency (String) | Account currency |
| preferred (Boolean) | True if this the default login account |
| status (Constant) | Account status

|     |     |
| --- | --- |
| DISABLED | Disabled |
| ENABLED | Enabled |
| SUSPENDED\_FROM\_DEALING | Suspended from dealing | | | |

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

