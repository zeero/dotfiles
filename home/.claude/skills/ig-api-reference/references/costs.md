# IG REST API - Costs

---

## Source: https://labs.ig.com/reference/indicative-costs-and-charges-close.html

# /indicativecostsandcharges/close

- [Version: 1](https://labs.ig.com/reference/indicative-costs-and-charges-close.html#POST1)

## POST (version: 1)

Returns indicative costs and charges at closing.
Supported website IDs: atm, atf, dem, def, det, esm, esf, est, frm, frf, frt, itm, itf, itt, nlm, nlf, nlt, nom, nof, not, sem, sef, set, eng, enf, ent, iei, iem, ief, iet, igi, igm, por, pof.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Body | request (Object) | |     |     |
| --- | --- |
| ask (Number) | \[Constraint: NotNull\] |
| bid (Number) | \[Constraint: NotNull\] |
| dealCurrencyCode (String) | \[Constraint: NotNull\] |
| dealReference (String) | \[Constraint: NotNull\] |
| direction (Constant) | |     |     |
| --- | --- |
| BUY |  |
| SELL |  | |
| epic (String) |  |
| guaranteedStop (Boolean) |  |
| instrumentId (String) |  |
| knockoutPremium (Number) |  |
| openingLevel (Number) | \[Constraint: NotNull\] |
| priceLevel (Number) |  |
| size (Number) | \[Constraint: NotNull\] |
| stopLevel (Number) |  | |

Request

| |     |     |
| --- | --- |
| close (Object) | |     |     |
| --- | --- |
| ClosingExAnteResponse DEFAULT\_CLOSING\_EX\_ANTE\_RESPONSE |  |
| closingCommission (Number) |  |
| closingFxFee (Number) |  |
| closingIFTT (Number) |  |
| closingSpread (Number) |  |
| etpExitCost (Number) |  |
| guaranteedStopReturn (Number) |  |
| indicativeQuoteReference (String) |  |
| knockoutPremiumReturn (Number) |  |
| notionalValue (Number) |  |
| notionalValueInUserCurrency (Number) |  | |
| currencyCodeISO (String) |  | |

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
| 400 | |     |     |
| --- | --- |
| public-api.costs-and-charges.client-error |  | |
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
| 404 | |     |     |
| --- | --- |
| public-api.costs-and-charges.indicative-quote-reference-not-found |  | |
| 500 | |     |     |
| --- | --- |
| public-api.costs-and-charges.general-error |  | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |

Exceptions

**70% of retail investor accounts lose money when trading spread bets and CFDs with this provider.**
Spread bets and CFDs are complex instruments and come with a high risk of losing money rapidly due to leverage.
You should consider whether you understand how spread bets and CFDs work, and whether you can afford to take the
high risk of losing your money.

---

## Source: https://labs.ig.com/reference/indicative-costs-and-charges-durable-medium.html

# /indicativecostsandcharges/durablemedium/{indicativeQuoteReference}

- [Version: 1](https://labs.ig.com/reference/indicative-costs-and-charges-durable-medium.html#GET1)

## GET (version: 1)

Download a previously generated indicative costs and charges quote as a pdf.
Supported website IDs: atm, atf, dem, def, det, esm, esf, est, frm, frf, frt, itm, itf, itt, nlm, nlf, nlt, nom, nof, not, sem, sef, set, eng, enf, ent, iei, iem, ief, iet, por, pof.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | indicativeQuoteReference (String) | Indicative costs and charges quote reference |

Request

| Indicative costs and charges durable medium pdf. |

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
| 400 | |     |     |
| --- | --- |
| public-api.costs-and-charges.client-error |  | |
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
| endpoint.unavailable.for.api-key | This endpoint is not available for the provided API key. | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-allowance | The account has exceeded its allowance. | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-historical-data-allowance | The account has exceeded its historical data allowance. | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-trading-allowance | The account has exceeded its trading allowance. | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-api-key-allowance | The API key has exceeded its allowance. | |
| 403 | |     |     |
| --- | --- |
| error.public-api.failure.stockbroking-not-supported | Stockbroking is not supported for this account. | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-disabled | The API key is disabled. | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-invalid | The API key is invalid. | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-restricted | The API key has restricted access. | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-revoked | The API key has been revoked. | |
| 404 | |     |     |
| --- | --- |
| invalid.url |  | |
| 404 | |     |     |
| --- | --- |
| public-api.costs-and-charges.indicative-quote-reference-not-found |  | |
| 500 | |     |     |
| --- | --- |
| public-api.costs-and-charges.general-error |  | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |

Exceptions

**70% of retail investor accounts lose money when trading spread bets and CFDs with this provider.**
Spread bets and CFDs are complex instruments and come with a high risk of losing money rapidly due to leverage.
You should consider whether you understand how spread bets and CFDs work, and whether you can afford to take the
high risk of losing your money.

---

## Source: https://labs.ig.com/reference/indicative-costs-and-charges-edit.html

# /indicativecostsandcharges/edit

- [Version: 1](https://labs.ig.com/reference/indicative-costs-and-charges-edit.html#POST1)

## POST (version: 1)

Returns indicative costs and charges for editing an order.
Supported website IDs: atm, atf, dem, def, det, esm, esf, est, frm, frf, frt, itm, itf, itt, nlm, nlf, nlt, nom, nof, not, sem, sef, set, eng, enf, ent, iei, iem, ief, iet, igi, igm, por, pof.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Body | request (Object) | |     |     |
| --- | --- |
| ask (Number) | \[Constraint: NotNull\] |
| bid (Number) | \[Constraint: NotNull\] |
| dealCurrencyCode (String) | \[Constraint: NotNull\] |
| dealReference (String) | \[Constraint: NotNull\] |
| direction (Constant) | |     |     |
| --- | --- |
| BUY |  |
| SELL |  | |
| editType (String) |  |
| epic (String) |  |
| guaranteedStop (Boolean) |  |
| instrumentId (String) |  |
| knockoutPremium (Number) |  |
| limitLevel (Number) |  |
| openingLevel (Number) | \[Constraint: NotNull\] |
| priceLevel (Number) |  |
| size (Number) | \[Constraint: NotNull\] |
| stopLevel (Number) |  | |

Request

|     |     |
| --- | --- |
| |     |     |
| --- | --- |
| currencyCodeISO (String) |  |
| limit (Object) | |     |     |
| --- | --- |
| ClosingExAnteResponse DEFAULT\_CLOSING\_EX\_ANTE\_RESPONSE |  |
| closingCommission (Number) |  |
| closingFxFee (Number) |  |
| closingIFTT (Number) |  |
| closingSpread (Number) |  |
| etpExitCost (Number) |  |
| guaranteedStopReturn (Number) |  |
| indicativeQuoteReference (String) |  |
| knockoutPremiumReturn (Number) |  |
| notionalValue (Number) |  |
| notionalValueInUserCurrency (Number) |  | |
| stop (Object) | |     |     |
| --- | --- |
| ClosingExAnteResponse DEFAULT\_CLOSING\_EX\_ANTE\_RESPONSE |  |
| closingCommission (Number) |  |
| closingFxFee (Number) |  |
| closingIFTT (Number) |  |
| closingSpread (Number) |  |
| etpExitCost (Number) |  |
| guaranteedStopReturn (Number) |  |
| indicativeQuoteReference (String) |  |
| knockoutPremiumReturn (Number) |  |
| notionalValue (Number) |  |
| notionalValueInUserCurrency (Number) |  | | |

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
| 400 | |     |     |
| --- | --- |
| public-api.costs-and-charges.client-error |  | |
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
| 404 | |     |     |
| --- | --- |
| public-api.costs-and-charges.indicative-quote-reference-not-found |  | |
| 500 | |     |     |
| --- | --- |
| public-api.costs-and-charges.general-error |  | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |

Exceptions

**70% of retail investor accounts lose money when trading spread bets and CFDs with this provider.**
Spread bets and CFDs are complex instruments and come with a high risk of losing money rapidly due to leverage.
You should consider whether you understand how spread bets and CFDs work, and whether you can afford to take the
high risk of losing your money.

---

## Source: https://labs.ig.com/reference/indicative-costs-and-charges-history-dates.html

# /indicativecostsandcharges/history/from/{from}/to/{to}

- [Version: 1](https://labs.ig.com/reference/indicative-costs-and-charges-history-dates.html#GET1)

## GET (version: 1)

Returns indicative costs and charges history for the given date range.
Supported website IDs: atm, atf, dem, def, det, esm, esf, est, frm, frf, frt, itm, itf, itt, nlm, nlf, nlt, nom, nof, not, sem, sef, set, eng, enf, ent, iei, iem, ief, iet, por, pof.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Path | from (String) | User-specified from date (yyyy-MM-dd'T'HH:mm:ss. SSSXXX) |
| Path | to (String) | User-specified to date (yyyy-MM-dd'T'HH:mm:ss. SSSXXX) |
| Request<br> (Optional) | pageSize (int) | Page size |
| Request<br> (Optional) | pageNumber (int) | Page number |
| Request<br> (Optional) | type (String) | Type |

Request

| |     |     |
| --- | --- |
| costsAndChargesHistory (Array\[Object\]) | |     |     |
| --- | --- |
| createdTimestamp (String) |  |
| direction (String) |  |
| indicativeQuoteReference (String) |  |
| instrumentName (String) |  |
| type (String) |  | |
| pagination (Object) | |     |     |
| --- | --- |
| pageNumber (Number) |  |
| pageSize (Number) |  |
| totalElements (Number) |  |
| totalPages (Number) |  | | |

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
| 400 | |     |     |
| --- | --- |
| public-api.costs-and-charges.client-error |  | |
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
| error.security.account-token-invalid | The account token is invalid. | |
| 401 | |     |     |
| --- | --- |
| error.security.account-token-missing | The account token is missing from the request. | |
| 401 | |     |     |
| --- | --- |
| error.security.client-token-invalid | The client token is invalid. | |
| 401 | |     |     |
| --- | --- |
| error.security.client-token-missing | The client token is missing from the request. | |
| 401 | |     |     |
| --- | --- |
| error.security.oauth-token-invalid | The OAuth token is invalid. | |
| 403 | |     |     |
| --- | --- |
| endpoint.unavailable.for.api-key | This endpoint is not available for the provided API key. | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-allowance | The account has exceeded its allowance. | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-historical-data-allowance | The account has exceeded its historical data allowance. | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-account-trading-allowance | The account has exceeded its trading allowance. | |
| 403 | |     |     |
| --- | --- |
| error.public-api.exceeded-api-key-allowance | The API key has exceeded its allowance. | |
| 403 | |     |     |
| --- | --- |
| error.public-api.failure.stockbroking-not-supported | Stockbroking is not supported for this account. | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-disabled | The API key is disabled. | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-invalid | The API key is invalid. | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-restricted | The API key has restricted access. | |
| 403 | |     |     |
| --- | --- |
| error.security.api-key-revoked | The API key has been revoked. | |
| 404 | |     |     |
| --- | --- |
| invalid.url |  | |
| 404 | |     |     |
| --- | --- |
| public-api.costs-and-charges.indicative-quote-reference-not-found |  | |
| 500 | |     |     |
| --- | --- |
| public-api.costs-and-charges.general-error |  | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |

Exceptions

**70% of retail investor accounts lose money when trading spread bets and CFDs with this provider.**
Spread bets and CFDs are complex instruments and come with a high risk of losing money rapidly due to leverage.
You should consider whether you understand how spread bets and CFDs work, and whether you can afford to take the
high risk of losing your money.

---

## Source: https://labs.ig.com/reference/indicative-costs-and-charges-open.html

# /indicativecostsandcharges/open

- [Version: 1](https://labs.ig.com/reference/indicative-costs-and-charges-open.html#POST1)

## POST (version: 1)

Returns indicative costs and charges at opening.
Supported website IDs: atm, atf, dem, def, det, esm, esf, est, frm, frf, frt, itm, itf, itt, nlm, nlf, nlt, nom, nof, not, sem, sef, set, eng, enf, ent, iei, iem, ief, iet, igi, igm, por, pof.

| Parameter Type | Name | Description |
| --- | --- | --- |
| Body | request (Object) | |     |     |
| --- | --- |
| ask (Number) | \[Constraint: NotNull\] |
| bid (Number) | \[Constraint: NotNull\] |
| dealCurrencyCode (String) | \[Constraint: NotNull\] |
| dealReference (String) | \[Constraint: NotNull\] |
| direction (Constant) | |     |     |
| --- | --- |
| BUY |  |
| SELL |  | |
| epic (String) |  |
| guaranteedStop (Boolean) |  |
| instrumentId (String) |  |
| knockoutPremium (Number) |  |
| priceLevel (Number) |  |
| size (Number) | \[Constraint: NotNull\] |
| stopLevel (Number) |  | |

Request

| |     |     |
| --- | --- |
| borrowingCharge (Number) |  |
| closingCommission (Number) |  |
| closingFxFee (Number) |  |
| closingIFTT (Number) |  |
| closingSpread (Number) |  |
| currencyCodeISO (String) |  |
| dailyRunningFxFee (Number) |  |
| etpEntryCost (Number) |  |
| etpExitCost (Number) |  |
| etpOngoingCost (Number) |  |
| guaranteedStopDeposit (Number) |  |
| guaranteedStopReturn (Number) |  |
| indicativeQuoteReference (String) |  |
| inducements (Number) |  |
| knockoutPremiumDeposit (Number) |  |
| knockoutPremiumReturn (Number) |  |
| notionalValue (Number) |  |
| notionalValueInUserCurrency (Number) |  |
| openingCommission (Number) |  |
| openingFxFee (Number) |  |
| openingIFTT (Number) |  |
| openingSpread (Number) |  |
| overnightFundingFee (Number) |  | |

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
| 400 | |     |     |
| --- | --- |
| public-api.costs-and-charges.client-error |  | |
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
| 404 | |     |     |
| --- | --- |
| public-api.costs-and-charges.indicative-quote-reference-not-found |  | |
| 500 | |     |     |
| --- | --- |
| public-api.costs-and-charges.general-error |  | |
| 500 | |     |     |
| --- | --- |
| system.error |  | |

Exceptions

**70% of retail investor accounts lose money when trading spread bets and CFDs with this provider.**
Spread bets and CFDs are complex instruments and come with a high risk of losing money rapidly due to leverage.
You should consider whether you understand how spread bets and CFDs work, and whether you can afford to take the
high risk of losing your money.

