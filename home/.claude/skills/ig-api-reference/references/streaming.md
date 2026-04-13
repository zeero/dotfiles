# IG Streaming API

---

## Source: https://labs.ig.com/streaming-api-guide.html

# Streaming API Guide

Our streaming API enables you to stream real-time:

- Market prices
- Trade notifications
- Account status notifications

To get started you will need to first download the [Lightstreamer client library](https://labs.ig.com/lightstreamer-downloads.html) for your programming platform.

It is recommended that you read our REST API [guide](https://labs.ig.com/rest-trading-api-guide.html) before using our streaming API in order to understand the process of obtaining secure connection tokens.

## Concepts

### Connect

To connect to an IG streaming server you'll need to specify the following:

| Element | Value |
| --- | --- |
| **Lightstreamer Server** | Lightstreamer server address returned by the /session API. This may be subject to change so should not be hard-coded |
| **Identifier** | Active account identifier |
| **Password** | **CST-** _CST token_ **\|XST-** _X-SECURITY-TOKEN token_, tokens obtained on login via the REST /session service |
| **Callback Function** | Optional function that will receive any Lightstreamer connection notifications |

**NOTE:** The streaming API currently does not accept OAuth tokens so users holding OAuth bearer tokens should call **GET /session?fetchSessionTokens=true** to obtain CST and X-SECURITY-TOKEN tokens.

### Subscribe

To subscribe for price or account updates, a subscription request must be made to Lightstreamer. A subscription request consists of:

- A list of items (eg IG market identifiers)
- A list of fields relevant to those items (eg BID, ASK)

Multiple subscriptions can be made, but each subscription may only contain items of one type. By default, up to 40 simultaneous subscriptions per connection may be created. Whilst it's possible to increase this number by connecting more than once, this is a breach of IG's terms and conditions and may result in your API permissions being revoked. Please contact us if you need to increase your usage quotas.

A Lightstreamer connection needs an active thread to stream data so it is important for applications to establish connections in separate threads. Creating multiple Lightstreamer connections on the main thread may cause connections to drop intermittently. The Lightstreamer client should also have the ability to reconnect in the event of a connection failure or if instructed by the Lightstreamer server (e.g. due to a LOOP rebind message). A re-connection attempt can fail if the CST and X-SECURITY-TOKEN tokens have expired in which case it will be necessary to re-authenticate to obtain new security tokens.

The full list of available subscription item identifiers and fields can be found [here](https://labs.ig.com/streaming-api-reference.html).

## Example - Javascript Lightstreamer code

### Connect

function connectToLightstreamer(){

// include the Lightstreamer LightstreamerClient module using require.js
require(\["LightstreamerClient"\], function (LightstreamerClient) {

// Instantiate Lightstreamer client instance
lsClient = new LightstreamerClient(lsEndpoint);

// Set up login credentials
lsClient.connectionDetails.setUser(activeAccountId);
lsClient.connectionDetails.setPassword("CST-" + client\_token + "\|XST-" + account\_token);

// Add connection event listener callback functions
// Note: the Lightstreamer library will transparently attempt to reconnect a number of times
// in the event of communications errors
lsClient.addListener({
onListenStart: function() {
console.log('ListenStart');
},
onStatusChange: function(status) {
console.log('Lightstreamer connection status:' + status);
}
});

// Connect to Lightstreamer
lsClient.connect();
});
}

### Create a subscription

Each Lightstreamer subscription requires:

- A Lightstreamer connection
- A subscription type - only DISTINCT or MERGE are supported\*
- A list of items of the same type (ie price, account or epic). For example, a list of instrument EPICs in the case of a price subscription
- The desired fields for those items

\\* DISTINCT indicates that each update should yield a notification and is required for trade notifications. MERGE indicates that updates occurring very close together should only yield one update, and is used for account and price notifications to regulate the update rate)

For example:

function connectToLightstreamer(itemList, fieldList){
// include the Lightstreamer Subscription module using require.js
require(\["Subscription"\], function (Subscription) {

var subscription = new Subscription(
"MERGE",
itemList, // e.g. {"MARKET:IX.D.FTSE.DAILY.IP","MARKET:MT.D.GC.MONTH1.IP"}
fieldList // e.g. {"BID", "OFFER"}
);

// Set up Lightstreamer event listener
subscription.addListener({
onSubscription: function () {
console.log('subscribed');
},
onUnsubscription: function () {
console.log('unsubscribed');
},
onSubscriptionError: function (code, message) {
console.log('subscription failure: ' + code + " message: " + message);
},
onItemUpdate: function (updateInfo) {
// Lightstreamer published some data
var epic = updateInfo.getItemName().split(":")\[1\];
updateInfo.forEachField(function (fieldName, fieldPos, value) {
console.log('Field: ' + fieldName + " Value: " + value);
// Alternatively, if the field is JSON, such as in a confirm message:
var confirm = JSON.parse(value);
console.log('json: ' + confirm.dealId)
}
});
}
});

// Subscribe to Lightstreamer
lsClient.subscribe(subscription);
}


If a subscription is no longer required, it can be removed at any time by unsubscribing. For example:

lsClient.unsubscribe(subscription);
lsClient.closeConnection();

**70% of retail investor accounts lose money when trading spread bets and CFDs with this provider.**
Spread bets and CFDs are complex instruments and come with a high risk of losing money rapidly due to leverage.
You should consider whether you understand how spread bets and CFDs work, and whether you can afford to take the
high risk of losing your money.

---

## Source: https://labs.ig.com/streaming-api-reference.html

# Streaming API Reference

### Price subscription (price availability subject to account permissions)

Subscription data adapter: Pricing

| Item | Field | Description |
| --- | --- | --- |
| PRICE:{account identifier}:{epic}<br> (MERGE mode)<br> Data adapter: Pricing | MID\_OPEN | Opening mid price |
| HIGH | Intraday high price |
| LOW | Intraday low price |
| BIDQUOTEID | ID of bid quote to reference when trading |
| ASKQUOTEID | ID of ask quote to reference when trading |
| BIDPRICE1 | The bid price of the top tier of the ladder |
| BIDPRICE2 | Ladder tier prices |
| BIDPRICE3 |  |
| BIDPRICE4 |  |
| BIDPRICE5 |  |
| ASKPRICE1 | The ask price of the top tier of the ladder |
| ASKPRICE2 | Ladder tier prices |
| ASKPRICE3 |  |
| ASKPRICE4 |  |
| ASKPRICE5 |  |
| BIDSIZE1 | Size available at the 1st tier price<br> If not present then the ladder is not configured for this instrument. |
| BIDSIZE2 | Ladder tier sizes |
| BIDSIZE3 |  |
| BIDSIZE4 |  |
| BIDSIZE5 |  |
| ASKSIZE1 | Size available at the 1st tier price<br> If not present then the ladder is not configured for this instrument. |
| ASKSIZE2 | Ladder tier sizes |
| ASKSIZE3 |  |
| ASKSIZE4 |  |
| ASKSIZE5 |  |
| CURRENCY0 | The currency of the default ladder<br> This is only guaranteed to be populated if there is a ladder, ie one or more ASKSIZE1-5 and BIDSIZE1-5 is populated |
| CURRENCY1 | Currency for the ladder fields prefixed C1 |
| C1BIDSIZE{1-5} | The bid trading size threshold |
| C1ASKSIZE{1-5} | The ask trading size threshold |
| CURRENCY2 | Currency for the ladder fields prefixed C2 |
| C2BIDSIZE{1-5} | The bid trading size threshold |
| C2ASKSIZE{1-5} | The ask trading size threshold |
| CURRENCY3 | Currency for the ladder fields prefixed C3 |
| C3BIDSIZE{1-5} | The bid trading size threshold |
| C3ASKSIZE{1-5} | The ask trading size threshold |
| CURRENCY4 | Currency for the ladder fields prefixed C4 |
| C4BIDSIZE{1-5} | The bid trading size threshold |
| C4ASKSIZE{1-5} | The ask trading size threshold |
| CURRENCY5 | Currency for the ladder fields prefixed C5 |
| C5BIDSIZE{1-5} | The bid trading size threshold |
| C5ASKSIZE{1-5} | The ask trading size threshold |
| TIMESTAMP | The timestamp in UTC millis |
| DLG\_FLAG | "CLOSED "<br> "CALL "<br> "DEAL "<br> "EDIT "<br> "CLOSINGSONLY "<br> "DEALNOEDIT "<br> "AUCTION "<br> "AUCTIONNOEDIT"<br> "SUSPEND " |
| NET\_CHG | Price change vs open |
| NET\_CHG\_PCT | Percentage change vs open |
| DELAY | Delayed price flag (0=false, 1=true) |

### Market subscription (deprecated in favour of Price subscription)

⚠

This subscription reaches end of life on **1 May 2026** and will be decommissioned on **8 May 2026**. L1, an alias for MARKET, is also affected. Please migrate to the [PRICE subscription](https://labs.ig.com/streaming-api-reference.html#price-subscription) before then.


| Item | Field | Description |
| --- | --- | --- |
| MARKET:{epic}<br>(MERGE mode) | MID\_OPEN | Opening mid price |
| HIGH | Intraday high price |
| LOW | Intraday low price |
| CHANGE | Price change compared with<br> open value |
| CHANGE\_PCT | Price percent change compared<br> with open value |
| UPDATE\_TIME | Publish time of last price update (UK local time, i.e. GMT or BST) |
| MARKET\_DELAY | Delayed price (0=false, 1=true) |
| MARKET\_STATE | Market status: CLOSED,<br> OFFLINE, TRADEABLE, EDIT, AUCTION, AUCTION\_NO\_EDIT, SUSPENDED |
| BID | Bidprice |
| OFFER | Offerprice |
| STRIKE\_PRICE | Strike price (Sprint markets) |
| ODDS | Trade odds (Sprint markets) |

### Account subscription

| Item | Field | Description |
| --- | --- | --- |
| ACCOUNT:{account identifier}<br>(MERGE mode) | PNL | Accountprofit and loss value |
| DEPOSIT | Account minimum deposit value required for margins |
| AVAILABLE\_CASH | Amount cash available to trade value, after account balance, profit and loss and minimum deposit amount have been considered |
| PNL | Profit/Loss |
| PNL\_LR | Profit/Loss Limited Risk |
| PNL\_NLR | Profit/Loss Non-limited Risk |
| FUNDS | Funds |
| MARGIN | Margin |
| MARGIN\_LR | Margin Limited Risk |
| MARGIN\_NLR | Margin Non-limited Risk |
| AVAILABLE\_TO\_DEAL | Available to Trade |
| EQUITY | Equity |
| EQUITY\_USED | Equity Used |

### Trade subscription

| Item | Field | Description |
| --- | --- | --- |
| TRADE:{account identifier}<br>(DISTINCT mode) | CONFIRMS | Trade confirmations for an account

|     |     |
| --- | --- |
| Constant direction | BUY, SELL |
| Number limitLevel | Limit level |
| String dealId | Deal identifier |
| Array\[Object\] affectedDeals | Affected deals

|     |     |
| --- | --- |
| String dealId | Deal identifier |
| Constant status | Deal status

|     |     |
| --- | --- |

| AMENDED | Amended |
| DELETED | Deleted |
| FULLY\_CLOSED | Fully closed |
| OPENED | Opened |
| PARTIALLY\_CLOSED | Partially closed | | |
| Number stopLevel | Stop level |
| String expiry | Instrumentexpiry |
| Number size | Trade size |
| Constant status | Resultant position or working order status

|     |     |
| --- | --- |

| AMENDED | Amended |
| CLOSED | Closed |
| DELETED | Deleted |
| OPEN | Open |
| PARTIALLY\_CLOSED | Partially Closed | |
| String epic | InstrumentEPIC identifier |
| Number level | Trade level |
| Boolean guaranteedStop | True if a guaranteed stop is in place |
| String dealReference | Deal reference |
| Constant dealStatus | Deal status

|     |     |
| --- | --- |

| ACCEPTED | Accepted |
| REJECTED | Rejected | |
| Object repeatDealingWindow | Repeat deal window parent object

|     |     |
| --- | --- |
| Array\[Object\] entries | List of repeat deal windows

|     |     |
| --- | --- |
| double size | size of the repeat dealing window |
| long expiry | expiry timestamp for this window | | | |
| OPU | Open position updates for an account

|     |     |
| --- | --- |
| Constant direction | BUY, SELL |
| Number limitLevel | Limit level |
| String dealId | Deal identifier |
| String dealIdOrigin | Deal identifier of the originating deal |
| Number stopLevel | Stop level |
| String expiry | Instrumentexpiry |
| Date timestamp | Event date and time |
| Number size | Trade size |
| Constant status | Position status

|     |     |
| --- | --- |

| OPEN | Opened |
| UPDATED | Updated |
| DELETED | Closed | |
| String epic | InstrumentEPIC identifier |
| Number level | Trade level |
| Boolean guaranteedStop | True if a guaranteed stop is in place |
| String dealReference | Deal reference |
| Constant dealStatus | Deal status

|     |     |
| --- | --- |

| ACCEPTED | Accepted |
| REJECTED | Rejected | |
| String channel | User channel (do not bind to this value - it will be converted to a constant enum) |
| String currency | Currency |
| Number trailingStopDistance | Trailing stop distance |
| Number trailingStep | Trailing stop increment | |
| WOU | Working order updates for an account

|     |     |
| --- | --- |
| Constant direction | BUY, SELL |
| Number limitDistance | Limit distance |
| String dealId | Deal identifier |
| Number stopDistance | Stop distance |
| String expiry | Instrumentexpiry |
| Date timestamp | Event date and time |
| Number size | Trade size |
| Constant status | Working order status

|     |     |
| --- | --- |

| OPEN | Opened |
| UPDATED | Updated |
| DELETED | Closed | |
| String epic | InstrumentEPIC identifier |
| Number level | Trade level |
| Boolean guaranteedStop | True if a guaranteed stop is in place |
| String dealReference | Deal reference |
| Constant dealStatus | Deal status

|     |     |
| --- | --- |

| ACCEPTED | Accepted |
| REJECTED | Rejected | |
| String currency | Currency |
| Constant orderType | Order type

|     |     |
| --- | --- |

| LIMIT | Limit order |
| STOP | Stop order | |
| Constant timeInForce | Time in force

|     |     |
| --- | --- |

| GOOD\_TILL\_CANCELLED | Good until cancelled |
| GOOD\_TILL\_DATE | Good until specified date | |
| Date goodTillDate | Good until specified date |
| String channel | User channel (do not bind to this value - it will be converted to a constant enum) | |

### Chart subscriptions - Consolidated (candle) data

| Item | Field | Description |
| --- | --- | --- |
| CHART:{epic}:{scale}<br>(MERGE mode) | {scale} | SECOND, 1MINUTE, 5MINUTE, HOUR |
| LTV | Last traded volume |
| TTV | Incremental volume |
| UTM | Update time (as milliseconds from the Epoch) |
| DAY\_OPEN\_MID | Mid open price for the day |
| DAY\_NET\_CHG\_MID | Change from open price to current (MID price) |
| DAY\_PERC\_CHG\_MID | Daily percentage change (MID price) |
| DAY\_HIGH | Daily high price (MID) |
| DAY\_LOW | Daily low price (MID) |
| OFR\_OPEN | Candle open price (OFR) |
| OFR\_HIGH | Candle high price (OFR) |
| OFR\_LOW | Candle low price (OFR) |
| OFR\_CLOSE | Candle close price (OFR) |
| BID\_OPEN | Candle open price (BID) |
| BID\_HIGH | Candle high price (BID) |
| BID\_LOW | Candle low price (BID) |
| BID\_CLOSE | Candle close price (BID) |
| LTP\_OPEN | Candle open price (Last Traded Price) |
| LTP\_HIGH | Candle high price (Last Traded Price) |
| LTP\_LOW | Candle low price (Last Traded Price) |
| LTP\_CLOSE | Candle close price (Last Traded Price) |
| CONS\_END | 1 when candle ends, otherwise 0 |
| CONS\_TICK\_COUNT | Number of ticks in candle |

### Chart subscriptions - Tick data

| Item | Field | Description |
| --- | --- | --- |
| CHART:{epic}:TICK<br>(DISTINCT mode) | BID | Bidprice |
| OFR | Offerprice |
| LTP | Last traded price |
| LTV | Last traded volume |
| TTV | Incremental trading volume |
| UTM | Update time (as milliseconds from the Epoch) |
| DAY\_OPEN\_MID | Mid open price for the day |
| DAY\_NET\_CHG\_MID | Change from open price to current (MID price) |
| DAY\_PERC\_CHG\_MID | Daily percentage change (MID price) |
| DAY\_HIGH | Daily high price (MID) |
| DAY\_LOW | Daily low price (MID) |

**70% of retail investor accounts lose money when trading spread bets and CFDs with this provider.**
Spread bets and CFDs are complex instruments and come with a high risk of losing money rapidly due to leverage.
You should consider whether you understand how spread bets and CFDs work, and whether you can afford to take the
high risk of losing your money.

