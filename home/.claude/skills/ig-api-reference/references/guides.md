# IG REST API - Getting Started & Guides

---

## Source: https://labs.ig.com/getting-started.html

# Getting Started

To begin using our API all you need to do is:

- Create an account
- Generate your API key
- Start coding

## Create a live account

To use our API you will need an IG account. If you don't already have one you can apply for one [here](http://ig.com/uk/application-form).

### Generate your API key

The API key identifies your application and authorises its use. **At the moment we are limiting the number of API keys to one per account.**

To create your live API key:

- Log into our web-based platform using your live account details
- Go to My Account > Settings > API Keys
- Enter your key name and click GENERATE NEW KEY

## Create a demo account

We recommend that you open a demo account so you can test your application in a safe environment. You can open a demo account as follows:

- Login to the web trading platform with your live account
- Use the account switcher on the top left of the page to create a demo account

### Generate your demo API key

- Log into our web-based platform using your live account details
- Use the account switcher to switch to demo
- Go to My Account > Settings > API Keys
- Enter your key name and click GENERATE NEW KEY
- Choose your demo environment login credentials

## Start coding

You can now begin coding using any programming language that supports HTTP. Get started by referring to our guides on the left, or by trying out your demo account on one of our [sample applications](https://labs.ig.com/sample-apps.html). We suggest to use the [API companion](https://labs.ig.com/sample-apps/api-rest-companion-release/index.html) and the [Streaming companion](https://labs.ig.com/sample-apps/api-streaming-companion-release/index.html) to explore the API.

N.B:

- Date and time values are ISO 8601 formatted and in UTC time zone unless otherwise stated.

## Some restrictions apply

- Direct market access is not currently available for our APIs
- Shares trading is available but without share price information
- Each API key is subject to standard usage [quotas](https://labs.ig.com/faq.html#limits).

## Subscribe to updates

- News and updates about the API will be posted via Twitter on **@IGLabs #webapi**
- To query a list of recent API changes please use the release hashtag: **@IGLabs #webapi #release**

## Key information documents

Use these Key Information Documents (KIDs) to better understand the nature, risks and costs of our leveraged trading products, as well as your potential gains and losses when using them.

- [CFD Key Information Documents](https://www.ig.com/kid/NON_CONTROLLED_RISK/IGCFD/iggb/en_GB)
- [Spread betting Key Information Documents](https://www.ig.com/kid/NON_CONTROLLED_RISK/IGFSB/iggb/en_GB)

**70% of retail investor accounts lose money when trading spread bets and CFDs with this provider.**
Spread bets and CFDs are complex instruments and come with a high risk of losing money rapidly due to leverage.
You should consider whether you understand how spread bets and CFDs work, and whether you can afford to take the
high risk of losing your money.

---

## Source: https://labs.ig.com/trading-basics.html

# Trading basics

If you're new to trading we recommend that you familiarise yourself with the basic concepts first. We have a wide range of articles and guides that cover important topics such as trading strategies and risk management which can be found [here](http://www.ig.com/uk/trading-articles-and-guides).

If you're ready to start using our API, we highly recommend that you first understand how we treat our products in a development environment.

## Market instruments

Market instruments are a fundamental aspect of our API. Each market instrument represents either a CFD or spread bet whose price is determined by an underlying asset or market. In the majority of cases you can take a long (buy) or short (sell) position on a market to take advantage of rising and falling prices. You can find more information on the markets you can trade at [www.ig.com/uk/services-ig](http://www.ig.com/uk/services-ig).

Our instruments are identified by proprietary _EPIC_ s, such as `IX.D.FTSE.CFD.IP` \- this CFD contract shows that it is the FTSE100 cash price market.

There are several ways to locate instruments using our API:

- Searching using the `/markets?q={searchTerm}` API
- Using a watchlist that has either been created using the `/watchlists` API or our dealing platform

Please note that our markets are not always available to be traded. When retrieving market information on a particular product our API will also return the status of the market. Examples of market statuses are:

- **TRADEABLE** \- the market is open
- **CLOSED** \- we are not currently offering that market

A full list of market statuses along with descriptions can be found in the API [reference](https://labs.ig.com/rest-trading-api-reference.html).

## Instrument prices

There are two ways to determine the latest bid (sell price)/offer (buy price) level for an instrument:

- Subscribe to the instrument via the our streaming API. This is the recommended approach, allowing up to 40 concurrent subscriptions by default
- Poll the `/markets/{epic}` API to obtain a regular market snapshot. This is not recommended as it will rapidly use up the API quota for an application

In addition, historical prices may be obtained via the `/prices` API.

## Trading

Placing a trade involves opening a _position_. A basic position consists of:

- An instrument and, if applicable, an expiry
- An execution price level
- A direction - buy or sell

Once opened, the position will then be either in profit or loss, depending on the market movement of the underlying instrument. Positions are then closed in order to realise any profit or loss.

Positions can either be opened immediately via the `/positions` API, or with conditional, working orders (via the `/working-orders` API) which only trigger when the desired price level is met. Positions will generally be created as market orders, where we will determine the appropriate execution price level when the position is placed. For more information about the different kinds of order types please visit the [API order types](https://labs.ig.com/api-order-types.html) section.

## Confirming trades

Trade confirmation is done in two phases:

- **Acknowledgement** \- a deal reference is returned via the `/positions/otc` API when an order is placed
- **Confirmation** \- a deal identifier is received by subscribing to the `TRADES:CONFIRMS` Streaming API message (recommended), or by polling the `/confirms` REST API

Most orders are usually executed within a few milliseconds but it means the confirm may not be available immediately if there is a delay. Please also note the confirm is only available up to 1 minute via the REST API.

## Trade history

Historical trade and account activity can be viewed via the `/history/transactions` and `/history/activity` APIs.

## Instrument expiry

Some of our CFD and spread bet instruments have an associated expiry (or period). This is the date at which the instrument will automatically close, eg DEC-14. CFDs that do not expire have an expiry of '-'.

When a market expires it will settle (close) based on the price of the underlying asset. You can instruct us to roll a product over which will result in your existing position being closed and automatically reopened with the next available expiry date, while realising any running profit or loss.

## Market research

In addition to an EPIC, every instrument has an associated market group identifier, eg FT100. This typically refers to the underlying real-world instrument from which the IG instrument was derived. Market group identifiers are used by the research APIs such as `/client-sentiment` to provide contextual market information.

An instrument's market group may be determined via the `/markets/{epic}` API.

If you need more information please refer to the reference, glossary and support sections.

## Tiered pricing

[What is Tiered pricing and how does it work?](https://www.ig.com/en/help-and-support/cfds/fees-and-charges/what-is-tiered-pricing-and-how-does-it-work)

### How does this affect how you use the API?

There are 2 new concepts that are exposed in our Public API

1. Tiered pricing
2. Repeat dealing windows

### Tiered Pricing

Example price tier:

| Tier | Bid price | Bid size | Ask price | Ask size |
| --- | --- | --- | --- | --- |
| 1 | 6500 | 400 | 6502 | 300 |
| 2 | 6499 | 800 | 6503 | 700 |
| 3 | 6498 | 1200 | 6504 | 1000 |
| 4 | 6497 | 1600 | 6505 | 1800 |
| 5 | 6496 | 2000 | 6506 | 2500 |

Example scenarios:

- Sell/buy trades with sizes up to 400 should submit the price of 6500/6503 respectively
- Sell/buy trades with size up to 800 should submit price of 6499/6504 respectively

Price tiers are exposed in a new Lightstreamer subscription.

Please see reference page for list of all fields: [Streaming API Reference](https://labs.ig.com/streaming-api-reference.html)

If the instrument can be traded in multiple currencies, there will be a price tier per currency

See the following fields in the [Streaming API Reference](https://labs.ig.com/streaming-api-reference.html)

- `CURRENCY1-5` \- currency code
- `C1BIDSIZE1-5` The bid size thresholds for currency 1
- `C1ASKSIZE1-5` The ask size thresholds for currency 1
- `C2BIDSIZE1-5` The bid size thresholds for currency 2
- `C2ASKSIZE1-5` The ask size thresholds for currency 2

### Recent trade history

Trading multiple times within a short time period in smaller sizes are still subject to price tiers. The sizes of previous trades are taken into account when deciding what price tier a trade belongs to and only recent trades are taken into account.

Using the example from the table above: If a user places 3 BUY trades of size 150 in quick succession, the first two trades are within the 300 size thresholds and the price submitted should be in the first tier (6502). However, the third trade will fall into the second tier, meaning users should submit the price from the second tier (6503).

### How do I know what tier I am in when submitting multiple trades?

Repeat dealing windows are a way for users to keep track of sizes from previous trades that will be considered when trading.

A repeat dealing window is unique per instrument, direction, and currency.

Repeat dealing windows are exposed via streamed confirms under the `TRADE:{account identifier}` Lightstreamer subscription and also via the [REST /repeat-dealing-window endpoint](https://labs.ig.com/old-pages/reference/repeat-deal-window.html)

Repeat dealing window example:

User places a BUY trade with size 100 on instrument A at timestamp=0

This will result in a repeat deal window of:

- direction=BUY, size=100, instrument=A, expiryTimestamp=30

The size of 100 will be taken into account when placing any trades before the expiry timestamp. e.g. Following on once again from the table above: BUY trades of size 200 are eligible for the first price tier (300), and larger sizes will be subject to higher price tiers.

User places another BUY trade with size 100 on instrument A at timestamp 15

This will result in another repeat deal window being added:

- direction=BUY, size=100, instrument=A, expiryTimestamp=30
- direction=BUY, size=100, instrument=A, expiryTimestamp=45

This means the size of 200 will be considered when placing a trade for instrument A in the BUY direction. At timestamp 31, the first repeat deal window will expire, and the only size 100 will be taken into consideration for subsequent trades.

**70% of retail investor accounts lose money when trading spread bets and CFDs with this provider.**
Spread bets and CFDs are complex instruments and come with a high risk of losing money rapidly due to leverage.
You should consider whether you understand how spread bets and CFDs work, and whether you can afford to take the
high risk of losing your money.

---

## Source: https://labs.ig.com/api-order-types.html

# API Order Types

There are two types of order available on our API:

- Immediate orders
- Resting orders

## Immediate order types

There are two kinds of immediate order:

- Market order
- Limit fill or kill order

**Note:** There is an additional order type "QUOTE" representing "IG-quoted" orders which is currently not supported.

### Market order

A market order is an instruction to buy or sell at the best available price for the size of your order. When using this type of order you choose the size and direction of your order, but not the price.

You do not have any control over what price your order will be filled at; it will be filled at the then market price which may be worse than the indicative prices visible when placing the order.

This is because the full size of the order you request may not be available at the time you place your market order, and the price may change significantly between that time and when your order size becomes available. This is particularly true for markets that are not traded in high volumes, as well as orders submitted during fast-moving markets or outside the open hours of the underlying market.

### Limit fill or kill

A limit fill or kill order is an instruction to buy or sell in a specified size within a specified price limit, which is either filled completely or rejected. Provided the market price is within the specified limit and there is sufficient volume available, the order will be filled at the prevailing market price.

The entire order will be rejected if:

- The market price is outside your specified limit (higher for buy orders, lower for sell orders)
- There is insufficient volume available to satisfy the full order size

Examples

#### Scenario: Placing a limit fill or kill order on Spot Gold

Spot Gold is currently priced at 1250 / 1250.5 and you send a limit fill or kill order to sell £2000 per point with a limit of 1248.

- **Example 1:** We receive your instruction and although the price is unmoved, there is insufficient liquidity at the current price. We work your order down to 1248, and there is sufficient liquidity to fill you at the average price of 1248
- **Example 2:** We receive your instruction and although the price is unmoved, there is insufficient liquidity at the current price. We work your order down to 1248, but there is also insufficient liquidity down to this level, so your order is cancelled
- **Example 3:** We receive your instruction but the price has moved to 1247 / 1247.5. Because this is outside the limit of 1248, your order is cancelled
- **Example 4:** We receive your instruction but the price has moved to 1251 / 1251.5. Your order would likely be filled at 1251

#### Scenario: Placing a limit fill or kill order on FTSE 100

The FTSE 100 is currently priced at 6800 / 6801 and you send a limit fill or kill order to buy 10 lots with a limit of 6805.

- **Example 1:** We receive your instruction and the price is unmoved. There is also sufficient liquidity to fill the order, so it's filled at 6801
- **Example 2:** We receive your instruction, but the price has moved to 6803 / 6804. The order is filled at 6804
- **Example 3:** We receive your instruction, but the price has moved to 6807 / 6808, which is outside of the limit you requested, so the order is cancelled

## Resting orders

There are two kinds of resting order:

- Working orders (to open)
- Attached or contingent orders (to close)

Both consist of limit and stop orders.

### Working orders (to open)

- **Limit order:** This is an order to open a position by buying when the market reaches a lower level than the current price, or selling short when the market hits a higher level than the current price. This is suitable if you think the market price will **change direction** when it hits a certain level
- **Stop order:** This is an order to buy when the market hits a higher level than the current price, or sell when the market hits a lower level than the current price. This is suitable if you think the market will continue **moving in the same direction** once it hits a certain level

### Attached or contingent orders (to close)

These orders can be attached to open positions or left as contingent orders attached to working orders to open.

- **Limit order:** This is an order to close a long position when the market reaches a higher level than the current price, or close a short position when the market reaches a lower level. For example, let's say you have a long position that's currently in profit. If you have a target level at which you'd be happy to collect your gains, you can set a limit to close out your position when and if this level is met. You may then avoid the risk of a subsequent change in market direction wiping out your profit
- **Stop order:** This is an order to close an open position by selling when the market reaches a lower level, or buying when the market reaches a higher level. This type of order is known as a stop-loss and is commonly used to close out a position at a predetermined level, effectively restricting the amount of money you could lose. Adding a stop order means your position will be closed if the market moves too far against you

**70% of retail investor accounts lose money when trading spread bets and CFDs with this provider.**
Spread bets and CFDs are complex instruments and come with a high risk of losing money rapidly due to leverage.
You should consider whether you understand how spread bets and CFDs work, and whether you can afford to take the
high risk of losing your money.

---

## Source: https://labs.ig.com/rest-trading-api-guide.html

# REST Trading API Guide

## Overview

REST (Representational State Transfer) is the standard way of accessing resources over the web. It is done through four standard HTTP operations:

- GET
- POST (create)
- PUT (update)
- DELETE

For example, when you enter [http://www.ig.com](http://www.ig.com/) into the browser address bar, the browser issues a _GET_ HTTP request on the web page resource at that address, and returns a web page as a response. Similarly, in the case of our API, a GET HTTP request to [https://api.ig.com/gateway/deal/positions](https://api.ig.com/gateway/deal/positions) would return a list of open positions on the active account.

The _R_ in REST refers to the representation (or format) of the resource being accessed. In our case, it is the web-standard [JSON](http://www.json.org/) (JavaScript Object Notation) format.

If you have an IG demo account, we recommend that you run the sample application on the left, logging in using your demo account, and selecting 'Show HTTP' to see the API HTTP requests and responses in action.

## HTTP Requests

| Section | Component |
| --- | --- |
| **Action** | HTTP operation | GET - retrieve a resource<br> PUT - replace a resource<br> POST - create a resource<br> DELETE - delete a resource |
| HTTPS | The secure web protocol. It ensures that requests are encrypted between the application and the API |
| demo-api.ig.com/gateway/deal | The API gateway location. Use api.ig.com instead of demo-api.ig.com for live account access |
| /positions | The address of the resource you are accessing, positions in this case |
| **Request Header** | X-IG-API-KEY: k | The API key k (obtained from My Account on our dealing platform) is how we identify and authorise the calling application |
| CST / Authorization | A valid access token identifying the client. |
| X-SECURITY-TOKEN / IG-ACCOUNT-ID | A valid account token or account id identifying the client's current account. |
| Content-Type: application/json | Request format type. This should always be set as indicated to json only |
| Accept: application/json; charset=UTF-8 | Response format type. This should always be set as indicated to json only |
| Version: v | API version v (defaults to 1, if not specified) |
| **Request Body** | Only required for PUT or POST requests | JSON format |

### Authentication and authorisation

There are currently two mechanisms for logging into and accessing the API.

- **POST /session v1 and v2** return a CST header with a token identifying a client and an X-SECURITY-TOKEN header with a token identifying the current account. These headers should be passed on subsequent requests to the API. Both tokens are initially valid for 6 hours but get extended up to a maximum of 72 hours while they are in use.

- **POST /session v3** returns OAuth access and refresh tokens which the user can pass in subsequent API requests via the **Authorization** header, e.g.:

Authorization : Bearer 5d1ea445-568b-4748-ab47-af9b982bfb74

The access token only identifies the client so users should also pass an **IG-ACCOUNT-ID** header to specify the account the request applies to, e.g.:

IG-ACCOUNT-ID : PZVI2

The access token is only valid for a limited period of time (e.g. 60 seconds) specified by the login response.

"oauthToken": {
"access\_token": "702f6580-25c7-4c04-931d-6000efa824f8",
"refresh\_token": "a9cec2d7-fd01-4d16-a2dd-7427ef6a471d",
"scope": "profile",
"token\_type": "Bearer",
"expires\_in": "60"
}

The refresh token can used to acquire a new access token, either before or after the access token has expired but please note that the refresh token does also expiry some time after the access token has expired (e.g. 10 minutes). A call to refresh an access token will also return a new refresh token. The scope for individual clients is always **profile** which allows full access to the user's account.


### FIQL query filters

FIQL ( [https://tools.ietf.org/html/draft-nottingham-atompub-fiql-00](https://tools.ietf.org/html/draft-nottingham-atompub-fiql-00)) defines a syntax for expressing filters on entries of a web feed so it can be used to query resources. The activity history is one of the endpoints supporting this syntax and provide a way to query activities, e.g.:

"filter" : "status==ACCEPTED;(channel==PUBLIC\_WEB\_API,channel==PUBLIC\_FIX\_API);details.actions.actionType==WORKING\_ORDER\_DELETED"

This query returns all activity history item representing a cancelled order either via the public Web or FIX API.

## HTTP Response

| Section | Component |
| --- | --- |
| **Response Header** | X-REQUEST-ID | Identifies the request |
| **HTTP status code** | 200 | request executed fine |
| 401 | access denied |
| 500 | server failure |
| ... |  |
| **Response Body** | Request results, if any | JSON format. In the event of an error, the body will be of the form:<br> <br>{ "errorCode" : "the error code" } |

### Paging

Paging applies to a subset of endpoints returning a list of entries, such as e.g. historical data. A metadata section on the response should provide paging details:

"metadata": {
"paging": {
"next": "/history/activity?version=3&from=2016-05-27T00:00:00&to=2016-05-27T09:04:49&detailed=true&pageSize=10"
}
}

In this case "next" will provide a link to retrieve the next page of data.

### Errors

Error responses contain a 4xx or 5xx HTTP status and a body with the following format:

{ "errorCode": "the error code" }

User errors caused by e.g. malformed json or invalid requests will be returned as HTTP 4xx errors. The suffix of error codes in validation failures can change depending on the request field that caused the failure, e.g. "invalid.request.forceOpen" indicates that the value on request field "forceOpen" was invalid.

**70% of retail investor accounts lose money when trading spread bets and CFDs with this provider.**
Spread bets and CFDs are complex instruments and come with a high risk of losing money rapidly due to leverage.
You should consider whether you understand how spread bets and CFDs work, and whether you can afford to take the
high risk of losing your money.

