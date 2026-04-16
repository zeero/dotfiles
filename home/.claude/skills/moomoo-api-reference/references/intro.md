
## AI Integration & OpenClaw

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/intro/ai.html


With AI programming tools, you can use natural language to quickly build Futu API integrations — from market data queries and order placement to strategy backtesting. This page explains how to provide Futu API documentation and programming skills to AI, turning it into your quantitative development assistant.

With AI programming tools, you can use natural language to quickly build Moomoo API integrations — from market data queries and order placement to strategy backtesting. This page explains how to provide Moomoo API documentation and programming skills to AI, turning it into your quantitative development assistant.


## Download Documentation for AI


All API documentation on this site is available in Markdown format. Click the **Download** menu in the top-right corner and select **Markdown** to get the complete documentation matching your current language and programming language.

Place the downloaded `.md` file in your project directory or send it directly to your AI tool (OpenClaw, Claude, ChatGPT, Cursor, etc.). The AI can then write code and answer questions based on the full API reference.

\> \*\*Works with any AI tool\*\*: The Markdown documentation serves as context for any AI, helping it accurately understand Futu API's interface definitions, parameters, and response formats.

\> \*\*Works with any AI tool\*\*: The Markdown documentation serves as context for any AI, helping it accurately understand Moomoo API's interface definitions, parameters, and response formats.


## Install Skills


OpenD Skills is a Futu API toolset built on the Claude Code Skills standard. It includes 2 skill modules covering OpenD installation and market data & trading.

OpenD Skills is a Moomoo API toolset built on the Claude Code Skills standard. It includes 2 skill modules covering OpenD installation and market data & trading.


### One-Click Install (Recommended)


Copy the following text and send it to your AI Agent (OpenClaw, Claude Code, Cursor, Cline, etc.):

1

2

3

4

5

6

7

8

9

10

11

12

13

14

15

16

17

18

19

20

21

22

1

2

3

4

5

6

7

8

9

10

11

12

13

14

15

16

17

18

19

20

21

22

> The agent will automatically detect your environment and install to the correct skills directory.


### Manual Install


Click to download [opend-skills.zip](https://openapi.futunn.com/skills/opend-skills.zip), then extract and copy `skills` to the appropriate location.


### Manual Install


Click to download [opend-skills.zip](https://openapi.moomoo.com/skills/opend-skills.zip), then extract and copy `skills` to the appropriate location.


#### Claude Code / VS Code / Cursor / JetBrains (with Claude plugin)


| Scope | Target Directory |
| --- | --- |
| Global (all projects) | `~/.claude/skills/` |
| Project-level (current project only) | `project-root/.claude/skills/` |

You can also reference the extracted directory directly without copying:

```bash
claude --add-dir /path/to/opend-skills

```

1


#### Cursor (without Claude plugin, using built-in AI)


Copy each SKILL.md as a rule file under `.cursor/rules/`:

```bash
mkdir -p your-project/.cursor/rules/
cp opend-skills/skills/futuapi/SKILL.md your-project/.cursor/rules/futuapi.md
cp opend-skills/skills/install-futu-opend/SKILL.md your-project/.cursor/rules/install-futu-opend.md

```

1

2

3

```bash
mkdir -p your-project/.cursor/rules/
cp opend-skills/skills/moomooapi/SKILL.md your-project/.cursor/rules/moomooapi.md
cp opend-skills/skills/install-moomoo-opend/SKILL.md your-project/.cursor/rules/install-moomoo-opend.md

```

1

2

3


#### VS Code (without Claude plugin, using Cline / Roo Code)


Manually integrate SKILL.md content into the corresponding extension's instruction file:

| Target | Description |
| --- | --- |
| `project-root/.vscode/cline_instructions.md` | Cline extension custom instructions |
| `project-root/.roo/rules/` | Roo Code extension custom rules |


#### JetBrains IDE (without Claude plugin, using built-in AI Assistant)


```bash
mkdir -p your-project/.junie/guidelines/
cp opend-skills/skills/futuapi/SKILL.md your-project/.junie/guidelines/futuapi.md
cp opend-skills/skills/install-futu-opend/SKILL.md your-project/.junie/guidelines/install-futu-opend.md

```

1

2

3

```bash
mkdir -p your-project/.junie/guidelines/
cp opend-skills/skills/moomooapi/SKILL.md your-project/.junie/guidelines/moomooapi.md
cp opend-skills/skills/install-moomoo-opend/SKILL.md your-project/.junie/guidelines/install-moomoo-opend.md

```

1

2

3


#### OpenClaw


```bash
cp -r opend-skills/skills/* ~/.openclaw/skills/

```

1

After installation, verify by typing `/` in the chat to check if futuapi and install-futu-opend skills appear.

After installation, verify by typing `/` in the chat to check if moomooapi and install-moomoo-opend skills appear.


## Skills Overview



### 1\. futuapi — Market Data & Trading



### 1\. moomooapi — Market Data & Trading


Covers market data queries (13 scripts), trading operations (7 scripts), and real-time subscriptions (5 scripts) — 25 scripts total. Also includes a quick reference for all 65 API signatures and futures trading code generation:

| Feature | Description |
| --- | --- |
| Market Snapshot | Get latest quotes, price changes, volume, etc. |
| Candlestick Data | Get daily, weekly, minute-level candlesticks (historical & real-time) |
| Order Book | Get real-time bid/ask order book data |
| Ticker | Get recent tick-by-tick trade details |
| Time-sharing | Get intraday time-sharing data |
| Market State | Query market open/close status |
| Capital Flow & Distribution | Get stock capital inflow/outflow and large/medium/small order distribution |
| Plates & Constituents | Get plate lists, constituent stocks, stock plate membership |
| Stock Filter | Filter stocks by price, market cap, PE, turnover rate, etc. |
| Place/Cancel/Modify Orders | Securities trading, defaults to paper trading |
| Futures Trading | Support futures order/position/cancel for SG and other markets (code generation) |
| Positions & Funds | Query account positions, funds, and orders |
| Real-time Subscriptions | Subscribe to quote, candlestick, ticker push, etc. |
| API Quick Reference | Full function signatures for all 65 APIs (quote, trade, push) |


### 2\. install-futu-opend — OpenD Installation



### 2\. install-moomoo-opend — OpenD Installation


- Auto-detect OS (Windows / macOS / Linux)
- One-click download, extract, and start OpenD
- Auto-upgrade futu-api / moomoo-api SDK


## Usage



### Slash Commands (Claude Code)


Type `/` followed by the skill name in the chat:

- `/futuapi` — Market data & trading
- `/install-futu-opend` — OpenD installation

- `/moomooapi` — Market data & trading
- `/install-moomoo-opend` — OpenD installation


### Natural Language


Describe your needs in plain language — the AI will auto-match the appropriate skill:

- "Get the candlestick chart for AAPL" — triggers market data query
- "Buy 100 shares of AAPL using paper trading" — triggers order placement
- "Help me install OpenD" — triggers installation assistant


## Notes


- Log in to OpenD manually before using Skills
- Trading defaults to paper trading (SIMULATE). To use real trading, explicitly say "real" or "live", and confirm with your trading password
- Be aware of API rate limits (e.g., 15 orders per 30 seconds) to avoid throttling
- Subscription quotas are limited (100–2000). Release unused subscriptions periodically
- To update Skills, re-download and extract to overwrite existing files

←
[Fee](https://openapi.moomoo.com/moomoo-api-doc/en/intro/fee.html)[Visualization OpenD](https://openapi.moomoo.com/moomoo-api-doc/en/quick/opend-base.html)
→

## Authorities and Limitations

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/intro/authority.html



## Login Limitations



### Opening Accounts


You need to finish opening your trading accounts on Futubull APP, before logging in to Futu API.

You need to finish opening your trading accounts on moomoo APP, before logging in to Moomoo API.


### Compliance Confirmation


After the first login, you need to complete _API Questionnaire and Agreements_ before you can continue to use Futu API. [Click here](https://www.futunn.com/about/api-disclaimer?lang=en-US) for Futubull users.

After the first login, you need to complete _API Questionnaire and Agreements_ before you can continue to use Moomoo API. [Click here](https://www.moomoo.com/about/api-disclaimer?lang=en-us) for moomoo users.


## Quotation Data


There are several limitations for market quotation data as follow:

- **Quote Right** \-\- The authority to obtain the relevant market data.
- **Interface Frequency Limitations** \-\- Frequency limits of calling interfaces.
- **Subscription Quota** \-\- Number of real-time quotes subscribed at the same time.
- **Historical Candlestick Quota** \-\- The total number of subjects pulling the historical candlestick per 30 days.


### Quote Right


You need the corresponding permission to obtain data of each market through Futu API. The permission of Futu API is not exactly the same as that of APP. Different levels correspond to different time delay, order book levels, and the permission to use the interface.

You need the corresponding permission to obtain data of each market through Moomoo API. The permission of Moomoo API is not exactly the same as that of APP. Different levels correspond to different time delay, order book levels, and the permission to use the interface.

You need to buy a quotation card before you can obtain the quotation of some varieties, the specific way to obtain is shown in the table below.

| Market | Security Type | Quote Right Acquisition Method |
| --- | --- | --- |
| HK Market | Securities (including stocks, ETFs, warrants, CBBCs, Inline Warrants) | \\* Mainland China Verified users: LV2 market quotes for free. Purchase [HK Stocks Advanced Full Market Quotes](https://qtcard.futunn.com/intro/sf?type=10&clientlang=2&is_support_buy=1) for SF market quotes <br>\\* Global users: LV1 market quotes for free. Purchase [HK stocks LV2 advanced market](https://qtcard.futunn.com/intro/hklv2?type=1&clientlang=2&is_support_buy=1) for LV2 market quotes. Purchase [HK Stocks Advanced Full Market Quotes](https://qtcard.futunn.com/intro/sf?type=10&clientlang=2&is_support_buy=1) for SF market quotes |
| Indices |
| Plates |
| Options | \\* Mainland China Verified users: LV2 market quotes for free during promotion period. <br>\\* Global users: LV1 market quotes for free. Purchase [HK stock options futures LV2 advanced market](https://qtcard.futunn.com/intro/hk-derivativeslv2?type=8&clientlang=2&is_support_buy=1) for LV2 market data |
| Futures |
| US Market | Securities (Covers NYSE, NYSE-American and Nasdaq listed equities, ETFs) | \\* Not shared with App market data permissions. Purchase [Nasdaq Basic](https://qtcardfthk.futufin.com/intro/nasdaq-basic?type=12&clientlang=2&is_support_buy=1) for LV1 market quotes (basic quotes, 24H).<br>\\* Not shared with App market data permissions. Purchase [Nasdaq Basic+TotalView](https://qtcardfthk.futufin.com/intro/nasdaq-basic?type=18&clientlang=2&is_support_buy=1) for LV2 market quotes (Full Order Book for 24H trading). |
| Plates |
| OTC Securities | Unsupported. |
| Options (Covers US stock options, US index options) | \\* Customers who meet the threshold <br><br>Threshold：Total assets greater than $3000.<br> : get LV1 market data for free <br>\\* Customers who do not meet the threshold <br><br>Threshold：Total assets greater than $3000.<br> : Purchase [OPRA Options Real-time Quote](https://qtcardfthk.futufin.com/intro/api-usoption-realtime?type=16&is_support_buy=1&lang=en-us) for LV1 market data |
| Futures | \\* For clients who have a futures account.<br><br>- Supported by FUTU HK/Moomoo Financial Singapore Pte. Ltd. <br>- Futures accounts do not supported by Moomoo Financial Inc.<br> For CME Group quotes <br><br>Covers quotes from CME, CBOT, NYMEX, COMEX <br>, please access the [CME Group Futures LV2](https://qtcardfthk.futufin.com/intro/cme?type=30&is_support_buy=1)<br>For CME quotes, please access the [CME Futures LV2](https://qtcardfthk.futufin.com/intro/cme?type=31&is_support_buy=1)<br>For CBOT quotes, please access the [CBOT Futures LV2](https://qtcardfthk.futufin.com/intro/cme?type=32&is_support_buy=1)<br>For NYMEX quotes, please access the [NYMEX Futures LV2](https://qtcardfthk.futufin.com/intro/cme?type=33&is_support_buy=1)<br>For NYMEX quotes, please access the [COMEX Futures LV2](https://qtcardfthk.futufin.com/intro/cme?type=34&is_support_buy=1)<br>\\* For clients who do not have a futures account: Unsupported. |
| Indices | Unsupported. |
| A-share Market | Securities (including stocks, ETFs) | \\* Mainland China Verified users: LV1 market data for free.<br>\\* Global users/institutional users: Unsupported. |
| Indices |
| Plates |
| Singapore Market | Futures | Unsupported. |
| Japanese Market | Futures | Unsupported. |


### Quote Right


You need the corresponding permission to obtain data of each market through Moomoo API. The permission of Moomoo API is not exactly the same as that of APP. Different levels correspond to different time delay, order book levels, and the permission to use the interface.

You need to buy a quotation card before you can obtain the quotation of some varieties, the specific way to obtain is shown in the table below.

| Market | Security Type | Quote Right Acquisition Method |
| --- | --- | --- |
| HK Market | Securities (including stocks, ETFs, warrants, CBBCs, Inline Warrants) | \\* Mainland China Verified users: LV2 market quotes for free. Purchase [HK Stocks Advanced Full Market Quotes](https://qtcard.moomoo.com/intro/sf?type=10&clientlang=2&is_support_buy=1) for SF market quotes <br>\\* Global users: LV1 market quotes for free. Purchase [HK stocks LV2 advanced market](https://qtcard.moomoo.com/intro/hklv2?type=1&clientlang=2&is_support_buy=1) for LV2 market quotes. Purchase [HK Stocks Advanced Full Market Quotes](https://qtcard.moomoo.com/intro/sf?type=10&is_support_buy=1&clientlang=2) for SF market quotes |
| Indices |
| Plates |
| Options | \\* Mainland China Verified users: LV2 market quotes for free during promotion period. <br>\\* Global users: LV1 market quotes for free. Purchase [HK stock options futures LV2 advanced market](https://qtcard.moomoo.com/intro/hklv2-derivativeslv2?type=9&is_support_buy=1&clientlang=2) for LV2 market data |
| Futures |
| US Market | Securities (Covers NYSE, NYSE-American and Nasdaq listed equities, ETFs) | \\* Not shared with App market data permissions. Purchase [Nasdaq Basic](https://qtcard.moomoo.com/intro/nasdaq-basic?type=12&is_support_buy=1) for LV1 market quotes (basic quotes, 24H).<br>\\* Not shared with App market data permissions. Purchase [Nasdaq Basic+TotalView](https://qtcard.moomoo.com/intro/nasdaq-basic?type=18&is_support_buy=1) for LV2 market quotes (Full Order Book for 24H trading). |
| Plates |
| OTC Securities | Unsupported. |
| Options (Covers US stock options, US index options) | \\* Customers who meet the threshold <br><br>Threshold：<br>- Total assets of HK and US stocks greater than $3000.<br>- Have traded in HK and US stocks.<br> : get LV1 market data for free <br>\\* Customers who do not meet the threshold <br><br>Threshold：<br>- Total assets of HK and US stocks greater than $3000.<br>- Have traded in HK and US stocks.<br> : Purchase [OPRA Options Real-time Quote](https://qtcard.moomoo.com/intro/api-usoption-realtime?type=16&is_support_buy=1&lang=en-us) for LV1 market data |
| Futures | \\* For clients who have a futures account.<br><br>- Available in: FUTU HK, Moomoo SG, Moomoo MY.<br>- Not available in: Moomoo US, Moomoo JP, Moomoo CA, Moomoo AU.<br> For CME Group quotes <br><br>Covers quotes from CME, CBOT, NYMEX, COMEX <br>, please access the [CME Group Futures LV2](https://qtcard.moomoo.com/intro/cme?type=30&is_support_buy=1)<br>For CME quotes, please access the [CME Futures LV2](https://qtcard.moomoo.com/intro/cme?type=31&is_support_buy=1)<br>For CBOT quotes, please access the [CBOT Futures LV2](https://qtcard.moomoo.com/intro/cme?type=32&is_support_buy=1)<br>For NYMEX quotes, please access the [NYMEX Futures LV2](https://qtcard.moomoo.com/intro/cme?type=33&is_support_buy=1)<br>For NYMEX quotes, please access the [COMEX Futures LV2](https://qtcard.moomoo.com/intro/cme?type=34&is_support_buy=1)<br>\\* For clients who do not have a futures account: Unsupported. |
| Indices | Unsupported. |
| A-share Market | Securities (including stocks, ETFs) | \\* Mainland China Verified users: LV1 market data for free.<br>\\* Global users/institutional users: Unsupported. |
| Indices |
| Plates |
| Singapore Market | Futures | Unsupported. |
| Japanese Market | Futures | Unsupported. |

Tips

In the above table, the Mainland China Verified users and the Globa users are distinguished by the login IP address of OpenD.

Tips

In the above table, the Mainland China Verified users and the Global users are distinguished by the login IP address of OpenD.


### Interface Frequency Limitations


In order to protect the server from malicious attacks, there are frequency limitations for all interfaces that need to send requests to Futu servers.
The frequency limitation rules for each API are different. For more information, please see **Interface Limitations** at the bottom of each API page.

Example:

The limitation rule of [Get Market Snapshot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-snapshot.html) is: A maximum of 60 requests every 30 seconds. You can request a uniform request every 0.5 seconds. You can also quickly request 60 times, rest for 30 seconds, and then request the next round. If the frequency limitation is exceeded, an error will be returned by the interface.

In order to protect the server from malicious attacks, there are frequency limitations for all interfaces that need to send requests to moomoo servers.
The frequency limitation rules for each API are different. For more information, please see **Interface Limitations** at the bottom of each API page.

Example:

The limitation rule of [Get Market Snapshot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-snapshot.html) is: A maximum of 60 requests every 30 seconds. You can request a uniform request every 0.5 seconds. You can also quickly request 60 times, rest for 30 seconds, and then request the next round. If the frequency limitation is exceeded, an error will be returned by the interface.


### Subscription Quota & Historical Candlestick Quota


The limitation rules of subscription quota and historical candlestick quota as follows:

| User Type | Subscription Quota | Historical Candlestick Quota |
| --- | --- | --- |
| Finished Opening trading accounts. | 100 | 100 |
| Total asset > 10,000 HKD. | 300 | 300 |
| Satisfy 1 of the items following: <br> 1\. Total asset > 500,000 HKD; <br> 2\. The number of monthly filled orders > 200; <br> 3\. Monthly trading volume > 2 million HKD. | 1000 | 1000 |
| Satisfy 1 of the items following: <br> 1\. Total asset > 5 million HKD; <br> 2\. The number of monthly filled orders > 2000; <br> 3\. Monthly trading volume > 20 million HKD. | 2000 | 2000 |

**1\. Total asset**

Total asset，refers to all your assets in Futu, including securities, futures, funds and bonds assets, converted into HKD according to the spot exchange rate.

**2\. The monthly number of filled orders**

It is calculated by taking the larger value of the number of filled orders the last natural month and that of the current natural month, that is:

**max (the number of filled orders of the last natural month, the number of filled orders of the current natural month)**

**3\. Monthly Trading volume**

It is calculated by taking the larger value of the total trading volume of your last natural month and that of the current natural month, which is converted into HKD according to the spot exchange rate, that is:

**max (the total trading volume of the last natural month, the total trading volume of the current natural month)**

The calculation of futures trading value needs to be multiplied by the adjustment factor (0.1 by default). The formula for calculating futures trading volume is as follows:

**Futures trading value = ∑ (volume of a single transaction \* trading price \* contract multiplier \* exchange rate \* adjustment factor)**

**4\. Subscription Quota**

It is applicable to the real-time data interface that can only be obtained after a subscription. One type of subscription for each stock takes up 1 subscription quota, and canceling the subscription will release the occupied quota.

Example:

Suppose your Subscription Quota is 100. When you subscribe to real-time order book for HK.00700, real-time ticker for US.AAPL, and real-time quotation for SH.600519 at the same time, the Subscription Quota will occupy 3, and the remaining Subscription Quota will be 97. At this time, if you cancel the real-time order book subscription of HK.00700, your Subscription Quota will become 2, and the remaining Subscription Quota will become 98.

**5\. Historical Candlestick Quota**

Suitable for [Get Historical Candlesticks](https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-history-kline.html) interface. In the last 30 days, requests for historical candlesticks of each stock will occupy one Historical Candlestick Quota. Repeated requests for historical candlestick of the same stock within the last 30 days will not be counted repeatedly.

Example:

Suppose your Historical Candlestick Quota is 100, and today is July 5, 2020. You have requested historical candlesticks for a total of 60 stocks between June 5, 2020 and July 5, 2020. The remaining Historical Candlestick Quota is 40.

**1\. Total asset**

Total asset, refers to all your assets in moomoo, including securities, futures, funds and bonds assets, converted into HKD according to the spot exchange rate.

**2\. The monthly number of filled orders**

It is calculated by taking the larger value of the number of filled orders the last natural month and that of the current natural month, that is:

**max (the number of filled orders of the last natural month, the number of filled orders of the current natural month)**

**3\. Monthly Trading volume**

It is calculated by taking the larger value of the total trading volume of your last natural month and that of the current natural month, which is converted into HKD according to the spot exchange rate, that is:

**max (the total trading volume of the last natural month, the total trading volume of the current natural month)**

The calculation of futures trading value needs to be multiplied by the adjustment factor (0.1 by default). The formula for calculating futures trading volume is as follows:

**Futures trading value = ∑ (volume of a single transaction \* trading price \* contract multiplier \* exchange rate \* adjustment factor)**

**4\. Subscription Quota**

It is applicable to the real-time data interface that can only be obtained after a subscription. One type of subscription for each stock takes up 1 subscription quota, and canceling the subscription will release the occupied quota.

Example:

Suppose your Subscription Quota is 100. When you subscribe to real-time order book for HK.00700, real-time ticker for US.AAPL, and real-time quotation for SH.600519 at the same time, the Subscription Quota will occupy 3, and the remaining Subscription Quota will be 97. At this time, if you cancel the real-time order book subscription of HK.00700, your Subscription Quota will become 2, and the remaining Subscription Quota will become 98.

**5\. Historical Candlestick Quota**

Suitable for [Get Historical Candlesticks](https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-history-kline.html) interface. In the last 30 days, requests for historical candlesticks of each stock will occupy one Historical Candlestick Quota. Repeated requests for historical candlestick of the same stock within the last 30 days will not be counted repeatedly. Meanwhile, subscribing to candlestick of different periods for the same stockonly occupies one quota and will not be accumulated repeatedly.
Example:

Suppose your Historical Candlestick Quota is 100, and today is July 5, 2020. You have requested historical candlesticks for a total of 60 stocks between June 5, 2020 and July 5, 2020. The remaining Historical Candlestick Quota is 40.

Tips

- Subscription Quota and Historical Candlestick Quota are automatically assigned and do not need to be applied manually.
- For newly deposited accounts, the quota will automatically take effect within 2 hours.
- _Asset in Transit_

HK IPO Subscription and application for rights issue may generate Asset in Transit.

will not be calculated in quota assign.


## Trading Functions


- When you trade in a specific market, you need to first confirm whether a trading account has been opened in that market.

For example: you can only trade US stocks under the US trading account, but not under the HK trading account.

←
[Introduction](https://openapi.moomoo.com/moomoo-api-doc/en/intro/intro.html)[Fee](https://openapi.moomoo.com/moomoo-api-doc/en/intro/fee.html)
→

## Fee

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/intro/fee.html



## Quote


LV2 HK market quotes and A-share LV1 market quotes are free for Chinese mainland customers.

For some variaties, you need to buy quotation cards before obtaining market data. For more details of quotation cards prices, please click [Quote Right](https://openapi.moomoo.com/moomoo-api-doc/en/intro/authority.html#5331) and go to data store.


## Trade


There is no extra fee for tradings through Futu API. The transaction fee is the same as that of APP. You can check the specific charging plans from the following table:

There is no extra fee for tradings through Moomoo API. The transaction fee is the same as that of APP. You can check the specific charging plans from the following table:

| Securities Firm | Charging Options |
| --- | --- |
| FUTU HK | [Charging Options](https://www.futufin.com/about/commissionnew?lang=en-us) |
| Moomoo US | [Charging Options](https://help.fututrade.com/?tid=77) |
| Moomoo SG | [Charging Options](https://support.futusg.com/en-us/topic76?lang=en-us) |
| Moomoo AU | [Charging Options](https://www.futuau.com/support/categories/639?global_content=%7B%22promote_id%22%3A11927%2C%22sub_promote_id%22%3A21%7D) |
| Moomoo MY | [Charging Options](https://www.moomoo.com/my/support/topic9_136) |
| Moomoo CA | [Charging Options](https://www.moomoo.com/ca/support/topic10_122) |
| Moomoo JP | [Charging Options](https://www.moomoo.com/jp/pricing) |

←
[Authorities and Limitations](https://openapi.moomoo.com/moomoo-api-doc/en/intro/authority.html)[AI Integration & OpenClaw](https://openapi.moomoo.com/moomoo-api-doc/en/intro/ai.html)
→

## Introduction

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/intro/intro.html



## Overview


Futu API provides wide varieties of market data and trading services for your programmed trading to meet the needs of every developer's programmed trading and help your Quant dreams.

Futubull users can [click here](https://www.futunn.com/OpenAPI?lang=en-US) to learn more.

_Futu API_ consists of _OpenD_ and _API SDK_:

- _OpenD_ is the gateway program of _Futu API_, running on your local computer or cloud server. It is responsible for transferring the protocol requests to Futu servers, and returning the processed data.
- API SDK is encapsulated by Futu, including mainstream programming languages (Python, Java, C#, C++, JavaScript), to reduce the difficulty of your trading strategy development. If the language you want to use is not listed above, you can still interface with the protocol yourself to complete the trading strategy development.

Diagrams below illustrate the architecture of Futu API.

![openapi-frame](https://openapi.moomoo.com/moomoo-api-doc/assets/img/futu-openapi-frame.e531a201.png)

![openapi-interactive](https://openapi.moomoo.com/moomoo-api-doc/assets/img/nnopenapi-interactive.c434e2f8.png)

The first time using Futu API, you need to finish the following two steps:

The first step is to install and start a gateway program [OpenD](https://openapi.moomoo.com/moomoo-api-doc/en/quick/opend-base.html) locally or in the cloud.

OpenD exposes the interfaces in the way of TCP, which is responsible for transferring the protocol requests to Futu Server and returning the processed data. The protocol interface has nothing to do with the type of programming language.

The second step is to download Futu API and complete [Environment Setup](https://openapi.moomoo.com/moomoo-api-doc/en/quick/env.html).

For your convenience, Futu encapsulates API SDK for mainstream programming languages (hereinafter referred to as Futu API).

Moomoo API provides wide varieties of market data and trading services for your programmed trading to meet the needs of every developer's programmed trading and help your Quant dreams.

Moomoo users can [click here](https://www.moomoo.com/OpenAPI) to learn more.

_Moomoo API_ consists of _OpenD_ and _API SDK_:

- _OpenD_ is the gateway program of _Moomoo API_, running on your local computer or cloud server. It is responsible for transferring the protocol requests to moomoo servers, and returning the processed data.
- API SDK is encapsulated by moomoo, including mainstream programming languages (Python, Java, C#, C++, JavaScript), to reduce the difficulty of your trading strategy development. If the language you want to use is not listed above, you can still interface with the protocol yourself to complete the trading strategy development.

Diagrams below illustrate the architecture of Moomoo API.

![openapi-frame](https://openapi.moomoo.com/moomoo-api-doc/assets/img/openapi-frame.c5af318d.png)

![openapi-interactive](https://openapi.moomoo.com/moomoo-api-doc/assets/img/openapi-interactive.1cf547e7.png)

The first time using Moomoo API, you need to finish the following two steps:

The first step is to install and start a gateway program [OpenD](https://openapi.moomoo.com/moomoo-api-doc/en/quick/opend-base.html) locally or in the cloud.

OpenD exposes the interfaces in the way of TCP, which is responsible for transferring the protocol requests to moomoo servers and returning the processed data. The protocol interface has nothing to do with the type of programming language.

The second step is to download Moomoo API and complete [Environment Setup](https://openapi.moomoo.com/moomoo-api-doc/en/quick/env.html).

For your convenience, moomoo encapsulates API SDK for mainstream programming languages (hereinafter referred to as Moomoo API).


## Account


Futu API involves two types of accounts, _Futu ID_ and _universal account_.


### Futu ID


Futu ID is your user account (Futubull ID ), which can be used in Futubull APP and Futu API.

You can use your _Futu ID_ and _login password_ to log in to OpenD and obtain market data.


### Universal Account


Universal account allows trading across multiple markets (including Hong Kong stocks, US stocks, A-shares, and funds) in various currencies. There's no need for multiple accounts.

Universal Accounts come in two forms:

- Securities Universal Account: Trade stocks, ETFs, options, and other securities across different markets.
- Futures Universal Account: Trade futures, including Hong Kong, US CME Group, Singapore, and Japanese futures.

Moomoo API involves two types of accounts, _moomoo ID_ and _universal account_.


### moomoo ID


moomoo ID is your user account (moomoo ID), which can be used in moomoo APP and Moomoo API.

You can use your _moomoo ID_ and _login password_ to log in to OpenD and obtain market data.


### Universal Account


Universal account allows trading across multiple markets (including Hong Kong stocks, US stocks, A-shares, and funds) in various currencies. There's no need for multiple accounts.

Universal Accounts come in two forms:

- Securities Universal Account: Trade stocks, ETFs, options, and other securities across different markets.
- Futures Universal Account: Trade futures, including Hong Kong, US CME Group, Singapore, and Japanese futures.


## Functionality


There are 2 functions of Futu API: quotation and trading.

There are 2 functions of Moomoo API: quotation and trading.


### Quotation Functions



#### Quotation Data Categories


Including stocks, indices, options and futures from HK, US and A-share market. Find the specific types of support in the table below.
You need authorities for each kinds of market data. For more details on how to obtain authorities, please [click here](https://openapi.moomoo.com/moomoo-api-doc/en/intro/authority.html#7371).

| Market | Contract | Futu Users |
| --- | --- | --- |
| HK Market | Stocks, ETFs, Warrants, CBBCs, Inline Warrants | ✓ |
| Options | ✓ |
| Futures | ✓ |
| Indices | ✓ |
| Plates | ✓ |
| US Market | Stocks, ETFs <br><br>Covers NYSE, NYSE-American and Nasdaq listed equities. | ✓ |
| OTC Securities | X |
| Options <br><br>Covers US stock options, US index options. | ✓ |
| Futures | ✓ |
| Indices | X |
| Plates | ✓ |
| A-share Market | Stocks, ETFs | ✓ |
| Indices | ✓ |
| Plates | ✓ |
| Singapore Market | Stocks, ETFs, Warrants, REITs, DLCs | X |
| Futures | X |
| Japanese Market | Stocks, ETFs, REITs | X |
| Futures | X |
| Australian Market | Stocks, ETFs | X |
| Global Markets | Forex | X |

Including stocks, indices, options and futures from HK, US and A-share market. Find the specific types of support in the table below.
You need authorities for each kinds of market data. For more details on how to obtain authorities, please [click here](https://openapi.moomoo.com/moomoo-api-doc/en/intro/authority.html#7371).

| Market | Contract | Moomoo Users |
| --- | --- | --- |
| HK Market | Stocks, ETFs, Warrants, CBBCs, Inline Warrants | ✓ |
| Options | ✓ |
| Futures | ✓ |
| Indices | ✓ |
| Plates | ✓ |
| US Market | Stocks, ETFs <br><br>Covers NYSE, NYSE-American and Nasdaq listed equities. | ✓ |
| OTC Securities | X |
| Options <br><br>Covers US stock options, US index options. | ✓ |
| Futures | ✓ |
| Indices | X |
| Plates | ✓ |
| A-share Market | Stocks, ETFs | ✓ |
| Indices | ✓ |
| Plates | ✓ |
| Singapore Market | Stocks, ETFs, Warrants, REITs, DLCs | X |
| Futures | X |
| Japanese Market | Stocks, ETFs, REITs | X |
| Futures | X |
| Australian Market | Stocks, ETFs | X |
| Global Markets | Forex | X |


#### Method to Obtain Market Data


- Subscribe and receive pushed real-time quote, candlestick, tick-by-tick and order book.
- Request for the latest market snapshot, historical candlesticks etc.


### Trading Functions



#### Trading Capacity


Including stocks, options and futures from HK, US, A-share, Singapore and Japanese markets. Find the specific types of support in the table below:

| Market | Contracts | Paper Trading | Live Trading |
| --- | --- | --- | --- |
| FUTU HK | Moomoo US | Moomoo SG | Moomoo AU | Moomoo MY | Moomoo CA | Moomoo JP |
| HK Market | Stocks, ETFs, Warrants, CBBCs, Inline Warrants | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | X | X |
| Options<br><br>including index options, tradable through futures account | ✓ | ✓ | X | X | X | X | X | X |
| Futures | ✓ | ✓ | X | X | X | X | X | X |
| US Market | Stocks, ETFs | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Options | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Futures | ✓ | ✓ | X | ✓ | X | ✓ | X | X |
| A-share Market | China Connect Securities stocks | ✓ | ✓ | ✓ | ✓ | X | ✓ | X | X |
| Non-China Connect Securities stocks | ✓ | X | X | X | X | X | X | X |
| Singapore Market | Stocks, ETFs, Warrants, REITs, DLCs | X | X | X | X | X | X | X | X |
| Futures | ✓ | ✓ | X | ✓ | X | X | X | X |
| Japanese Market | Stocks, ETFs, REITs | X | X | X | X | X | X | X | X |
| Futures | ✓ | ✓ | X | X | X | X | X | X |
| Australian Market | Stocks, ETFs | X | X | X | X | X | X | X | X |
| Canadian Market | Stocks, ETFs | X | X | X | X | X | X | X | X |


#### Method of Trading


The trading interfaces are used for both live trading and paper trading.


## Features


1. Full platform and multi-language

- OpenD supports Windows, MacOS, CentOS, Ubuntu
- Futu API supports Python, Java, C#, C++, JavaScript, etc.

2. Stable speed and free

- Stable technical architecture, directly connected to the exchanges
- The fastest order is 0.0014s
- There is no additional charge for trading via Futu API

3. Abundant investment varieties

- Supporting real-time market data, live trading, and simulated trading in multiple markets including United States, Hong Kong, etc.

4. Professional institutional services

- Customized market data and trading solutions

1. Full platform and multi-language

- OpenD supports Windows, MacOS, CentOS, Ubuntu
- Moomoo API supports Python, Java, C#, C++, JavaScript, etc.

2. Stable speed and free

- Stable technical architecture, directly connected to the exchanges
- The fastest order is 0.0014s
- There is no additional charge for trading via Moomoo API

3. Abundant investment varieties

- Supporting real-time market data, live trading, and simulated trading in multiple markets including United States, Hong Kong, etc.

4. Professional institutional services

- Customized market data and trading solutions

[Authorities and Limitations](https://openapi.moomoo.com/moomoo-api-doc/en/intro/authority.html)
→