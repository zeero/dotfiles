# IG REST API - Session

---

## Source: https://labs.ig.com/reference/session-encryption-key.html

# /session/encryptionKey

- [Version: 1](https://labs.ig.com/reference/session-encryption-key.html#GET1)

## GET (version: 1)

Creates a trading session, obtaining session tokens for subsequent API access.
Please note, region-specific login restrictions may apply.

| The encryption key to use in order to send the user password in an encrypted form

|     |     |
| --- | --- |

| encryptionKey (String) | Encryption key in Base 64 format |
| timeStamp (Number) | Current timestamp in milliseconds since epoch | |

Response

**70% of retail investor accounts lose money when trading spread bets and CFDs with this provider.**
Spread bets and CFDs are complex instruments and come with a high risk of losing money rapidly due to leverage.
You should consider whether you understand how spread bets and CFDs work, and whether you can afford to take the
high risk of losing your money.

---

## Source: https://labs.ig.com/reference/session-refresh-token.html

# /session/refresh-token

- [Version: 1](https://labs.ig.com/reference/session-refresh-token.html#POST1)

## POST (version: 1)

Refreshes a trading session, obtaining new session tokens for subsequent API access.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Body | request (Object) | Refresh session request

|     |     |
| --- | --- |

| refresh\_token (String) | Refresh token<br>\[Constraint: NotNull\] | |

Request

| Access token response

|     |     |
| --- | --- |

| access\_token (String) | Access token |
| expires\_in (String) | Access token expiry in seconds |
| refresh\_token (String) | Refresh token |
| scope (String) | Scope of the access token |
| token\_type (String) | Token type | |

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
| authentication.failure.not-a-client-account | The account is not a valid client account | |
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
| error.security.account-access-denied | The account has been denied login privileges | |
| 401 | |     |     |
| --- | --- |
| error.security.account-migrated | The account has been migrated to the client-account model, please authenticate with the client credentials | |
| 401 | |     |     |
| --- | --- |
| error.security.account-not-yet-activated | The account has not been activated yet | |
| 401 | |     |     |
| --- | --- |
| error.security.account-suspended | The account has been suspended | |
| 401 | |     |     |
| --- | --- |
| error.security.account-token-invalid | The service requires an account token and the one provided was not valid | |
| 401 | |     |     |
| --- | --- |
| error.security.account-token-missing | The service requires an account token and it was not provided | |
| 401 | |     |     |
| --- | --- |
| error.security.all-accounts-pending | All of the accounts are in a pending state | |
| 401 | |     |     |
| --- | --- |
| error.security.all-accounts-suspended | All of the clients accounts have been suspended | |
| 401 | |     |     |
| --- | --- |
| error.security.client-suspended | The client has been suspended from using the platform | |
| 401 | |     |     |
| --- | --- |
| error.security.client-token-invalid | The service requires a client token and the one provided was not valid | |
| 401 | |     |     |
| --- | --- |
| error.security.client-token-missing | The service requires a client token and it was not provided | |
| 401 | |     |     |
| --- | --- |
| error.security.generic | An unexpected error has been encountered on the server side, cannot proceed. Please contact the support. | |
| 401 | |     |     |
| --- | --- |
| error.security.invalid-application | The provided user agent string is not valid | |
| 401 | |     |     |
| --- | --- |
| error.security.invalid-details | The credentials used to authenticate the users are not valid, login is rejected | |
| 401 | |     |     |
| --- | --- |
| error.security.invalid-website | This site is not accessible via the API services | |
| 401 | |     |     |
| --- | --- |
| error.security.oauth-token-invalid | Invalid OAuth access token | |
| 401 | |     |     |
| --- | --- |
| error.security.too-many-failed-attempts | Maximum number of failed login attempts have been reached | |
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
| 504 | |     |     |
| --- | --- |
| error.security.authentication.timeout | Authentication time-out | |

Exceptions

**70% of retail investor accounts lose money when trading spread bets and CFDs with this provider.**
Spread bets and CFDs are complex instruments and come with a high risk of losing money rapidly due to leverage.
You should consider whether you understand how spread bets and CFDs work, and whether you can afford to take the
high risk of losing your money.

---

## Source: https://labs.ig.com/reference/session.html

# /session

DELETEGETPOST v3POST v2POST v1PUT

- [Version: 1](https://labs.ig.com/reference/session.html#DELETE1)

## DELETE (version: 1)

Log out of the current session.

- [Version: 1](https://labs.ig.com/reference/session.html#GET1)

## GET (version: 1)

Returns the user's session details and optionally tokens.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Request (Optional) (Default=false) | fetchSessionTokens (Boolean) | Indicates whether to fetch session token headers |

Request

| Session details response

|     |     |
| --- | --- |

| accountId (String) | Active account identifier |
| clientId (String) | Client identifier |
| currency (String) | Currency |
| lightstreamerEndpoint (String) | Lightstreamer endpoint |
| locale (String) | Locale |
| timezoneOffset (Number) | Timezone offset relative to UTC (in hours) | |

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
| 500 | |     |     |
| --- | --- |
| error.security.get.session.timeout | Request timed out while retrieving session details | |

Exceptions

- [Version: 3](https://labs.ig.com/reference/session.html#POST3)

## POST (version: 3)

Creates a trading session, obtaining session tokens for subsequent API access. Please note, region-specific login restrictions may apply.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Body | authenticationRequest (Object) | Login credentials

|     |     |
| --- | --- |

| identifier (String) | Username<br>\[Constraint: NotNull\]<br>\[Constraint: Pattern(regexp="\[A-Za-z0-9\\\-\_\]{1,30}")\] |
| password (String) | Password<br>\[Constraint: NotNull\]<br>\[Constraint: Pattern(regexp=".{1,350}")\] | |

Request

| Summary of client account information returned on successful client login.

|     |     |
| --- | --- |

| accountId (String) | Active account identifier |
| clientId (String) | Client identifier |
| lightstreamerEndpoint (String) | Lightstreamer endpoint for subscribing to account and price updates |
| oauthToken (Object) | Access token response

|     |     |
| --- | --- |

| access\_token (String) | Access token |
| expires\_in (String) | Access token expiry in seconds |
| refresh\_token (String) | Refresh token |
| scope (String) | Scope of the access token |
| token\_type (String) | Token type | |
| timezoneOffset (Number) | Timezone offset of the active account relative to UTC, expressed in hours | |

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
| authentication.failure.not-a-client-account | The account is not a valid client account | |
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
| error.security.account-access-denied | The account has been denied login privileges | |
| 401 | |     |     |
| --- | --- |
| error.security.account-migrated | The account has been migrated to the client-account model, please authenticate with the client credentials | |
| 401 | |     |     |
| --- | --- |
| error.security.account-not-yet-activated | The account has not been activated yet | |
| 401 | |     |     |
| --- | --- |
| error.security.account-suspended | The account has been suspended | |
| 401 | |     |     |
| --- | --- |
| error.security.account-token-invalid | The service requires an account token and the one provided was not valid | |
| 401 | |     |     |
| --- | --- |
| error.security.account-token-missing | The service requires an account token and it was not provided | |
| 401 | |     |     |
| --- | --- |
| error.security.all-accounts-pending | All of the accounts are in a pending state | |
| 401 | |     |     |
| --- | --- |
| error.security.all-accounts-suspended | All of the clients accounts have been suspended | |
| 401 | |     |     |
| --- | --- |
| error.security.client-suspended | The client has been suspended from using the platform | |
| 401 | |     |     |
| --- | --- |
| error.security.client-token-invalid | The service requires a client token and the one provided was not valid | |
| 401 | |     |     |
| --- | --- |
| error.security.client-token-missing | The service requires a client token and it was not provided | |
| 401 | |     |     |
| --- | --- |
| error.security.generic | An unexpected error has been encountered on the server side, cannot proceed. Please contact the support. | |
| 401 | |     |     |
| --- | --- |
| error.security.invalid-application | The provided user agent string is not valid | |
| 401 | |     |     |
| --- | --- |
| error.security.invalid-details | The credentials used to authenticate the users are not valid, login is rejected | |
| 401 | |     |     |
| --- | --- |
| error.security.invalid-website | This site is not accessible via the API services | |
| 401 | |     |     |
| --- | --- |
| error.security.oauth-token-invalid | Invalid OAuth access token | |
| 401 | |     |     |
| --- | --- |
| error.security.too-many-failed-attempts | Maximum number of failed login attempts have been reached | |
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
| 504 | |     |     |
| --- | --- |
| error.security.authentication.timeout | Authentication time-out | |

Exceptions

- [Version: 2](https://labs.ig.com/reference/session.html#POST2)

## POST (version: 2)

Creates a trading session, obtaining session tokens for subsequent API access. Please note, region-specific login restrictions may apply.

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| authenticationRequest (Object) | Authentication request data

|     |     |
| --- | --- |
| encryptedPassword (Boolean) | Whether the password has been sent encrypted |
| identifier (String) | Client login identifier \[Required, Pattern: \[A-Za-z0-9\\-\_\]{1,30}\] |
| password (String) | Client login password \[Required, Pattern: .{1,350}\] | | |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| accountInfo (Object) | Account information

|     |     |
| --- | --- |
| available (Number) | Account funds available for trading amount |
| balance (Number) | Balance of funds in the account |
| deposit (Number) | Minimum deposit amount required for margins |
| profitLoss (Number) | Account profit and loss amount | |
| accountType (Constant) | CFD, PHYSICAL, or SPREADBET |
| accounts (Array\[Object\]) | List of client accounts

|     |     |
| --- | --- |
| accountId (String) | Account identifier |
| accountName (String) | Account name |
| accountType (Constant) | CFD, PHYSICAL, or SPREADBET |
| preferred (Boolean) | Indicates whether this account is the client's preferred account | |
| clientId (String) | Client identifier |
| currencyIsoCode (String) | Account currency |
| currencySymbol (String) | Account currency symbol |
| currentAccountId (String) | Active account identifier |
| dealingEnabled (Boolean) | Whether the account is enabled for placing trading orders |
| hasActiveDemoAccounts (Boolean) | Whether the Client has active demo accounts |
| hasActiveLiveAccounts (Boolean) | Whether the Client has active live accounts |
| lightstreamerEndpoint (String) | Lightstreamer endpoint for subscribing to account and price updates |
| reroutingEnvironment (Constant) | DEMO, LIVE, TEST, or UAT |
| timezoneOffset (Number) | Client account timezone offset relative to UTC, expressed in hours |
| trailingStopsEnabled (Boolean) | Whether the account is allowed to set trailing stops on trades | |

Response (includes security tokens in headers: CST and X-SECURITY-TOKEN)

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
| 504 | |     |     |
| --- | --- |
| error.security.authentication.timeout | Authentication time-out | |

Exceptions

- [Version: 1](https://labs.ig.com/reference/session.html#POST1)

## POST (version: 1)

Creates a trading session, obtaining session tokens for subsequent API access. Please note, region-specific login restrictions may apply.

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| authenticationRequest (Object) | Authentication request data

|     |     |
| --- | --- |
| encryptedPassword (Boolean) | Whether the password has been sent encrypted |
| identifier (String) | Client login identifier \[Required, Pattern: \[A-Za-z0-9\\-\_\]{1,30}\] |
| password (String) | Client login password \[Required, Pattern: .{1,350}\] | | |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| accountInfo (Object) | Account information

|     |     |
| --- | --- |
| available (Number) | Account funds available for trading amount |
| balance (Number) | Balance of funds in the account |
| deposit (Number) | Minimum deposit amount required for margins |
| profitLoss (Number) | Account profit and loss amount | |
| accountType (Constant) | CFD, PHYSICAL, or SPREADBET |
| accounts (Array\[Object\]) | List of client accounts

|     |     |
| --- | --- |
| accountId (String) | Account identifier |
| accountName (String) | Account name |
| accountType (Constant) | CFD, PHYSICAL, or SPREADBET |
| preferred (Boolean) | Indicates whether this account is the client's preferred account | |
| clientId (String) | Client identifier |
| currencyIsoCode (String) | Account currency |
| currencySymbol (String) | Account currency symbol |
| currentAccountId (String) | Active account identifier |
| dealingEnabled (Boolean) | Whether the account is enabled for placing trading orders |
| hasActiveDemoAccounts (Boolean) | Whether the Client has active demo accounts |
| hasActiveLiveAccounts (Boolean) | Whether the Client has active live accounts |
| lightstreamerEndpoint (String) | Lightstreamer endpoint for subscribing to account and price updates |
| reroutingEnvironment (Constant) | DEMO, LIVE, TEST, or UAT |
| timezoneOffset (Number) | Client account timezone offset relative to UTC, expressed in hours |
| trailingStopsEnabled (Boolean) | Whether the account is allowed to set trailing stops on trades | |

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
| 504 | |     |     |
| --- | --- |
| error.security.authentication.timeout | Authentication time-out | |

Exceptions

- [Version: 1](https://labs.ig.com/reference/session.html#PUT1)

## PUT (version: 1)

Switches active accounts, optionally setting the default account.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Body | accountSwitchRequest (Object) | Account switch request

|     |     |
| --- | --- |

| accountId (String) | The identifier of the account being switched to<br>\[Constraint: NotNull\]<br>\[Constraint: Pattern(regexp="\[A-Za-z0-9\\\-\]{1,30}")\] |
| defaultAccount (Boolean) | True if the specified account is to be set as the new default account.<br> Omitting this argument results in the default account not being changed | |

Request

| Switch account response

|     |     |
| --- | --- |

| dealingEnabled (Boolean) | Whether the account is enabled for placing trading orders |
| hasActiveDemoAccounts (Boolean) | Whether the Client has active demo accounts |
| hasActiveLiveAccounts (Boolean) | Whether the Client has active live accounts |
| trailingStopsEnabled (Boolean) | Whether the account is allowed to set trailing stops on his trades | |

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
| error.switch.accountId-must-be-different | A switch to the current account was attempted (PUT only) | |
| 400 | |     |     |
| --- | --- |
| error.switch.invalid-accountId | A switch to an invalid account id was attempted (PUT only) | |
| 400 | |     |     |
| --- | --- |
| invalid.input | A generic input data error has occurred | |
| 401 | |     |     |
| --- | --- |
| authentication.failure.not-a-client-account | The account is not a valid client account | |
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
| error.security.account-access-denied | The account has been denied login privileges | |
| 401 | |     |     |
| --- | --- |
| error.security.account-migrated | The account has been migrated to the client-account model, please authenticate with the client credentials | |
| 401 | |     |     |
| --- | --- |
| error.security.account-not-yet-activated | The account has not been activated yet | |
| 401 | |     |     |
| --- | --- |
| error.security.account-suspended | The account has been suspended | |
| 401 | |     |     |
| --- | --- |
| error.security.account-token-invalid | The service requires an account token and the one provided was not valid | |
| 401 | |     |     |
| --- | --- |
| error.security.account-token-missing | The service requires an account token and it was not provided | |
| 401 | |     |     |
| --- | --- |
| error.security.all-accounts-pending | All of the accounts are in a pending state | |
| 401 | |     |     |
| --- | --- |
| error.security.all-accounts-suspended | All of the clients accounts have been suspended | |
| 401 | |     |     |
| --- | --- |
| error.security.client-suspended | The client has been suspended from using the platform | |
| 401 | |     |     |
| --- | --- |
| error.security.client-token-invalid | The service requires a client token and the one provided was not valid | |
| 401 | |     |     |
| --- | --- |
| error.security.client-token-missing | The service requires a client token and it was not provided | |
| 401 | |     |     |
| --- | --- |
| error.security.generic | An unexpected error has been encountered on the server side, cannot proceed. Please contact the support. | |
| 401 | |     |     |
| --- | --- |
| error.security.invalid-application | The provided user agent string is not valid | |
| 401 | |     |     |
| --- | --- |
| error.security.invalid-details | The credentials used to authenticate the users are not valid, login is rejected | |
| 401 | |     |     |
| --- | --- |
| error.security.invalid-website | This site is not accessible via the API services | |
| 401 | |     |     |
| --- | --- |
| error.security.oauth-token-invalid | Invalid OAuth access token | |
| 401 | |     |     |
| --- | --- |
| error.security.too-many-failed-attempts | Maximum number of failed login attempts have been reached | |
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
| error.switch.cannot-set-default-account | The switch action was unable to set the target account to the new default account (PUT only) | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |
| 504 | |     |     |
| --- | --- |
| error.security.authentication.timeout | Authentication time-out | |
| 504 | |     |     |
| --- | --- |
| error.security.get.session.timeout | Request timed out while retrieving session details (GET only) | |

Exceptions

**70% of retail investor accounts lose money when trading spread bets and CFDs with this provider.**
Spread bets and CFDs are complex instruments and come with a high risk of losing money rapidly due to leverage.
You should consider whether you understand how spread bets and CFDs work, and whether you can afford to take the
high risk of losing your money.

