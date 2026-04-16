
## Transaction Objects

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/trade/base.html



## Create the connection


`OpenSecTradeContext(filter_trdmarket=TrdMarket.HK, host='127.0.0.1', port=11111, is_encrypt=None, security_firm=SecurityFirm.FUTUSECURITIES)`

`OpenFutureTradeContext(host='127.0.0.1', port=11111, is_encrypt=None, security_firm=SecurityFirm.FUTUSECURITIES)`

- **Description**

According to the transaction variaties, select a correct account, and create its transaction object.

| Transaction Objects | Accounts |
| --- | --- |
| OpenSecTradeContext | Securities account <br><br>Trading stocks, ETFs, warrants, stock options or index options uses this account. |
| OpenFutureTradeContext | Futures account <br><br>Trading futures or future options uses this account. |

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| filter\_trdmarket | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Filter accounts according to the transaction market authority. <br><br>  - This parameter is only available for OpenSecTradeContext.<br>  - This parameter is only used to filter accounts and will not affect transaction connections. |
| host | str | The IP listened by OpenD. |
| port | int | The port listened by OpenD. |
| is\_encrypt | bool | Whether to enable encryption. <br><br>Default None means: use the setting of [enable\_proto\_encrypt](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html#7910). |
| security\_firm | [SecurityFirm](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9434) | Specified security firm |

- **Example**

```python
from futu import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.HK, host='127.0.0.1', port=11111, is_encrypt=None, security_firm=SecurityFirm.FUTUSECURITIES)
trd_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```


## Close the connection


`close()`

- **Description**

Close the trading object. By default, the threads created inside the Futu API will prevent the process from exiting, and the process can exit normally only after all Contexts are closed. But through [set\_all\_thread\_daemon](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html#5242), all internal threads can be set as daemon threads. At this time, even if close of Context is not called, the process can exit normally.

- **Example**

```python
from futu import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.HK, host='127.0.0.1', port=11111)
trd_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```


## InitConnect.proto


- **Description**

Create transaction object and initialize transaction connection

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**


## Create and initialize the connection


`bool InitConnect(String ip, short port, bool isEnableEncrypt)`

- **Description**

Create transaction object and initialize transaction connection

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| ip | str | OpenD listening address. |
| port | int | OpenD listening port. |
| bEnableEncrypt | bool | Whether to enable encryption. |

- **Return**

  - ret: Whether the execution is started, it does not represent the connection result, and the result is called back through OnInitConnect
- **Example**

- **Output**


## Destroy the connection


`void Close()`

- **Description**

Destroy connection

- **Example**


## Create and initialize the connection


`boolean initConnect(String ip, short port, boolean isEnableEncrypt)`

- **Description**

Create transaction object and initialize transaction connection

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| ip | str | OpenD listening address. |
| port | int | OpenD listening port. |
| bEnableEncrypt | bool | Whether to enable encryption. |

- **Return**

  - ret: Whether to start execution. Does not represent the connection result, the result is called back through onInitConnect
- **Example**


## Destroy the connection


`void close()`

- **Description**

Destroy connection

- **Example**


## Create and initialize the connection


`FTAPI_Trd* CreateTrdApi();``bool InitConnect(const char* szIPAddr, Futu::u16_t nPort, bool bEnableEncrypt);`

- **Description**

Create transaction object and initialize transaction connection

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| szIPAddr | str | OpenD listening address. |
| nPort | int | OpenD listening port. |
| bEnableEncrypt | bool | Whether to enable encryption. |

- **Example**


## Destroy the connection


`void ReleaseTrdApi(FTAPI_Trd* pTrd);`

- **Description**

Destroy connection

- **Return**

  - pTrd: Connection example
- **Example**


## Create and initialize the connection


`start(ip, port, ssl, key)`

- **Description**

Create transaction object and initialize transaction connection

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| ip | str | OpenD listening WebSocket address. |
| port | int | OpenD listening WebSocket port. |
| ssl | bool | Whether to enable SSL encryption, refer to [WebSocket related](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#5728). |
| key | str | The connection private key, otherwise the connection will time out. The key is configurable in OpenD, and the visualization version will randomly specify one if the key is not specified. |

- **Example**


## Close the connection


`close()`

- **Description**

Close the connection

- **Example**


## Create the connection


`OpenSecTradeContext(filter_trdmarket=TrdMarket.HK, host='127.0.0.1', port=11111, is_encrypt=None, security_firm=SecurityFirm.FUTUINC)`

`OpenFutureTradeContext(host='127.0.0.1', port=11111, is_encrypt=None, security_firm=SecurityFirm.FUTUINC)`

- **Description**

According to the transaction variaties, select a correct account, and create its transaction object.

| Transaction Objects | Accounts |
| --- | --- |
| OpenSecTradeContext | Securities account <br><br>Trading stocks, ETFs, warrants, stock options or index options uses this account. |
| OpenFutureTradeContext | Futures account <br><br>Trading futures or future options uses this account. |

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| filter\_trdmarket | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Filter accounts according to the transaction market authority. <br><br>  - This parameter is only available for OpenSecTradeContext.<br>  - This parameter is only used to filter accounts and will not affect transaction connections. |
| host | str | The IP listened by OpenD. |
| port | int | The port listened by OpenD. |
| is\_encrypt | bool | Whether to enable encryption. <br><br>Default None means: use the setting of [enable\_proto\_encrypt](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html#7910). |
| security\_firm | [SecurityFirm](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9434) | Specified security firm |

- **Example**

```python
from moomoo import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111, is_encrypt=None, security_firm=SecurityFirm.FUTUINC)
trd_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```


## Close the connection


`close()`

- **Description**

Close the trading object. By default, the threads created inside the moomoo API will prevent the process from exiting, and the process can exit normally only after all Contexts are closed. But through [set\_all\_thread\_daemon](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html#5242), all internal threads can be set as daemon threads. At this time, even if close of Context is not called, the process can exit normally.

- **Example**

```python
from moomoo import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111, is_encrypt=None, security_firm=SecurityFirm.FUTUINC)
trd_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```


## InitConnect.proto


- **Description**

Create transaction object and initialize transaction connection

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**


## Create and initialize the connection


`bool InitConnect(String ip, short port, bool isEnableEncrypt)`

- **Description**

Create transaction object and initialize transaction connection

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| ip | str | OpenD listening address. |
| port | int | OpenD listening port. |
| bEnableEncrypt | bool | Whether to enable encryption. |

- **Return**

  - ret: Whether the execution is started, it does not represent the connection result, and the result is called back through OnInitConnect
- **Example**

- **Output**


## Destroy the connection


`void Close()`

- **Description**

Destroy connection

- **Example**


## Create and initialize the connection


`boolean initConnect(String ip, short port, boolean isEnableEncrypt)`

- **Description**

Create transaction object and initialize transaction connection

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| ip | str | OpenD listening address. |
| port | int | OpenD listening port. |
| bEnableEncrypt | bool | Whether to enable encryption. |

- **Return**

  - ret: Whether to start execution. Does not represent the connection result, the result is called back through onInitConnect
- **Example**


## Destroy the connection


`void close()`

- **Description**

Destroy connection

- **Example**


## Create and initialize the connection


`MMAPI_Trd* CreateTrdApi();``bool InitConnect(const char* szIPAddr, moomoo::u16_t nPort, bool bEnableEncrypt);`

- **Description**

Create transaction object and initialize transaction connection

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| szIPAddr | str | OpenD listening address. |
| nPort | int | OpenD listening port. |
| bEnableEncrypt | bool | Whether to enable encryption. |

- **Example**


## Destroy the connection


`void ReleaseTrdApi(MMAPI_Trd* pTrd);`

- **Description**

Destroy connection

- **Return**

  - pTrd: Connection example
- **Example**


## Create and initialize the connection


`start(ip, port, ssl, key)`

- **Description**

Create transaction object and initialize transaction connection

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| ip | str | OpenD listening WebSocket address. |
| port | int | OpenD listening WebSocket port. |
| ssl | bool | Whether to enable SSL encryption, refer to [WebSocket related](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#5728). |
| key | str | The connection private key, otherwise the connection will time out. The key is configurable in OpenD, and the visualization version will randomly specify one if the key is not specified. |

- **Example**


## Close the connection


`close()`

- **Description**

Close the connection

- **Example**

←
[Overview](https://openapi.moomoo.com/moomoo-api-doc/en/trade/overview.html)[Get the List of Trading Accounts](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-acc-list.html)
→

## Get Account Cash Flow

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-acc-cash-flow.html


`get_acc_cash_flow(clearing_date='', trd_env=TrdEnv.REAL, acc_id=0, acc_index=0, cashflow_direction=CashFlowDirection.NONE)`

- **Description**

Query the cash flow list of a specified trading account on a specified date.
This includes all transactions that affect cash balances, such as deposits/withdrawals, fund transfers, currency exchanges, buying/selling financial assets, margin interest, and securities lending interest.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| clearing\_date | str | Clearing date. <br><br>Query each day separately with YYYY-MM-DD format (e.g.,'2017-06-20'). |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
| acc\_id | int | Trading account ID. <br><br>  - When acc\_id is 0, the account specified by acc\_index is chosen.<br>  - When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen.<br>  - Using acc\_id to query and trade is strongly recommended, acc\_index will change when adding/closing an account, result in the account you specify is inconsistent with the actual trading account. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |
| cashflow\_direction | [CashFlowDirection](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1384) | Filter by the direction of cash flow (e.g., inflow/outflow). |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, account cash flow list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Account cash flow list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | cashflow\_id | int | Cash flow ID |
    | clearing\_date | str | Clearing date. |
    | settlement\_date | str | Settlement date. |
    | currency | [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655) | Transaction currency. |
    | cashflow\_type | str | Cash flow type. |
    | cashflow\_direction | [CashFlowDirection](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1384) | Cash flow direction. |
    | cashflow\_amount | float | Cash flow amount (positive:inflow, negative:outflow). |
    | cashflow\_remark | str | Remarks. |
- **Example**

```python
from futu import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.HK, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUSECURITIES)
ret, data = trd_ctx.get_acc_cash_flow(clearing_date='2025-02-18', trd_env=TrdEnv.REAL, acc_id=0, acc_index=0, cashflow_direction=CashFlowDirection.NONE)
if ret == RET_OK:
    print(data)
    if data.shape[0] > 0:  # If account cash flow list is not empty
        print(data['cashflow_type'][0])  # Get direction of the first cash flow record
        print(data['cashflow_amount'].values.tolist())  # Convert to list
else:
    print('get_acc_cash_flow error: ', data)
trd_ctx.close()

```

- **Output**

```python
   cashflow_id     clearing_date     settlement_date     currency     cashflow_type     cashflow_direction     cashflow_amount     cashflow_remark
0  16308           2025-02-27        2025-02-28          HKD             Others                 N/A                   0.00      Opt ASS-P-JXC250227P13000-20250227
1  16357           2025-02-27        2025-03-03          HKD             Others                 OUT               -104000.00
2  16360           2025-02-27        2025-02-27          USD         Fund Redemption            IN                 23000.00     Fund Redemption#Taikang Kaitai US Dollar Money...
3  16384           2025-02-27        2025-02-27          HKD         Fund Redemption            IN                104108.96     Fund Redemption#Taikang Kaitai Hong Kong Dolla...
Others
[0.00, -104000.00, 23000.00, 104108.96]

```


## Trd\_FlowSummary.proto


- **Description**

Get Account Cash FlQuery the cash flow list of a specified trading account on a specified date.
This includes all transactions that affect cash balances, such as deposits/withdrawals, fund transfers, currency exchanges, buying/selling financial assets, margin interest, and securities lending interest.ow Data

- **Parameters**

> - For cash flow direction, refer to [TrdCashFlowDirection](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1384)

- **Return**

> - For cash flow data, refer to [FlowSummaryInfo](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9686)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Proto ID**

`uint GetFlowSummary(TrdFlowSummary.Request req);`

`virtual void OnReply_GetFlowSummary(FTAPI_Conn client, uint nSerialNo, TrdFlowSummary.Response rsp);`

- **Description**

Get Account Cash FlQuery the cash flow list of a specified trading account on a specified date.
This includes all transactions that affect cash balances, such as deposits/withdrawals, fund transfers, currency exchanges, buying/selling financial assets, margin interest, and securities lending interest.ow Data

- **Parameters**

> - For cash flow direction, refer to [TrdCashFlowDirection](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1384)

- **Return**

> - For cash flow data, refer to [FlowSummaryInfo](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9686)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getFlowSummary(TrdFlowSummary.Request req);`

`void onReply_GetFlowSummary(MMAPI_Conn client, int nSerialNo, TrdFlowSummary.Response rsp);`

- **Description**

Get Account Cash FlQuery the cash flow list of a specified trading account on a specified date.
This includes all transactions that affect cash balances, such as deposits/withdrawals, fund transfers, currency exchanges, buying/selling financial assets, margin interest, and securities lending interest.ow Data

- **Parameters**

> - For cash flow direction, refer to [TrdCashFlowDirection](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1384)

- **Return**

> - For cash flow data, refer to [FlowSummaryInfo](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9686)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetFlowSummary(const Trd_FlowSummary::Request& stReq);`

`virtual OnReply_GetFlowSummary(Futu::u32_t nSerialNo, const Trd_FlowSummary::Response& stRsp) = 0;`

- **Description**

Get Account Cash FlQuery the cash flow list of a specified trading account on a specified date.
This includes all transactions that affect cash balances, such as deposits/withdrawals, fund transfers, currency exchanges, buying/selling financial assets, margin interest, and securities lending interest.ow Data

- **Parameters**

> - For cash flow direction, refer to [TrdCashFlowDirection](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1384)

- **Return**

> - For cash flow data, refer to [FlowSummaryInfo](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9686)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetAccList(req);`

- **Description**

Get Account Cash FlQuery the cash flow list of a specified trading account on a specified date.
This includes all transactions that affect cash balances, such as deposits/withdrawals, fund transfers, currency exchanges, buying/selling financial assets, margin interest, and securities lending interest.ow Data

- **Parameters**

> - For cash flow direction, refer to [TrdCashFlowDirection](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1384)

- **Return**

> - For cash flow data, refer to [FlowSummaryInfo](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9686)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 20 requests per 30 seconds under a single account ID (acc\_id).
- Cash flows are arranged in chronological order.
- Can not query cash flow list through paper trading accounts.

`get_acc_cash_flow(clearing_date='', trd_env=TrdEnv.REAL, acc_id=0, acc_index=0, cashflow_direction=CashFlowDirection.NONE)`

- **Description**

Query the cash flow list of a specified trading account on a specified date.
This includes all transactions that affect cash balances, such as deposits/withdrawals, fund transfers, currency exchanges, buying/selling financial assets, margin interest, and securities lending interest.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| clearing\_date | str | Clearing date. <br><br>Query each day separately with YYYY-MM-DD format (e.g.,'2017-06-20'). |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
| acc\_id | int | Trading account ID. <br><br>  - When acc\_id is 0, the account specified by acc\_index is chosen.<br>  - When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen.<br>  - Using acc\_id to query and trade is strongly recommended, acc\_index will change when adding/closing an account, result in the account you specify is inconsistent with the actual trading account. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |
| cashflow\_direction | [CashFlowDirection](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1384) | Filter by the direction of cash flow (e.g., inflow/outflow). |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, account cash flow list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Account cash flow list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | cashflow\_id | int | Cash flow ID |
    | clearing\_date | str | Clearing date. |
    | settlement\_date | str | Settlement date. |
    | currency | [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655) | Transaction currency. |
    | cashflow\_type | str | Cash flow type. |
    | cashflow\_direction | [CashFlowDirection](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1384) | Cash flow direction. |
    | cashflow\_amount | float | Cash flow amount (positive:inflow, negative:outflow). |
    | cashflow\_remark | str | Remarks. |
- **Example**

```python
from futu import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUINC)
ret, data = trd_ctx.get_acc_cash_flow(clearing_date='2025-02-18', trd_env=TrdEnv.REAL, acc_id=0, acc_index=0, cashflow_direction=CashFlowDirection.NONE)
if ret == RET_OK:
    print(data)
    if data.shape[0] > 0:  # If account cash flow list is not empty
        print(data['cashflow_type'][0])  # Get direction of the first cash flow record
        print(data['cashflow_amount'].values.tolist())  # Convert to list
else:
    print('get_acc_cash_flow error: ', data)
trd_ctx.close()

```

- **Output**

```python
   cashflow_id     clearing_date     settlement_date     currency     cashflow_type     cashflow_direction     cashflow_amount     cashflow_remark
0  16308           2025-02-27        2025-02-28          HKD             Others                 N/A                   0.00      Opt ASS-P-JXC250227P13000-20250227
1  16357           2025-02-27        2025-03-03          HKD             Others                 OUT               -104000.00
2  16360           2025-02-27        2025-02-27          USD         Fund Redemption            IN                 23000.00     Fund Redemption#Taikang Kaitai US Dollar Money...
3  16384           2025-02-27        2025-02-27          HKD         Fund Redemption            IN                104108.96     Fund Redemption#Taikang Kaitai Hong Kong Dolla...
Others
[0.00, -104000.00, 23000.00, 104108.96]

```


## Trd\_FlowSummary.proto


- **Description**

Get Account Cash FlQuery the cash flow list of a specified trading account on a specified date.
This includes all transactions that affect cash balances, such as deposits/withdrawals, fund transfers, currency exchanges, buying/selling financial assets, margin interest, and securities lending interest.ow Data

- **Parameters**

> - For cash flow direction, refer to [TrdCashFlowDirection](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1384)

- **Return**

> - For cash flow data, refer to [FlowSummaryInfo](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9686)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Proto ID**

`uint GetFlowSummary(TrdFlowSummary.Request req);`

`virtual void OnReply_GetFlowSummary(FTAPI_Conn client, uint nSerialNo, TrdFlowSummary.Response rsp);`

- **Description**

Get Account Cash FlQuery the cash flow list of a specified trading account on a specified date.
This includes all transactions that affect cash balances, such as deposits/withdrawals, fund transfers, currency exchanges, buying/selling financial assets, margin interest, and securities lending interest.ow Data

- **Parameters**

> - For cash flow direction, refer to [TrdCashFlowDirection](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1384)

- **Return**

> - For cash flow data, refer to [FlowSummaryInfo](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9686)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getFlowSummary(TrdFlowSummary.Request req);`

`void onReply_GetFlowSummary(MMAPI_Conn client, int nSerialNo, TrdFlowSummary.Response rsp);`

- **Description**

Get Account Cash FlQuery the cash flow list of a specified trading account on a specified date.
This includes all transactions that affect cash balances, such as deposits/withdrawals, fund transfers, currency exchanges, buying/selling financial assets, margin interest, and securities lending interest.ow Data

- **Parameters**

> - For cash flow direction, refer to [TrdCashFlowDirection](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1384)

- **Return**

> - For cash flow data, refer to [FlowSummaryInfo](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9686)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetFlowSummary(const Trd_FlowSummary::Request& stReq);`

`virtual OnReply_GetFlowSummary(Futu::u32_t nSerialNo, const Trd_FlowSummary::Response& stRsp) = 0;`

- **Description**

Get Account Cash FlQuery the cash flow list of a specified trading account on a specified date.
This includes all transactions that affect cash balances, such as deposits/withdrawals, fund transfers, currency exchanges, buying/selling financial assets, margin interest, and securities lending interest.ow Data

- **Parameters**

> - For cash flow direction, refer to [TrdCashFlowDirection](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1384)

- **Return**

> - For cash flow data, refer to [FlowSummaryInfo](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9686)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetAccList(req);`

- **Description**

Get Account Cash FlQuery the cash flow list of a specified trading account on a specified date.
This includes all transactions that affect cash balances, such as deposits/withdrawals, fund transfers, currency exchanges, buying/selling financial assets, margin interest, and securities lending interest.ow Data

- **Parameters**

> - For cash flow direction, refer to [TrdCashFlowDirection](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1384)

- **Return**

> - For cash flow data, refer to [FlowSummaryInfo](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9686)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 20 requests per 30 seconds under a single account ID (acc\_id).
- Cash flows are arranged in chronological order.
- Can not query cash flow list through paper trading accounts and moomoo US accounts.

←
[Get Margin Data](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-margin-ratio.html)[Place Orders](https://openapi.moomoo.com/moomoo-api-doc/en/trade/place-order.html)
→

## Get the List of Trading Accounts

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-acc-list.html


`get_acc_list()`

- **Description**

Get a list of trading accounts.
Before calling other trading interfaces, please obtain this list first and confirm that the trading account to be operated is correct.

- **Parameters**

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, trading account list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Trading account list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | acc\_id | int | Trading account. |
    | trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
    | acc\_type | [TrdAccType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7166) | Account type. |
    | uni\_card\_num | str | Universal account number, same as the display in the mobile terminal. |
    | card\_num | str | Trading account number<br><br>Under the Universal Account System, an Universal account contains one or more trading accounts(universal securities, universal futures, etc.), which is related to financing types. |
    | sim\_acc\_type | [SimAccType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7358) | Simulate account type. <br><br>For simulated accounts only. |
    | security\_firm | [SecurityFirm](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9434) | Securities firm to which the account belongs. |
    | trdmarket\_auth | list | Transaction market authority. <br><br>Data type of elements in the list is [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257). |
    | acc\_status | [TrdAccStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8311) | Account status. |
    | acc\_role | [TrdAccRole](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8663) | Account Structure <br><br>Used to distinguish between master and normal account<br>    - MASTER: Master Account<br>    - NORMAL: Normal Account<br>    - IPO: Malaysian IPO account |
    | jp\_acc\_type | list | JP sub account type <br><br>Data type of elements in the list is [SubAccType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3947), Only applicable for Moomoo JP |
- **Description**

To obtain the HK Paper Trading accounts, specify filter\_trdmarket as TrdMarket.HK. This will return two paper trading accounts. The account with sim\_acc\_type = STOCK represents a HK paper trading account, while sim\_acc\_type = OPTION refers to a HK stock options paper trading account, and sim\_acc\_type = FUTURES indicates a HK futures paper trading account.

To obtain the US Paper Trading accounts, specify filter\_trdmarket as TrdMarket.US. An account with sim\_acc\_type = STOCK\_AND\_OPTION represents the US margin paper trading account, which allows the stock and options trading. An account with sim\_acc\_type = FUTURES represents a US futures paper trading account.

- **Example**

```python
from futu import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.HK, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUSECURITIES)
ret, data = trd_ctx.get_acc_list()
if ret == RET_OK:
    print(data)
    print(data['acc_id'][0])  # Get the first account ID
    print(data['acc_id'].values.tolist())  # convert to list
else:
    print('get_acc_list error: ', data)
trd_ctx.close()

```

- **Output**

```python
               acc_id   trd_env acc_type       uni_card_num           card_num    security_firm   sim_acc_type                           trdmarket_auth    acc_status    acc_role    jp_acc_type
0  281756479345015383      REAL   MARGIN   1001289516908051   1001329805025007   FUTUSECURITIES            N/A    [HK, US, HKCC, SG, HKFUND, USFUND, JP]       ACTIVE      NORMAL             []
1             8377516  SIMULATE     CASH                N/A                N/A              N/A          STOCK                                      [HK]       ACTIVE         N/A             []
2            10741586  SIMULATE   MARGIN                N/A                N/A              N/A         OPTION                                      [HK]       ACTIVE         N/A             []
3  281756455983234027      REAL   MARGIN                N/A   1001100321720699   FUTUSECURITIES            N/A                                      [HK]     DISABLED      NORMAL             []
[281756479345015383, 8377516, 10741586, 281756455983234027]

```


## Trd\_GetAccList.proto


- **Description**

Get a list of trading accounts

- **Parameters**

- **Return**

> - For the Transaction Category, please refer to [TrdCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9120)
> - For the trading account structure, please refer to [TrdAcc](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2879)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetAccList(TrdGetAccList.Request req);`

`virtual void OnReply_GetAccList(FTAPI_Conn client, uint nSerialNo, TrdGetAccList.Response rsp);`

- **Description**

Get a list of trading accounts

- **Parameters**

- **Return**

> - For the Transaction Category, please refer to [TrdCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9120)
> - For the trading account structure, please refer to [TrdAcc](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2879)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getAccList(TrdGetAccList.Request req);`

`void onReply_GetAccList(FTAPI_Conn client, int nSerialNo, TrdGetAccList.Response rsp);`

- **Description**

Get a list of trading accounts

- **Parameters**

- **Return**

> - For the Transaction Category, please refer to [TrdCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9120)
> - For the trading account structure, please refer to [TrdAcc](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2879)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetAccList(const Trd_GetAccList::Request &stReq);`

`virtual void OnReply_GetAccList(Futu::u32_t nSerialNo, const Trd_GetAccList::Response &stRsp) = 0;`

- **Description**

Get a list of trading accounts

- **Parameters**

- **Return**

> - For the Transaction Category, please refer to [TrdCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9120)
> - For the trading account structure, please refer to [TrdAcc](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2879)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetAccList(req);`

- **Description**

Get a list of trading accounts

- **Parameters**

- **Return**

> - For the Transaction Category, please refer to [TrdCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9120)
> - For the trading account structure, please refer to [TrdAcc](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2879)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`get_acc_list()`

- **Description**

Get a list of trading accounts.
Before calling other trading interfaces, please obtain this list first and confirm that the trading account to be operated is correct.

- **Parameters**

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, trading account list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Trading account list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | acc\_id | int | Trading account. |
    | trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
    | acc\_type | [TrdAccType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7166) | Account type. |
    | uni\_card\_num | str | Universal account number, same as the display in the mobile terminal. |
    | card\_num | str | Trading account number<br><br>Under the Universal Account System, an Universal account contains one or more trading accounts(universal securities, universal futures, etc.), which is related to financing types. |
    | sim\_acc\_type | [SimAccType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7358) | Simulate account type. <br><br>For simulated accounts only. |
    | security\_firm | [SecurityFirm](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9434) | Securities firm to which the account belongs. |
    | trdmarket\_auth | list | Transaction market authority. <br><br>Data type of elements in the list is [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257). |
    | acc\_status | [TrdAccStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8311) | Account status. |
    | acc\_role | [TrdAccRole](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8663) | Account Structure <br><br>Used to distinguish between master and normal account<br>    - MASTER: Master Account<br>    - NORMAL: Normal Account<br>    - IPO: Malaysian IPO account |
    | jp\_acc\_type | list | JP sub account type <br><br>Data type of elements in the list is [SubAccType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3947), Only applicable for Moomoo JP |
- **Description**

To obtain the HK Paper Trading accounts, specify filter\_trdmarket as TrdMarket.HK. This will return two paper trading accounts. The account with sim\_acc\_type = STOCK represents a HK paper trading account, while sim\_acc\_type = OPTION refers to a HK stock options paper trading account, and sim\_acc\_type = FUTURES indicates a HK futures paper trading account.

To obtain the US Paper Trading accounts, specify filter\_trdmarket as TrdMarket.US. An account with sim\_acc\_type = STOCK\_AND\_OPTION represents the US margin paper trading account, which allows the stock and options trading. An account with sim\_acc\_type = FUTURES represents a US futures paper trading account.

- **Example**

```python
from moomoo import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUINC)
ret, data = trd_ctx.get_acc_list()
if ret == RET_OK:
    print(data)
    print(data['acc_id'][0])  # Get the first account ID
    print(data['acc_id'].values.tolist())  # convert to list
else:
    print('get_acc_list error: ', data)
trd_ctx.close()

```

- **Output**

```python
               acc_id   trd_env acc_type       uni_card_num           card_num    security_firm   sim_acc_type                           trdmarket_auth    acc_status    acc_role    jp_acc_type
0  281756420273981734      REAL   MARGIN  10018561211263256   1001100530724347          FUTUINC            N/A    [HK, US, HKCC, SG, HKFUND, USFUND, JP]       ACTIVE      NORMAL             []
1             3450310  SIMULATE     CASH                N/A                N/A              N/A          STOCK                                      [HK]       ACTIVE         N/A             []
2             3548732  SIMULATE   MARGIN                N/A                N/A              N/A         OPTION                                      [HK]       ACTIVE         N/A             []
[281756420273981734, 3450310, 3548732]

```


## Trd\_GetAccList.proto


- **Description**

Get a list of trading accounts

- **Parameters**

- **Return**

> - For the Transaction Category, please refer to [TrdCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9120)
> - For the trading account structure, please refer to [TrdAcc](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2879)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetAccList(TrdGetAccList.Request req);`

`virtual void OnReply_GetAccList(MMAPI_Conn client, uint nSerialNo, TrdGetAccList.Response rsp);`

- **Description**

Get a list of trading accounts

- **Parameters**

- **Return**

> - For the Transaction Category, please refer to [TrdCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9120)
> - For the trading account structure, please refer to [TrdAcc](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2879)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getAccList(TrdGetAccList.Request req);`

`void onReply_GetAccList(MMAPI_Conn client, int nSerialNo, TrdGetAccList.Response rsp);`

- **Description**

Get a list of trading accounts

- **Parameters**

- **Return**

> - For the Transaction Category, please refer to [TrdCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9120)
> - For the trading account structure, please refer to [TrdAcc](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2879)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetAccList(const Trd_GetAccList::Request &stReq);`

`virtual void OnReply_GetAccList(moomoo::u32_t nSerialNo, const Trd_GetAccList::Response &stRsp) = 0;`

- **Description**

Get a list of trading accounts

- **Parameters**

- **Return**

> - For the Transaction Category, please refer to [TrdCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9120)
> - For the trading account structure, please refer to [TrdAcc](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2879)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetAccList(req);`

- **Description**

Get a list of trading accounts

- **Parameters**

- **Return**

> - For the Transaction Category, please refer to [TrdCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9120)
> - For the trading account structure, please refer to [TrdAcc](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2879)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

←
[Transaction Objects](https://openapi.moomoo.com/moomoo-api-doc/en/trade/base.html)[Unlock Trade](https://openapi.moomoo.com/moomoo-api-doc/en/trade/unlock.html)
→

## Get Account Funds

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-funds.html


`accinfo_query(trd_env=TrdEnv.REAL, acc_id=0, acc_index=0, refresh_cache=False, currency=Currency.HKD, asset_category=AssetCategory.NONE)`

- **Description**

Query fund data such as net asset value, securities market value, cash, and purchasing power of trading accounts.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment |
| acc\_id | int | Trading account ID. <br><br>  - When acc\_id is 0, the account specified by acc\_index is chosen.<br>  - When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen.<br>  - Using acc\_id to query and trade is strongly recommended, acc\_index will change when adding/closing an account, result in the account you specify is inconsistent with the actual trading account. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |
| refresh\_cache | bool | Whether to refresh the cache. <br><br>  - True: Re-request data from the moomoo server immediately, without using the OpenD cache. At this time, it will be restricted by the interface frequency limit. <br>  - False: Use OpenD's cache (The cache needs to be refreshed if it is not updated in rare circumstances.) |
| currency | [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655) | The display currency of the funds. <br><br>  - Only applicable to universal securities accounts and futures accounts, other single-market accounts will ignore this parameter.<br>  - In the returned DataFrame, all fund-related fields can be converted with this parameter, except for the fields that explicitly specify the currency. |
| asset\_category | [AssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313) | Asset category <br><br>Only applicable for Moomoo JP |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, fund data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Fund data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | power | float | Maximum Buying Power. <br><br>    - This field is the _approximate value_ calculated according to the marginable initial margin of 50%. But in fact, this ratio of each financial contract is not the same. We recommend using _**Buy on margin**_, returned by [Query the Maximum Quantity that Can be Bought or Sold](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-max-trd-qtys.html), to get the maximum quantity can buy. |
    | max\_power\_short | float | Short Buying Power. <br><br>    - This field is the _approximate value_ calculated according to the shortable initial margin of 60%. But in fact, this ratio of each financial contract is not the same. We recommend using _**Short sell**_, returned by [Query the Maximum Quantity that Can be Bought or Sold](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-max-trd-qtys.html), to get the maximum quantity can be shorted. |
    | net\_cash\_power | float | Cash Buying Power. <br><br>Obsolete. Please use 'us\_net\_cash\_power' or other fields to get the cash buying power of each currency. |
    | total\_assets | float | Total Net Assets.<br><br>Total Net Assets = Security Assets + Fund Assets + Bond Assets |
    | securities\_assets | float | Security Assets<br><br>Minimum OpenD version requirements: 8.2.4218. |
    | fund\_assets | float | Fund Assets<br><br>    - Universal accounts will return the total fund assets value. Currently, it does not support for HKD fund and USD fund assets value. <br>    - Minimum OpenD version requirements: 8.2.4218. |
    | bond\_assets | float | Bond Assets<br><br>Minimum OpenD version requirements: 8.2.4218. |
    | cash | float | Cash. <br><br>Obsolete. Please use 'us\_cash' or other fields to get the cash of each currency. |
    | market\_val | float | Securities Market Value. <br><br>Only applicable to securities accounts. |
    | long\_mv | float | Long Market Value. |
    | short\_mv | float | Short Market Value. |
    | pending\_asset | float | Asset in Transit. |
    | interest\_charged\_amount | float | Interest Charged Amount. |
    | frozen\_cash | float | Funds on Hold. |
    | avl\_withdrawal\_cash | float | Withdrawable Cash. <br><br>Only applicable to securities accounts. |
    | max\_withdrawal | float | Maximum Withdrawal. <br><br>    - Only applicable to securities accounts of FUTU HK |
    | currency | [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655) | The currency used for this query. <br><br>Only applicable to universal securities accounts and futures accounts. |
    | available\_funds | float | Available funds. <br><br>Only applicable to futures accounts. |
    | unrealized\_pl | float | Unrealized gain or loss. <br><br>Only applicable to futures accounts. |
    | realized\_pl | float | Realized gain or loss. <br><br>Only applicable to futures accounts. |
    | risk\_level | [CltRiskLevel](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#428) | Risk control level. <br><br>Only applicable to futures accounts. It is recommanded to use risk\_status field to get the risk status of securities accounts or futures accounts. |
    | risk\_status | [CltRiskStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7469) | Risk status. <br><br>    - Applicable to securities accounts and futures accounts.<br>    - Divided into 9 grades, `LEVEL1` is the safest and `LEVEL9` is the most dangerous. |
    | initial\_margin | float | Initial Margin. <br><br>    - Only applicable to futures accounts. |
    | margin\_call\_margin | float | Margin-call Margin. |
    | maintenance\_margin | float | Maintenance Margin. |
    | hk\_cash | float | HKD Cash. <br><br>This field is the real value of this currency, instead of the value denominated in this currency. |
    | hk\_avl\_withdrawal\_cash | float | HKD Withdrawable Cash. <br><br>This field is the real value of this currency, instead of the value denominated in this currency. |
    | hkd\_net\_cash\_power | float | HKD Cash Buying Power. <br><br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 8.7 |
    | hkd\_assets | float | HK Net Assets Value. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 9.0.5008 |
    | us\_cash | float | USD Cash. <br><br>This field is the real value of this currency, instead of the value denominated in this currency. |
    | us\_avl\_withdrawal\_cash | float | USD Withdrawable Cash. <br><br>This field is the real value of this currency, instead of the value denominated in this currency. |
    | usd\_net\_cash\_power | float | USD Cash Buying Power. <br><br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 8.7 |
    | usd\_assets | float | US Net Assets Value. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 9.0.5008 |
    | cn\_cash | float | CNH Cash. <br><br>    - Only applicable to universal securities accounts and futures accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency . |
    | cn\_avl\_withdrawal\_cash | float | CNH Withdrawable Cash. <br><br>    - Only applicable to universal securities accounts and futures accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency . |
    | cnh\_net\_cash\_power | float | CNH Cash Buying Power. <br><br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 8.7 |
    | cnh\_assets | float | CN Net Assets Value. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 9.0.5008 |
    | jp\_cash | float | JPY Cash. <br><br>    - This field is the real value of this currency, instead of the value denominated in this currency. <br>    - Minimum Futu API version requirements: 5.8.2008 |
    | jp\_avl\_withdrawal\_cash | float | JPY Withdrawable Cash. <br><br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum Futu API version requirements: 5.8.2008 |
    | jpy\_net\_cash\_power | float | JPY Cash Buying Power. <br><br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 8.7 |
    | jpy\_assets | float | JP Net Assets Value. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 9.0.5008 |
    | sg\_cash | float | SGD Cash. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency . |
    | sg\_avl\_withdrawal\_cash | float | SGD Withdrawable Cash. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency . |
    | sgd\_net\_cash\_power | float | SGD Cash Buying Power. <br><br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 8.7 |
    | sgd\_assets | float | SG Net Assets Value. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 9.0.5008 |
    | au\_cash | float | AUD Cash. <br><br>    - Only applicable to universal securities accounts. <br>    - Minimum Futu API version requirements: 5.8.2008 |
    | au\_avl\_withdrawal\_cash | float | AUD Withdrawable Cash. <br><br>    - Only applicable to universal securities accounts. <br>    - Minimum Futu API version requirements: 5.8.2008 |
    | aud\_net\_cash\_power | float | AUD Cash Buying Power. <br><br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 8.7 |
    | aud\_assets | float | AU Net Assets Value. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 9.0.5008 |
    | ca\_cash | float | CAD Cash. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 10.0.6008 |
    | ca\_avl\_withdrawal\_cash | float | CAD Withdrawable Cash. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 10.0.6008 |
    | cad\_net\_cash\_power | float | CAD Cash Buying Power. <br><br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 10.0.6008 |
    | cad\_assets | float | CA Net Assets Value. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 10.0.6008 |
    | my\_cash | float | MYR Cash. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 10.0.6008 |
    | my\_avl\_withdrawal\_cash | float | MYR Withdrawable Cash. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 10.0.6008 |
    | myr\_net\_cash\_power | float | MYR Cash Buying Power. <br><br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 10.0.6008 |
    | myr\_assets | float | MY Net Assets Value. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 10.0.6008 |
    | is\_pdt | bool | Is it marked as a PDT. <br><br>True: It is a PDT. False: Not a PDT.<br>Only applicable to securities accounts of Moomoo US.<br>Minimum OpenD version requirements: 5.8.2008. |
    | pdt\_seq | string | Day Trades Left. <br><br>Only applicable to securities accounts of Moomoo US.<br>Minimum OpenD version requirements: 5.8.2008. |
    | beginning\_dtbp | float | Beginning DTBP. <br><br>Only applicable to securities accounts of Moomoo US marked as a PDT.<br>Minimum OpenD version requirements: 5.8.2008. |
    | remaining\_dtbp | float | Remaining DTBP. <br><br>Only applicable to securities accounts of Moomoo US marked as a PDT.<br>Minimum OpenD version requirements: 5.8.2008. |
    | dt\_call\_amount | float | Day-trading Call Amount. <br><br>Only applicable to securities accounts of Moomoo US marked as a PDT.<br>Minimum OpenD version requirements: 5.8.2008. |
    | dt\_status | [DtStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1018) | Day-trading Status. <br><br>Only applicable to securities accounts of Moomoo US marked as a PDT.<br>Minimum OpenD version requirements: 5.8.2008. |
- **Example**

```python
from futu import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.HK, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUSECURITIES)
ret, data = trd_ctx.accinfo_query()
if ret == RET_OK:
    print(data)
    print(data['power'][0])  # Get the first buying power
    print(data['power'].values.tolist())  # convert to list
else:
    print('accinfo_query error: ', data)
trd_ctx.close()  # Close the current connection

```

- **Output**

```python
power  max_power_short  net_cash_power  total_assets  securities_assets  fund_assets  bond_assets   cash   market_val      long_mv   short_mv  pending_asset  interest_charged_amount  frozen_cash  avl_withdrawal_cash  max_withdrawal currency available_funds unrealized_pl realized_pl risk_level risk_status  initial_margin  margin_call_margin  maintenance_margin  hk_cash  hk_avl_withdrawal_cash  hkd_net_cash_power  hkd_assets  us_cash  us_avl_withdrawal_cash  usd_net_cash_power  usd_assets  cn_cash  cn_avl_withdrawal_cash  cnh_net_cash_power  cnh_assets  jp_cash  jp_avl_withdrawal_cash  jpy_net_cash_power jpy_assets  sg_cash sg_avl_withdrawal_cash sgd_net_cash_power sgd_assets  au_cash au_avl_withdrawal_cash aud_net_cash_power aud_assets  ca_cash ca_avl_withdrawal_cash cad_net_cash_power cad_assets  my_cash my_avl_withdrawal_cash myr_net_cash_power myr_assets  is_pdt pdt_seq beginning_dtbp remaining_dtbp dt_call_amount dt_status
0  465453.903307    465453.903307             0.0   289932.0404        197028.2204     92903.82          0.0  25.18  197003.0448  211960.7568 -14957.712            0.0                      0.0    25.930845                  0.0             0.0      HKD             N/A           N/A         N/A        N/A      LEVEL3   219346.648525       288656.787955       181250.967601      0.0                     0.0          13225.7955     0.0   3.24                     0.0           9656.4365      0.0    0.0                     0.0                 0.0    0.0      0.0                     0.0                 0.0     0.0    N/A                    N/A                N/A     0.0    N/A                    N/A                N/A    0.0    N/A                    N/A                N/A    0.0    N/A                    N/A                N/A    0.0        N/A     N/A            N/A            N/A            N/A       N/A
465453.903307
[465453.903307]

```


## Trd\_GetFunds.proto


- **Description**

Query fund data such as net asset value, securities market value, cash, and purchasing power of trading accounts.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For structure of currency type, refer to [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655)
> - Asset category, refer to [TrdAssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For structure of account funds, refer to [Funds](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1356)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetFunds(TrdGetFunds.Request req);`

`virtual void OnReply_GetFunds(FTAPI_Conn client, uint nSerialNo, ${proto_name.Response rsp);`

- **Description**

Query fund data such as net asset value, securities market value, cash, and purchasing power of trading accounts.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For structure of currency type, refer to [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655)
> - Asset category, refer to [TrdAssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For structure of account funds, refer to [Funds](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1356)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getFunds(TrdGetFunds.Request req);`

`void onReply_GetFunds(FTAPI_Conn client, int nSerialNo, ${proto_name.Response rsp);`

- **Description**

Query fund data such as net asset value, securities market value, cash, and purchasing power of trading accounts. data. Obtain fund data such as the net asset value of the account, the market value of securities, cash, and purchasing power.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For structure of currency type, refer to [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655)
> - Asset category, refer to [TrdAssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For structure of account funds, refer to [Funds](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1356)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetFunds(const Trd_GetFunds::Request &stReq);`

`virtual void OnReply_GetFunds(Futu::u32_t nSerialNo, const Trd_GetFunds::Response &stRsp) = 0;`

- **Description**

Query fund data such as net asset value, securities market value, cash, and purchasing power of trading accounts.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For structure of currency type, refer to [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655)
> - Asset category, refer to [TrdAssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For structure of account funds, refer to [Funds](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1356)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetFunds(req);`

- **Description**

Query fund data such as net asset value, securities market value, cash, and purchasing power of trading accounts.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For structure of currency type, refer to [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655)
> - Asset category, refer to [TrdAssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For structure of account funds, refer to [Funds](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1356)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds under a single account ID (acc\_id).
- It will be restricted by the frequency limit for this interface, only when refresh\_cache is True

`accinfo_query(trd_env=TrdEnv.REAL, acc_id=0, acc_index=0, refresh_cache=False, currency=Currency.HKD, asset_category=AssetCategory.NONE)`

- **Description**

Query fund data such as net asset value, securities market value, cash, and purchasing power of trading accounts.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment |
| acc\_id | int | Trading account ID. <br><br>  - When acc\_id is 0, the account specified by acc\_index is chosen.<br>  - When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen.<br>  - Using acc\_id to query and trade is strongly recommended, acc\_index will change when adding/closing an account, result in the account you specify is inconsistent with the actual trading account. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |
| refresh\_cache | bool | Whether to refresh the cache. <br><br>  - True: Re-request data from the moomoo server immediately, without using the OpenD cache. At this time, it will be restricted by the interface frequency limit. <br>  - False: Use OpenD's cache (The cache needs to be refreshed if it is not updated in rare circumstances.) |
| currency | [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655) | The display currency of the funds. <br><br>  - Only applicable to universal securities accounts and futures accounts, other single-market accounts will ignore this parameter.<br>  - In the returned DataFrame, all fund-related fields can be converted with this parameter, except for the fields that explicitly specify the currency. |
| asset\_category | [AssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313) | Asset category <br><br>Only applicable for Moomoo JP |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, fund data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Fund data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | power | float | Maximum Buying Power. <br><br>    - This field is the _approximate value_ calculated according to the marginable initial margin of 50%. But in fact, this ratio of each financial contract is not the same. We recommend using _**Buy on margin**_, returned by [Query the Maximum Quantity that Can be Bought or Sold](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-max-trd-qtys.html), to get the maximum quantity can buy. |
    | max\_power\_short | float | Short Buying Power. <br><br>    - This field is the _approximate value_ calculated according to the shortable initial margin of 60%. But in fact, this ratio of each financial contract is not the same. We recommend using _**Short sell**_, returned by [Query the Maximum Quantity that Can be Bought or Sold](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-max-trd-qtys.html), to get the maximum quantity can be shorted. |
    | net\_cash\_power | float | Cash Buying Power. <br><br>Obsolete. Please use 'us\_net\_cash\_power' or other fields to get the cash buying power of each currency. |
    | total\_assets | float | Total Net Assets.<br><br>Total Net Assets = Security Assets + Fund Assets + Bond Assets |
    | securities\_assets | float | Security Assets<br><br>Minimum OpenD version requirements: 8.2.4218. |
    | fund\_assets | float | Fund Assets<br><br>    - Universal accounts will return the total fund assets value. Currently, it does not support for HKD fund and USD fund assets value. <br>    - Minimum OpenD version requirements: 8.2.4218. |
    | bond\_assets | float | Bond Assets<br><br>Minimum OpenD version requirements: 8.2.4218. |
    | cash | float | Cash. <br><br>Obsolete. Please use 'us\_cash' or other fields to get the cash of each currency. |
    | market\_val | float | Securities Market Value. <br><br>Only applicable to securities accounts. |
    | long\_mv | float | Long Market Value. |
    | short\_mv | float | Short Market Value. |
    | pending\_asset | float | Asset in Transit. |
    | interest\_charged\_amount | float | Interest Charged Amount. |
    | frozen\_cash | float | Funds on Hold. |
    | avl\_withdrawal\_cash | float | Withdrawable Cash. <br><br>Only applicable to securities accounts. |
    | max\_withdrawal | float | Maximum Withdrawal. <br><br>    - Only applicable to securities accounts of FUTU HK |
    | currency | [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655) | The currency used for this query. <br><br>Only applicable to universal securities accounts and futures accounts. |
    | available\_funds | float | Available funds. <br><br>Only applicable to futures accounts. |
    | unrealized\_pl | float | Unrealized gain or loss. <br><br>Only applicable to futures accounts. |
    | realized\_pl | float | Realized gain or loss. <br><br>Only applicable to futures accounts. |
    | risk\_level | [CltRiskLevel](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#428) | Risk control level. <br><br>Only applicable to futures accounts. It is recommanded to use risk\_status field to get the risk status of securities accounts or futures accounts. |
    | risk\_status | [CltRiskStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7469) | Risk status. <br><br>    - Applicable to securities accounts and futures accounts.<br>    - Divided into 9 grades, `LEVEL1` is the safest and `LEVEL9` is the most dangerous. |
    | initial\_margin | float | Initial Margin. <br><br>    - Only applicable to futures accounts. |
    | margin\_call\_margin | float | Margin-call Margin. |
    | maintenance\_margin | float | Maintenance Margin. |
    | hk\_cash | float | HKD Cash. <br><br>This field is the real value of this currency, instead of the value denominated in this currency. |
    | hk\_avl\_withdrawal\_cash | float | HKD Withdrawable Cash. <br><br>This field is the real value of this currency, instead of the value denominated in this currency. |
    | hkd\_net\_cash\_power | float | HKD Cash Buying Power. <br><br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 8.7 |
    | hkd\_assets | float | HK Net Assets Value. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 9.0.5008 |
    | us\_cash | float | USD Cash. <br><br>This field is the real value of this currency, instead of the value denominated in this currency. |
    | us\_avl\_withdrawal\_cash | float | USD Withdrawable Cash. <br><br>This field is the real value of this currency, instead of the value denominated in this currency. |
    | usd\_net\_cash\_power | float | USD Cash Buying Power. <br><br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 8.7 |
    | usd\_assets | float | US Net Assets Value. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 9.0.5008 |
    | cn\_cash | float | CNH Cash. <br><br>    - Only applicable to universal securities accounts and futures accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency . |
    | cn\_avl\_withdrawal\_cash | float | CNH Withdrawable Cash. <br><br>    - Only applicable to universal securities accounts and futures accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency . |
    | cnh\_net\_cash\_power | float | CNH Cash Buying Power. <br><br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 8.7 |
    | cnh\_assets | float | CN Net Assets Value. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 9.0.5008 |
    | jp\_cash | float | JPY Cash. <br><br>    - This field is the real value of this currency, instead of the value denominated in this currency. <br>    - Minimum Futu API version requirements: 5.8.2008 |
    | jp\_avl\_withdrawal\_cash | float | JPY Withdrawable Cash. <br><br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum Futu API version requirements: 5.8.2008 |
    | jpy\_net\_cash\_power | float | JPY Cash Buying Power. <br><br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 8.7 |
    | jpy\_assets | float | JP Net Assets Value. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 9.0.5008 |
    | sg\_cash | float | SGD Cash. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency . |
    | sg\_avl\_withdrawal\_cash | float | SGD Withdrawable Cash. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency . |
    | sgd\_net\_cash\_power | float | SGD Cash Buying Power. <br><br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 8.7 |
    | sgd\_assets | float | SG Net Assets Value. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 9.0.5008 |
    | au\_cash | float | AUD Cash. <br><br>    - Only applicable to universal securities accounts. <br>    - Minimum Futu API version requirements: 5.8.2008 |
    | au\_avl\_withdrawal\_cash | float | AUD Withdrawable Cash. <br><br>    - Only applicable to universal securities accounts. <br>    - Minimum Futu API version requirements: 5.8.2008 |
    | aud\_net\_cash\_power | float | AUD Cash Buying Power. <br><br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 8.7 |
    | aud\_assets | float | AU Net Assets Value. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 9.0.5008 |
    | ca\_cash | float | CAD Cash. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 10.0.6008 |
    | ca\_avl\_withdrawal\_cash | float | CAD Withdrawable Cash. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 10.0.6008 |
    | cad\_net\_cash\_power | float | CAD Cash Buying Power. <br><br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 10.0.6008 |
    | cad\_assets | float | CA Net Assets Value. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 10.0.6008 |
    | my\_cash | float | MYR Cash. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 10.0.6008 |
    | my\_avl\_withdrawal\_cash | float | MYR Withdrawable Cash. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 10.0.6008 |
    | myr\_net\_cash\_power | float | MYR Cash Buying Power. <br><br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 10.0.6008 |
    | myr\_assets | float | MY Net Assets Value. <br><br>    - Only applicable to universal securities accounts.<br>    - This field is the real value of this currency, instead of the value denominated in this currency.<br>    - Minimum version requirements: 10.0.6008 |
    | is\_pdt | bool | Is it marked as a PDT. <br><br>True: It is a PDT. False: Not a PDT.<br>Only applicable to securities accounts of Moomoo US.<br>Minimum OpenD version requirements: 5.8.2008. |
    | pdt\_seq | string | Day Trades Left. <br><br>Only applicable to securities accounts of Moomoo US.<br>Minimum OpenD version requirements: 5.8.2008. |
    | beginning\_dtbp | float | Beginning DTBP. <br><br>Only applicable to securities accounts of Moomoo US marked as a PDT.<br>Minimum OpenD version requirements: 5.8.2008. |
    | remaining\_dtbp | float | Remaining DTBP. <br><br>Only applicable to securities accounts of Moomoo US marked as a PDT.<br>Minimum OpenD version requirements: 5.8.2008. |
    | dt\_call\_amount | float | Day-trading Call Amount. <br><br>Only applicable to securities accounts of Moomoo US marked as a PDT.<br>Minimum OpenD version requirements: 5.8.2008. |
    | dt\_status | [DtStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1018) | Day-trading Status. <br><br>Only applicable to securities accounts of Moomoo US marked as a PDT.<br>Minimum OpenD version requirements: 5.8.2008. |
- **Example**

```python
from moomoo import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUINC)
ret, data = trd_ctx.accinfo_query()
if ret == RET_OK:
    print(data)
    print(data['power'][0])  # Get the first buying power
    print(data['power'].values.tolist())  # convert to list
else:
    print('accinfo_query error: ', data)
trd_ctx.close()  # Close the current connection

```

- **Output**

- **Output**

```python
power  max_power_short  net_cash_power  total_assets  securities_assets  fund_assets  bond_assets   cash   market_val      long_mv   short_mv  pending_asset  interest_charged_amount  frozen_cash  avl_withdrawal_cash  max_withdrawal currency available_funds unrealized_pl realized_pl risk_level risk_status  initial_margin  margin_call_margin  maintenance_margin  hk_cash  hk_avl_withdrawal_cash  hkd_net_cash_power  hkd_assets  us_cash  us_avl_withdrawal_cash  usd_net_cash_power  usd_assets  cn_cash  cn_avl_withdrawal_cash  cnh_net_cash_power  cnh_assets  jp_cash  jp_avl_withdrawal_cash  jpy_net_cash_power jpy_assets  sg_cash sg_avl_withdrawal_cash sgd_net_cash_power sgd_assets  au_cash au_avl_withdrawal_cash aud_net_cash_power aud_assets  ca_cash ca_avl_withdrawal_cash cad_net_cash_power cad_assets  my_cash my_avl_withdrawal_cash myr_net_cash_power myr_assets  is_pdt pdt_seq beginning_dtbp remaining_dtbp dt_call_amount dt_status
0  465453.903307    465453.903307             0.0   289932.0404        197028.2204     92903.82          0.0  25.18  197003.0448  211960.7568 -14957.712            0.0                      0.0    25.930845                  0.0             0.0      HKD             N/A           N/A         N/A        N/A      LEVEL3   219346.648525       288656.787955       181250.967601      0.0                     0.0          13225.7955     0.0   3.24                     0.0           9656.4365      0.0    0.0                     0.0                 0.0    0.0      0.0                     0.0                 0.0     0.0    N/A                    N/A                N/A     0.0    N/A                    N/A                N/A    0.0    N/A                    N/A                N/A    0.0    N/A                    N/A                N/A    0.0        N/A     N/A            N/A            N/A            N/A       N/A
465453.903307
[465453.903307]

```


## Trd\_GetFunds.proto


- **Description**

Query fund data such as net asset value, securities market value, cash, and purchasing power of trading accounts.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For structure of currency type, refer to [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655)
> - Asset category, refer to [TrdAssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For structure of account funds, refer to [Funds](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1356)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetFunds(TrdGetFunds.Request req);`

`virtual void OnReply_GetFunds(MMAPI_Conn client, uint nSerialNo, ${proto_name.Response rsp);`

- **Description**

Query fund data such as net asset value, securities market value, cash, and purchasing power of trading accounts.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For structure of currency type, refer to [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655)
> - Asset category, refer to [TrdAssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For structure of account funds, refer to [Funds](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1356)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getFunds(TrdGetFunds.Request req);`

`void onReply_GetFunds(MMAPI_Conn client, int nSerialNo, ${proto_name.Response rsp);`

- **Description**

Query fund data such as net asset value, securities market value, cash, and purchasing power of trading accounts. data. Obtain fund data such as the net asset value of the account, the market value of securities, cash, and purchasing power.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For structure of currency type, refer to [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655)
> - Asset category, refer to [TrdAssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For structure of account funds, refer to [Funds](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1356)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetFunds(const Trd_GetFunds::Request &stReq);`

`virtual void OnReply_GetFunds(moomoo::u32_t nSerialNo, const Trd_GetFunds::Response &stRsp) = 0;`

- **Description**

Query fund data such as net asset value, securities market value, cash, and purchasing power of trading accounts.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For structure of currency type, refer to [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655)
> - Asset category, refer to [TrdAssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For structure of account funds, refer to [Funds](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1356)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetFunds(req);`

- **Description**

Query fund data such as net asset value, securities market value, cash, and purchasing power of trading accounts.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For structure of currency type, refer to [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655)
> - Asset category, refer to [TrdAssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For structure of account funds, refer to [Funds](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1356)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds under a single account ID (acc\_id)
- It will be restricted by the frequency limit for this interface, only when refresh\_cache is True

←
[Unlock Trade](https://openapi.moomoo.com/moomoo-api-doc/en/trade/unlock.html)[Query the Maximum Quantity that Can be Bought or Sold](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-max-trd-qtys.html)
→

## Get Historical Deals

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-history-order-fill-list.html


`history_deal_list_query(code='', deal_market=TrdMarket.NONE, start='', end='', trd_env=TrdEnv.REAL, acc_id=0, acc_index=0)`

- **Description**

Query historical deal list of a specific trading account.

This feature is only available for live trading and not for paper trading.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Security symbol. <br><br>Only return orders whose related security symbols correspond to these codes.<br>If this parameter is not passed, return all. |
| deal\_market | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Filter deals by security market. <br><br>  - Return historical deals for the specified market.<br>  - If this parameter is not passed or the default NONE is used, return historical deals for all markets. |
| start | str | Start time. <br><br>In strict accordance with YYYY-MM-DD HH:MM:SS or YYYY-MM-DD HH:MM:SS.MS format.<br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
| end | str | End time. <br><br>In strict accordance with YYYY-MM-DD HH:MM:SS or YYYY-MM-DD HH:MM:SS.MS format.<br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
| acc\_id | int | Trading account ID. <br><br>  - When acc\_id is 0, the account specified by acc\_index is chosen.<br>  - When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen.<br>  - Using acc\_id to query and trade is strongly recommended, acc\_index will change when adding/closing an account, result in the account you specify is inconsistent with the actual trading account. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |

  - The combination of _**start**_ and _**end**_ is as follows

    | Start type | End type | Description |
    | --- | --- | --- |
    | str | str | _**start**_ and _**end**_ are the specified dates respectively. |
    | None | str | _**start**_ is 90 days before _**end**_. |
    | str | None | _**end**_ is 90 days after _**start**_. |
    | None | None | _**start**_ is 90 days before, _**end**_ is the current date. |
- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, transaction list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Transaction list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | trd\_side | [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832) | Trading direction. |
    | deal\_id | str | Deal number. |
    | order\_id | str | Order ID. |
    | code | str | Security code. |
    | stock\_name | str | Security name. |
    | deal\_market | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Deal market. |
    | qty | float | Quantity of shares bought/sold on this fill. <br><br>Option futures unit is "Contract". |
    | price | float | Fill price. <br><br>3 decimal place accuracy, excess part will be rounded. |
    | create\_time | str | Create time. <br><br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
    | counter\_broker\_id | int | Counter broker ID. <br><br>Only valid for HK stocks. |
    | counter\_broker\_name | str | Counter broker name. <br><br>Only valid for HK stocks. |
    | status | [DealStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4379) | Deal status. |
    | jp\_acc\_type | [SubAccType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3947) | JP sub account type <br><br>Only applicable for Moomoo JP |
- **Example**

```python
from futu import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.HK, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUSECURITIES)
ret, data = trd_ctx.history_deal_list_query()
if ret == RET_OK:
    print(data)
    if data.shape[0] > 0:  # If the order fill list is not empty
        print(data['deal_id'][0])  # Get the first deal ID of the history order fill list
        print(data['deal_id'].values.tolist())  # Convert to list
else:
    print('history_deal_list_query error: ', data)
trd_ctx.close()  # Close the current connection

```

- **Output**

```python
    code stock_name                       deal_market       deal_id             order_id    qty  price trd_side              create_time  counter_broker_id counter_broker_name status jp_acc_type
0  HK.00388      Hong Kong Exchanges and Clearing  HK  5056208452274069375  4665291631090960915  100.0  370.0      BUY  2020-09-17 21:15:59.979                  5                         OK        N/A
['5056208452274069375']

```


## Trd\_GetHistoryOrderFillList.proto


- **Description**

Query the historical transaction list of a specific trading account.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetHistoryOrderFillList(TrdGetHistoryOrderFillList.Request req);`

`virtual void OnReply_GetHistoryOrderFillList(FTAPI_Conn client, uint nSerialNo, TrdGetHistoryOrderFillList.Response rsp);`

- **Description**

Query the historical transaction list of a specific trading account.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getHistoryOrderFillList(TrdGetHistoryOrderFillList.Request req);`

`void onReply_GetHistoryOrderFillList(FTAPI_Conn client, int nSerialNo, TrdGetHistoryOrderFillList.Response rsp);`

- **Description**

Query the historical transaction list of a specific trading account.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetHistoryOrderFillList(const Trd_GetHistoryOrderFillList::Request &stReq);`

`virtual void OnReply_GetHistoryOrderFillList(Futu::u32_t nSerialNo, const Trd_GetHistoryOrderFillList::Response &stRsp) = 0;`

- **Description**

Query the historical transaction list of a specific trading account.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetHistoryOrderFillList(req);`

- **Description**

Query the historical transaction list of a specific trading account.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds under a single account ID (acc\_id).

Tips

- Historical deals are arranged in reverse chronological order: later deals return first, followed by earlier deals.

`history_deal_list_query(code='', deal_market=TrdMarket.NONE, start='', end='', trd_env=TrdEnv.REAL, acc_id=0, acc_index=0)`

- **Description**

Query historical deal list of a specific trading account.

This feature is only available for live trading and not for paper trading.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Security symbol. <br><br>Only return orders whose related security symbols correspond to these codes.<br>If this parameter is not passed, return all. |
| deal\_market | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Filter deals by security market. <br><br>  - Return historical deals for the specified market.<br>  - If this parameter is not passed or the default NONE is used, return historical deals for all markets. |
| start | str | Start time. <br><br>In strict accordance with YYYY-MM-DD HH:MM:SS or YYYY-MM-DD HH:MM:SS.MS format.<br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
| end | str | End time. <br><br>In strict accordance with YYYY-MM-DD HH:MM:SS or YYYY-MM-DD HH:MM:SS.MS format.<br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
| acc\_id | int | Trading account ID. <br><br>  - When acc\_id is 0, the account specified by acc\_index is chosen.<br>  - When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen.<br>  - Using acc\_id to query and trade is strongly recommended, acc\_index will change when adding/closing an account, result in the account you specify is inconsistent with the actual trading account. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |

  - The combination of _**start**_ and _**end**_ is as follows

    | Start type | End type | Description |
    | --- | --- | --- |
    | str | str | _**start**_ and _**end**_ are the specified dates respectively. |
    | None | str | _**start**_ is 90 days before _**end**_. |
    | str | None | _**end**_ is 90 days after _**start**_. |
    | None | None | _**start**_ is 90 days before, _**end**_ is the current date. |
- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, transaction list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Transaction list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | trd\_side | [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832) | Trading direction. |
    | deal\_id | str | Deal number. |
    | order\_id | str | Order ID. |
    | code | str | Security code. |
    | stock\_name | str | Security name. |
    | deal\_market | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Deal market. |
    | qty | float | Quantity of shares bought/sold on this fill. <br><br>Option futures unit is "Contract". |
    | price | float | Fill price. <br><br>3 decimal place accuracy, excess part will be rounded. |
    | create\_time | str | Create time. <br><br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
    | counter\_broker\_id | int | Counter broker ID. <br><br>Only valid for HK stocks. |
    | counter\_broker\_name | str | Counter broker name. <br><br>Only valid for HK stocks. |
    | status | [DealStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4379) | Deal status. |
    | jp\_acc\_type | [SubAccType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3947) | JP sub account type <br><br>Only applicable for Moomoo JP |
- **Example**

```python
from moomoo import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUINC)
ret, data = trd_ctx.history_deal_list_query()
if ret == RET_OK:
    print(data)
    if data.shape[0] > 0:  # If the order fill list is not empty
        print(data['deal_id'][0])  # Get the first deal ID of the history order fill list
        print(data['deal_id'].values.tolist())  # Convert to list
else:
    print('history_deal_list_query error: ', data)
trd_ctx.close()  # Close the current connection

```

- **Output**

```python
    code     stock_name      deal_market      deal_id             order_id      qty    price  trd_side     create_time          counter_broker_id counter_broker_name status jp_acc_type
0  US.AAPL   Apple Inc.           US  5056208452274069375  4665291631090960915  100.0  370.0    BUY    2020-09-17 21:15:59.979          5                                 OK        N/A
['5056208452274069375']

```


## Trd\_GetHistoryOrderFillList.proto


- **Description**

Query the historical transaction list of a specific trading account.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetHistoryOrderFillList(TrdGetHistoryOrderFillList.Request req);`

`virtual void OnReply_GetHistoryOrderFillList(MMAPI_Conn client, uint nSerialNo, TrdGetHistoryOrderFillList.Response rsp);`

- **Description**

Query the historical transaction list of a specific trading account.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getHistoryOrderFillList(TrdGetHistoryOrderFillList.Request req);`

`void onReply_GetHistoryOrderFillList(MMAPI_Conn client, int nSerialNo, TrdGetHistoryOrderFillList.Response rsp);`

- **Description**

Query the historical transaction list of a specific trading account.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetHistoryOrderFillList(const Trd_GetHistoryOrderFillList::Request &stReq);`

`virtual void OnReply_GetHistoryOrderFillList(moomoo::u32_t nSerialNo, const Trd_GetHistoryOrderFillList::Response &stRsp) = 0;`

- **Description**

Query the historical transaction list of a specific trading account.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetHistoryOrderFillList(req);`

- **Description**

Query the historical transaction list of a specific trading account.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds under a single account ID (acc\_id).

Tips

- Historical deals are arranged in reverse chronological order: later deals return first, followed by earlier deals.

←
[Get Today's Deals](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-order-fill-list.html)[Deals Push Callback](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order-fill.html)
→

## Get Historical Orders

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-history-order-list.html


`history_order_list_query(status_filter_list=[], code='', order_market=TrdMarket.NONE, start='', end='', trd_env=TrdEnv.REAL, acc_id=0, acc_index=0)`

- **Description**

Query the historical order list of a specified trading account

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| status\_filter\_list | list | Order status filter conditions. <br><br>Only return the data of the specified Order ID. No filtering by default, return all. <br>Data type of elements in the list is [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074). |
| code | str | Security symbol. <br><br>Only return orders whose related security symbols correspond to these codes. <br>If this parameter is not passed, return all. |
| order\_market | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Filter orders by security market.<br><br>  - Return historical orders for the specified market.<br>  - If this parameter is not passed or the default NONE is used, return historical orders for all markets. |
| start | str | Start time. <br><br>In strict accordance with YYYY-MM-DD HH:MM:SS or YYYY-MM-DD HH:MM:SS.MS format.<br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
| end | str | End time <br><br>In strict accordance with YYYY-MM-DD HH:MM:SS or YYYY-MM-DD HH:MM:SS.MS format.<br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
| acc\_id | int | Trading account ID. <br><br>  - When acc\_id is 0, the account specified by acc\_index is chosen.<br>  - When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen.<br>  - Using acc\_id to query and trade is strongly recommended, acc\_index will change when adding/closing an account, result in the account you specify is inconsistent with the actual trading account. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |

  - The combination of _**start**_ and _**end**_ is as follows

    | Start type | End type | Description |
    | --- | --- | --- |
    | str | str | _**start**_ and _**end**_ are the specified dates respectively. |
    | None | str | _**start**_ is 90 days before _**end**_. |
    | str | None | _**end**_ is 90 days after _**start**_. |
    | None | None | _**start**_ is 90 days before, _**end**_ is the current date. |
- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, order list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Order list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | trd\_side | [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832) | Trading direction. |
    | order\_type | [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245) | Order type. |
    | order\_status | [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074) | Order status. |
    | order\_id | str | Order ID. |
    | code | str | Security code. |
    | stock\_name | str | Security name. |
    | order\_market | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Order market. |
    | qty | float | Order quantity. <br><br>Option futures unit is "Contract". |
    | price | float | Order price. <br><br>3 decimal place accuracy, excess part will be rounded. |
    | currency | [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655) | Transaction currency. |
    | create\_time | str | Create time. <br><br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
    | updated\_time | str | Last update time. <br><br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149).<br>The unit of option futures is "Contract". |
    | dealt\_qty | float | Deal quantity <br><br>Option futures unit is "Contract". |
    | dealt\_avg\_price | float | Average deal price. <br><br>No precision limit. |
    | last\_err\_msg | str | The last error description. <br><br>If there is an error, the cause of the last error will be returned.<br>If there is no error, an empty string will be returned. |
    | remark | str | Identification of remarks when placing an order. <br><br>Refer to remark in the [place\_order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/place-order.html) interface parameters for details. |
    | time\_in\_force | [TimeInForce](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7678) | Valid period. |
    | fill\_outside\_rth | bool | Whether pre-market and after-hours are needed. <br><br>For HK pre-opening market and US pre/post-market.<br>True: need.<br>False: not need. |
    | session | [Session](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8688) | Order session (Only applied to US stocks) |
    | aux\_price | float | Traget price. |
    | trail\_type | [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12) | Trailing type. |
    | trail\_value | float | Trailing amount/ratio. |
    | trail\_spread | float | Specify spread. |
    | jp\_acc\_type | [SubAccType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3947) | JP sub account type <br><br>Only applicable for Moomoo JP |
- **Example**

```python
from futu import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.HK, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUSECURITIES)
ret, data = trd_ctx.history_order_list_query()
if ret == RET_OK:
    print(data)
    if data.shape[0] > 0:  # If the order list is not empty
        print(data['order_id'][0])  # Get Order ID of the first holding position
        print(data['order_id'].values.tolist())  # Convert to list
else:
    print('history_order_list_query error: ', data)
trd_ctx.close()

```

- **Output**

```python
        code stock_name order_market   trd_side           order_type   order_status             order_id    qty  price              create_time             updated_time  dealt_qty  dealt_avg_price last_err_msg      remark time_in_force fill_outside_rth session aux_price trail_type trail_value trail_spread currency jp_acc_type
0   HK.00700                 HK          BUY           NORMAL  CANCELLED_ALL  6644468615272262086  100.0  520.0  2021-09-06 10:17:52.465  2021-09-07 16:10:22.806        0.0              0.0               asdfg+=@@@           GTC              N/A     N/A    560        N/A         N/A          N/A      HKD        N/A
['6644468615272262086']

```


## Trd\_GetHistoryOrderList.proto


- **Description**

Query the historical order list of a specified trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)
> - For order status enumeration, refer to [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer to [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetHistoryOrderList(TrdGetHistoryOrderList.Request req);`

`virtual void OnReply_GetHistoryOrderList(FTAPI_Conn client, uint nSerialNo, TrdGetHistoryOrderList.Response rsp);`

- **Description**

Query the historical order list of a specified trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)
> - For order status enumeration, refer to [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer to [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getHistoryOrderList(TrdGetHistoryOrderList.Request req);`

`void onReply_GetHistoryOrderList(FTAPI_Conn client, int nSerialNo, TrdGetHistoryOrderList.Response rsp);`

- **Description**

Query the historical order list of a specified trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)
> - For order status enumeration, refer to [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer to [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetHistoryOrderList(const Trd_GetHistoryOrderList::Request &stReq);`

`virtual void OnReply_GetHistoryOrderList(Futu::u32_t nSerialNo, const Trd_GetHistoryOrderList::Response &stRsp) = 0;`

- **Description**

Query the historical order list of a specified trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)
> - For order status enumeration, refer to [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer to [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetHistoryOrderList(req);`

- **Description**

Query the historical order list of a specified trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)
> - For order status enumeration, refer to [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer to [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds under a single account ID (acc\_id).

Tips

- Historical orders are arranged in reverse chronological order: later orders return first, followed by earlier orders.

`history_order_list_query(status_filter_list=[], code='', order_market=TrdMarket.NONE, start='', end='', trd_env=TrdEnv.REAL, acc_id=0, acc_index=0)`

- **Description**

Query the historical order list of a specified trading account

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| status\_filter\_list | list | Order status filter conditions. <br><br>Only return the data of the specified Order ID. No filtering by default, return all. <br>Data type of elements in the list is [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074). |
| code | str | Security symbol. <br><br>Only return orders whose related security symbols correspond to these codes. <br>If this parameter is not passed, return all. |
| order\_market | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Filter orders by security market.<br><br>  - Return historical orders for the specified market.<br>  - If this parameter is not passed or the default NONE is used, return historical orders for all markets. |
| start | str | Start time. <br><br>In strict accordance with YYYY-MM-DD HH:MM:SS or YYYY-MM-DD HH:MM:SS.MS format.<br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
| end | str | End time <br><br>In strict accordance with YYYY-MM-DD HH:MM:SS or YYYY-MM-DD HH:MM:SS.MS format.<br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
| acc\_id | int | Trading account ID. <br><br>  - When acc\_id is 0, the account specified by acc\_index is chosen.<br>  - When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen.<br>  - Using acc\_id to query and trade is strongly recommended, acc\_index will change when adding/closing an account, result in the account you specify is inconsistent with the actual trading account. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |

  - The combination of _**start**_ and _**end**_ is as follows

    | Start type | End type | Description |
    | --- | --- | --- |
    | str | str | _**start**_ and _**end**_ are the specified dates respectively. |
    | None | str | _**start**_ is 90 days before _**end**_. |
    | str | None | _**end**_ is 90 days after _**start**_. |
    | None | None | _**start**_ is 90 days before, _**end**_ is the current date. |
- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, order list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Order list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | trd\_side | [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832) | Trading direction. |
    | order\_type | [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245) | Order type. |
    | order\_status | [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074) | Order status. |
    | order\_id | str | Order ID. |
    | code | str | Security code. |
    | stock\_name | str | Security name. |
    | order\_market | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Order market. |
    | qty | float | Order quantity. <br><br>Option futures unit is "Contract". |
    | price | float | Order price. <br><br>3 decimal place accuracy, excess part will be rounded. |
    | currency | [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655) | Transaction currency. |
    | create\_time | str | Create time. <br><br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
    | updated\_time | str | Last update time. <br><br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149).<br>The unit of option futures is "Contract". |
    | dealt\_qty | float | Deal quantity <br><br>Option futures unit is "Contract". |
    | dealt\_avg\_price | float | Average deal price. <br><br>No precision limit. |
    | last\_err\_msg | str | The last error description. <br><br>If there is an error, the cause of the last error will be returned.<br>If there is no error, an empty string will be returned. |
    | remark | str | Identification of remarks when placing an order. <br><br>Refer to remark in the [place\_order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/place-order.html) interface parameters for details. |
    | time\_in\_force | [TimeInForce](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7678) | Valid period. |
    | fill\_outside\_rth | bool | Whether pre-market and after-hours are needed. <br><br>For HK pre-opening market and US pre/post-market.<br>True: need.<br>False: not need. |
    | session | [Session](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8688) | Order session (Only applied to US stocks) |
    | aux\_price | float | Traget price. |
    | trail\_type | [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12) | Trailing type. |
    | trail\_value | float | Trailing amount/ratio. |
    | trail\_spread | float | Specify spread. |
    | jp\_acc\_type | [SubAccType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3947) | JP sub account type <br><br>Only applicable for Moomoo JP |
- **Example**

```python
from moomoo import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUINC)
ret, data = trd_ctx.history_order_list_query()
if ret == RET_OK:
    print(data)
    if data.shape[0] > 0:  # If the order list is not empty
        print(data['order_id'][0])  # Get Order ID of the first holding position
        print(data['order_id'].values.tolist())  # Convert to list
else:
    print('history_order_list_query error: ', data)
trd_ctx.close()

```

- **Output**

```python
        code stock_name  order_market  trd_side           order_type   order_status             order_id    qty  price              create_time             updated_time  dealt_qty  dealt_avg_price last_err_msg      remark time_in_force fill_outside_rth session aux_price trail_type trail_value trail_spread currency jp_acc_type
0   US.AAPL                  US          BUY           NORMAL  CANCELLED_ALL  6644468615272262086  100.0  520.0  2021-09-06 10:17:52.465  2021-09-07 16:10:22.806        0.0              0.0               asdfg+=@@@           GTC              N/A       N/A      560        N/A         N/A          N/A      USD        N/A
['6644468615272262086']

```


## Trd\_GetHistoryOrderList.proto


- **Description**

Query the historical order list of a specified trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)
> - For order status enumeration, refer to [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer to [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetHistoryOrderList(TrdGetHistoryOrderList.Request req);`

`virtual void OnReply_GetHistoryOrderList(MMAPI_Conn client, uint nSerialNo, TrdGetHistoryOrderList.Response rsp);`

- **Description**

Query the historical order list of a specified trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)
> - For order status enumeration, refer to [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer to [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getHistoryOrderList(TrdGetHistoryOrderList.Request req);`

`void onReply_GetHistoryOrderList(MMAPI_Conn client, int nSerialNo, TrdGetHistoryOrderList.Response rsp);`

- **Description**

Query the historical order list of a specified trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)
> - For order status enumeration, refer to [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer to [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetHistoryOrderList(const Trd_GetHistoryOrderList::Request &stReq);`

`virtual void OnReply_GetHistoryOrderList(moomoo::u32_t nSerialNo, const Trd_GetHistoryOrderList::Response &stRsp) = 0;`

- **Description**

Query the historical order list of a specified trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)
> - For order status enumeration, refer to [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer to [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetHistoryOrderList(req);`

- **Description**

Query the historical order list of a specified trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)
> - For order status enumeration, refer to [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer to [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds under a single account ID (acc\_id).

Tips

- Historical orders are arranged in reverse chronological order: later orders return first, followed by earlier orders.

←
[Get open Orders](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-order-list.html)[Orders Push Callback](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order.html)
→

## Get Margin Data

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-margin-ratio.html


`get_margin_ratio(code_list)`

- **Description**

Query the margin data of stocks.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code\_list | list | Stock list. <br><br>Up to 100 targets can be requested each time.<br>Data type of elements in the list is str. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, margin data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Margin data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code |
    | is\_long\_permit | bool | Is marginable trading allowed. |
    | is\_short\_permit | bool | Is shortable trading allowed. |
    | short\_pool\_remain | float | Short pool remaining. <br><br>unit: shares. |
    | short\_fee\_rate | float | Borrow rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | alert\_long\_ratio | float | Marginable alert margin. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | alert\_short\_ratio | float | Shortable alert margin. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | im\_long\_ratio | float | Marginable initial margin. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | im\_short\_ratio | float | Shortable initial margin. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | mcm\_long\_ratio | float | Marginable margin call margin. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | mcm\_short\_ratio | float | Shortable margin call margin. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | mm\_long\_ratio | float | Marginable maintenance margin. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | mm\_short\_ratio | float | Marginable maintenance margin. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
- **Example**

```python
from futu import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.HK, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUSECURITIES)
ret, data = trd_ctx.get_margin_ratio(code_list=['HK.00700','HK.09988'])
if ret == RET_OK:
    print(data)
	print(data['is_long_permit'][0])  # Get whether marginable trading allowed for the first stock
    print(data['im_short_ratio'].values.tolist())  # Convert to list
else:
    print('error:', data)
trd_ctx.close()  # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
       code  is_long_permit  is_short_permit  short_pool_remain  short_fee_rate  alert_long_ratio  alert_short_ratio  im_long_ratio  im_short_ratio  mcm_long_ratio  mcm_short_ratio  mm_long_ratio  mm_short_ratio
0  HK.00700            True             True          1826900.0            0.89              33.0               56.0           35.0            60.0            32.0             53.0           25.0            40.0
1  HK.09988            True             True          1150600.0            0.95              48.0               46.0           50.0            50.0            47.0             43.0           40.0            30.0
True
[60.0, 50.0]

```


## Trd\_GetMarginRatio.proto


- **Description**

Query the margin data of stocks.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetMarginRatio(TrdGetMarginRatio.Request req);`

`virtual void OnReply_GetMarginRatio(FTAPI_Conn client, uint nSerialNo, TrdGetMarginRatio.Response rsp);`

- **Description**

Query the margin data of stocks.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getMarginRatio(TrdGetMarginRatio.Request req);`

`void onReply_GetMarginRatio(FTAPI_Conn client, int nSerialNo, TrdGetMarginRatio.Response rsp);`

- **Description**

Query the margin data of stocks.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetMarginRatio(const Trd_GetMarginRatio::Request &stReq);`

`virtual void OnReply_GetMarginRatio(Futu::u32_t nSerialNo, const Trd_GetMarginRatio::Response &stRsp) = 0;`

- **Description**

Query the margin data of stocks.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetMarginRatio(req);`

- **Description**

Query the margin data of stocks.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds under a single user ID.
- For each request, the maximum number of stocks supported by the parameter is 100.
- Only HK stocks and US stocks are supported.

`get_margin_ratio(code_list)`

- **Description**

Query the margin data of stocks.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code\_list | list | Stock list. <br><br>Up to 100 targets can be requested each time.<br>Data type of elements in the list is str. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, margin data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Margin data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code |
    | is\_long\_permit | bool | Is marginable trading allowed. |
    | is\_short\_permit | bool | Is shortable trading allowed. |
    | short\_pool\_remain | float | Short pool remaining. <br><br>unit: shares. |
    | short\_fee\_rate | float | Borrow rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | alert\_long\_ratio | float | Marginable alert margin. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | alert\_short\_ratio | float | Shortable alert margin. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | im\_long\_ratio | float | Marginable initial margin. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | im\_short\_ratio | float | Shortable initial margin. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | mcm\_long\_ratio | float | Marginable margin call margin. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | mcm\_short\_ratio | float | Shortable margin call margin. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | mm\_long\_ratio | float | Marginable maintenance margin. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | mm\_short\_ratio | float | Marginable maintenance margin. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
- **Example**

```python
from moomoo import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUINC)
ret, data = trd_ctx.get_margin_ratio(code_list=['US.AAPL','US.FUTU'])
if ret == RET_OK:
    print(data)
	print(data['is_long_permit'][0])  # Get whether marginable trading allowed for the first stock
    print(data['im_short_ratio'].values.tolist())  # Convert to list
else:
    print('error:', data)
trd_ctx.close()  # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
       code  is_long_permit  is_short_permit  short_pool_remain  short_fee_rate  alert_long_ratio  alert_short_ratio  im_long_ratio  im_short_ratio  mcm_long_ratio  mcm_short_ratio  mm_long_ratio  mm_short_ratio
0  US.AAPL             True             True          1826900.0            0.89              33.0               56.0           35.0            60.0            32.0             53.0           25.0            40.0
1  US.FUTU            True             True          1150600.0            0.95              48.0               46.0           50.0            50.0            47.0             43.0           40.0            30.0
True
[60.0, 50.0]

```


## Trd\_GetMarginRatio.proto


- **Description**

Query the margin data of stocks.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetMarginRatio(TrdGetMarginRatio.Request req);`

`virtual void OnReply_GetMarginRatio(MMAPI_Conn client, uint nSerialNo, TrdGetMarginRatio.Response rsp);`

- **Description**

Query the margin data of stocks.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getMarginRatio(TrdGetMarginRatio.Request req);`

`void onReply_GetMarginRatio(MMAPI_Conn client, int nSerialNo, TrdGetMarginRatio.Response rsp);`

- **Description**

Query the margin data of stocks.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetMarginRatio(const Trd_GetMarginRatio::Request &stReq);`

`virtual void OnReply_GetMarginRatio(moomoo::u32_t nSerialNo, const Trd_GetMarginRatio::Response &stRsp) = 0;`

- **Description**

Query the margin data of stocks.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetMarginRatio(req);`

- **Description**

Query the margin data of stocks.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds under a single user ID.
- For each request, the maximum number of stocks supported by the parameter is 100.
- Stocks and ETFs of US, HK and A-share markets are supported.

←
[Get Positions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-position-list.html)[Get Account Cash Flow](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-acc-cash-flow.html)
→

## Query the Maximum Quantity that Can be Bought or Sold

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-max-trd-qtys.html


`acctradinginfo_query(order_type, code, price, order_id=None, adjust_limit=0, trd_env=TrdEnv.REAL, acc_id=0, acc_index=0, session=Session.NONE, jp_acc_type=SubAccType.JP_GENERAL, position_id=NONE)`

- **Description**

Query the maximum quantity that can be bought or sold under a specifictrading account, and you can also query the maximum changeable quantity of a specific order under a specifictrading account.

Cash account request options are not supported.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| order\_type | [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245) | Order type. |
| code | str | Security code. <br><br>If it is a future main code, it will be automatically converted to the corresponding actual contract code. |
| price | float | Quotation. <br><br>  - Accuracy to 3 decimal places for securities account, and the excess part will be discarded.<br>  - Accuracy to 9 decimal places for futures account, and the excess part will be discarded. |
| order\_id | str | Order ID. <br><br>  - The default is None, and the query is the maximum quantity that can be bought or sold of the new order. <br>  - If you want to modify order, the order number must be sent. At this time, when calculating, the maximum quantity that can be changed for this order will be returned. <br>  - If you use this parameter to query the maximum changeable quantity of an order, you need to call this interface more than 0.5 seconds after the order is placed. |
| adjust\_limit | float | Price adjustment range. <br><br>OpenD will automatically adjust the incoming price to the legal price.(Futures will ignore this parameter.)<br>  - A positive number represents an upward adjustment, and a negative number represents a downward adjustment. <br>  - For example: 0.015 means upward adjustment and the amplitude does not exceed 1.5%; -0.01 means downward adjustment and the amplitude does not exceed 1%. The default 0 means no adjustment. |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
| acc\_id | int | Trading account ID. <br><br>  - When acc\_id is 0, the account specified by acc\_index is chosen.<br>  - When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen.<br>  - Using acc\_id to query and trade is strongly recommended, acc\_index will change when adding/closing an account, result in the account you specify is inconsistent with the actual trading account. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |
| session | [Session](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8688) | US stocks Trading Session <br><br>Applied to US stocks, **RTH**, **ETH**, **OVERNIGHT**, **ALL** can be allowed. |
| jp\_acc\_type | [SubAccType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3947) | JP sub account type <br><br>Only applicable for Moomoo JP |
| position\_id | int | Position ID <br><br>  - Applicable for querying **Sell** and **Buyback** in Moomoo JP Derivative accounts.<br>  - It can be obtained by [Get Positions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-position-list.html) interface. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, account list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Account list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | max\_cash\_buy | float | Buy on cash. <br><br>    - Maximum quantity that can be bought in cash. <br>    - The unit of options is "contract".<br>    - Futures accounts are not applicable. |
    | max\_cash\_and\_margin\_buy | float | Buy on margin. <br><br>    - Maximum quantity that can be bought on margin. <br>    - The unit of options is "contract".<br>    - Futures accounts are not applicable. |
    | max\_position\_sell | float | Sell on position. <br><br>    - Maximum quantity can be sold. <br>    - The unit of options is "contract". |
    | max\_sell\_short | float | Short sell. <br><br>    - Maximum quantity can be shorted.<br>    - The unit of options is "contract".<br>    - Futures accounts are not applicable. |
    | max\_buy\_back | float | Short positions. <br><br>    - Buyback required quantity to close a position. When holding short positions, you must first buy back the short positions before you can continue to buy long.<br>    - The unit of options and futures is "contract". |
    | long\_required\_im | float | Initial margin change when buying one contract of an asset. <br><br>    - Currently only futures and options apply.<br>    - No position: Returns the initial margin needed to buy one contract (a positive value). <br>    - Long position: Returns the initial margin required to buy one contract (a positive value). <br>    - Short position: Returns the initial margin released for buying back one contract (a negative value). |
    | short\_required\_im | float | Initial margin change when selling one contract of an asset. <br><br>    - Currently only futures and options apply.<br>    - No position: Returns the initial margin needed to short one contract (a positive value). <br>    - Long position: Returns the initial margin released for selling one contract (a negative value). <br>    - Short position: Returns the initial margin needed to short one contract (a positive value). |
    | session | [Session](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8688) | Order session (Only applied to US stocks) |
- **Example**

```python
from futu import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.HK, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUSECURITIES)
ret, data = trd_ctx.acctradinginfo_query(order_type=OrderType.NORMAL, code='HK.00700', price=400)
if ret == RET_OK:
    print(data)
    print(data['max_cash_and_margin_buy'][0])  # Get maximum quantity that can be bought on margin
else:
    print('acctradinginfo_query error: ', data)
trd_ctx.close()  # Close the current connection

```

- **Output**

```python
    max_cash_buy  max_cash_and_margin_buy  max_position_sell  max_sell_short  max_buy_back long_required_im short_required_im  session
0           0.0                   1500.0                0.0             0.0           0.0              N/A               N/A       N/A
1500.0

```


## Trd\_GetMaxTrdQtys.proto


- **Description**

Query the maximum quantity that can be bought or sold under a specifictrading account, and you can also query the maximum changeable quantity of a specific order under a specifictrading account.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order type, refer to [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245)
> - For stock market, refer to [TrdSecMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4905)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For the structure of the maximum tradable quantity, refer to [MaxTrdQtys](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8387)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetMaxTrdQtys(TrdGetMaxTrdQtys.Request req);`

`virtual void OnReply_GetMaxTrdQtys(FTAPI_Conn client, uint nSerialNo, TrdGetMaxTrdQtys.Response rsp);`

- **Description**

Query the maximum quantity that can be bought or sold under a specifictrading account, and you can also query the maximum changeable quantity of a specific order under a specifictrading account.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order type, refer to [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245)
> - For stock market, refer to [TrdSecMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4905)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For the structure of the maximum tradable quantity, refer to [MaxTrdQtys](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8387)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getMaxTrdQtys(TrdGetMaxTrdQtys.Request req);`

`void onReply_GetMaxTrdQtys(FTAPI_Conn client, int nSerialNo, TrdGetMaxTrdQtys.Response rsp);`

- **Description**

Query the maximum quantity that can be bought or sold under a specifictrading account, and you can also query the maximum changeable quantity of a specific order under a specifictrading account.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order type, refer to [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245)
> - For stock market, refer to [TrdSecMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4905)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For the structure of the maximum tradable quantity, refer to [MaxTrdQtys](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8387)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetMaxTrdQtys(const Trd_GetMaxTrdQtys::Request &stReq);`

`virtual void OnReply_GetMaxTrdQtys(Futu::u32_t nSerialNo, const Trd_GetMaxTrdQtys::Response &stRsp) = 0;`

- **Description**

Query the maximum quantity that can be bought or sold under a specifictrading account, and you can also query the maximum changeable quantity of a specific order under a specifictrading account.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order type, refer to [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245)
> - For stock market, refer to [TrdSecMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4905)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For the structure of the maximum tradable quantity, refer to [MaxTrdQtys](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8387)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetMaxTrdQtys(req);`

- **Description**

Query the maximum quantity that can be bought or sold under a specifictrading account, and you can also query the maximum changeable quantity of a specific order under a specifictrading account.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order type, refer to [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245)
> - For stock market, refer to [TrdSecMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4905)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For the structure of the maximum tradable quantity, refer to [MaxTrdQtys](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8387)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds under a single account ID (acc\_id).

Tips

- The cash account does not support trading derivatives, so it is unsupported to query options through the cash account.

`acctradinginfo_query(order_type, code, price, order_id=None, adjust_limit=0, trd_env=TrdEnv.REAL, acc_id=0, acc_index=0, session=Session.NONE, jp_acc_type=SubAccType.JP_GENERAL, position_id=NONE)`

- **Description**

Query the maximum quantity that can be bought or sold under a specifictrading account, and you can also query the maximum changeable quantity of a specific order under a specifictrading account.

Cash account request options are not supported.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| order\_type | [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245) | Order type. |
| code | str | Security code. <br><br>If it is a future main code, it will be automatically converted to the corresponding actual contract code. |
| price | float | Quotation. <br><br>  - Accuracy to 3 decimal places for securities account, and the excess part will be discarded.<br>  - Accuracy to 9 decimal places for futures account, and the excess part will be discarded. |
| order\_id | str | Order ID. <br><br>  - The default is None, and the query is the maximum quantity that can be bought or sold of the new order. <br>  - If you want to modify order, the order number must be sent. At this time, when calculating, the maximum quantity that can be changed for this order will be returned. <br>  - If you use this parameter to query the maximum changeable quantity of an order, you need to call this interface more than 0.5 seconds after the order is placed. |
| adjust\_limit | float | Price adjustment range. <br><br>OpenD will automatically adjust the incoming price to the legal price.(Futures will ignore this parameter.)<br>  - A positive number represents an upward adjustment, and a negative number represents a downward adjustment. <br>  - For example: 0.015 means upward adjustment and the amplitude does not exceed 1.5%; -0.01 means downward adjustment and the amplitude does not exceed 1%. The default 0 means no adjustment. |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
| acc\_id | int | Trading account ID. <br><br>  - When acc\_id is 0, the account specified by acc\_index is chosen.<br>  - When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen.<br>  - Using acc\_id to query and trade is strongly recommended, acc\_index will change when adding/closing an account, result in the account you specify is inconsistent with the actual trading account. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |
| session | [Session](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8688) | US stocks Trading Session <br><br>Applied to US stocks, **RTH**, **ETH**, **OVERNIGHT**, **ALL** can be allowed. |
| jp\_acc\_type | [SubAccType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3947) | JP sub account type <br><br>Only applicable for Moomoo JP |
| position\_id | int | Position ID <br><br>  - Applicable for querying **Sell** and **Buyback** in Moomoo JP Derivative accounts.<br>  - It can be obtained by [Get Positions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-position-list.html) interface. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, account list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Account list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | max\_cash\_buy | float | Buy on cash. <br><br>    - Maximum quantity that can be bought in cash. <br>    - The unit of options is "contract".<br>    - Futures accounts are not applicable. |
    | max\_cash\_and\_margin\_buy | float | Buy on margin. <br><br>    - Maximum quantity that can be bought on margin. <br>    - The unit of options is "contract".<br>    - Futures accounts are not applicable. |
    | max\_position\_sell | float | Sell on position. <br><br>    - Maximum quantity can be sold. <br>    - The unit of options is "contract". |
    | max\_sell\_short | float | Short sell. <br><br>    - Maximum quantity can be shorted.<br>    - The unit of options is "contract".<br>    - Futures accounts are not applicable. |
    | max\_buy\_back | float | Short positions. <br><br>    - Buyback required quantity to close a position. When holding short positions, you must first buy back the short positions before you can continue to buy long.<br>    - The unit of options and futures is "contract". |
    | long\_required\_im | float | Initial margin change when buying one contract of an asset. <br><br>    - Currently only futures and options apply.<br>    - No position: Returns the initial margin needed to buy one contract (a positive value). <br>    - Long position: Returns the initial margin required to buy one contract (a positive value). <br>    - Short position: Returns the initial margin released for buying back one contract (a negative value). |
    | short\_required\_im | float | Initial margin change when selling one contract of an asset. <br><br>    - Currently only futures and options apply.<br>    - No position: Returns the initial margin needed to short one contract (a positive value). <br>    - Long position: Returns the initial margin released for selling one contract (a negative value). <br>    - Short position: Returns the initial margin needed to short one contract (a positive value). |
    | session | [Session](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8688) | Order session (Only applied to US stocks) |
- **Example**

```python
from moomoo import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUINC)
ret, data = trd_ctx.acctradinginfo_query(order_type=OrderType.NORMAL, code='US.AAPL', price=400)
if ret == RET_OK:
    print(data)
    print(data['max_cash_and_margin_buy'][0])  # Get maximum quantity that can be bought on margin
else:
    print('acctradinginfo_query error: ', data)
trd_ctx.close()  # Close the current connection

```

- **Output**

```python
    max_cash_buy  max_cash_and_margin_buy  max_position_sell  max_sell_short  max_buy_back long_required_im short_required_im   session
0           0.0                   1500.0                0.0             0.0           0.0              N/A               N/A           N/A
1500.0

```


## Trd\_GetMaxTrdQtys.proto


- **Description**

Query the maximum quantity that can be bought or sold under a specifictrading account, and you can also query the maximum changeable quantity of a specific order under a specifictrading account.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order type, refer to [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245)
> - For stock market, refer to [TrdSecMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4905)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For the structure of the maximum tradable quantity, refer to [MaxTrdQtys](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8387)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetMaxTrdQtys(TrdGetMaxTrdQtys.Request req);`

`virtual void OnReply_GetMaxTrdQtys(MMAPI_Conn client, uint nSerialNo, TrdGetMaxTrdQtys.Response rsp);`

- **Description**

Query the maximum quantity that can be bought or sold under a specifictrading account, and you can also query the maximum changeable quantity of a specific order under a specifictrading account.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order type, refer to [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245)
> - For stock market, refer to [TrdSecMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4905)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For the structure of the maximum tradable quantity, refer to [MaxTrdQtys](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8387)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getMaxTrdQtys(TrdGetMaxTrdQtys.Request req);`

`void onReply_GetMaxTrdQtys(MMAPI_Conn client, int nSerialNo, TrdGetMaxTrdQtys.Response rsp);`

- **Description**

Query the maximum quantity that can be bought or sold under a specifictrading account, and you can also query the maximum changeable quantity of a specific order under a specifictrading account.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order type, refer to [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245)
> - For stock market, refer to [TrdSecMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4905)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For the structure of the maximum tradable quantity, refer to [MaxTrdQtys](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8387)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetMaxTrdQtys(const Trd_GetMaxTrdQtys::Request &stReq);`

`virtual void OnReply_GetMaxTrdQtys(moomoo::u32_t nSerialNo, const Trd_GetMaxTrdQtys::Response &stRsp) = 0;`

- **Description**

Query the maximum quantity that can be bought or sold under a specifictrading account, and you can also query the maximum changeable quantity of a specific order under a specifictrading account.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order type, refer to [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245)
> - For stock market, refer to [TrdSecMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4905)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For the structure of the maximum tradable quantity, refer to [MaxTrdQtys](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8387)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetMaxTrdQtys(req);`

- **Description**

Query the maximum quantity that can be bought or sold under a specifictrading account, and you can also query the maximum changeable quantity of a specific order under a specifictrading account.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order type, refer to [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245)
> - For stock market, refer to [TrdSecMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4905)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For the structure of the maximum tradable quantity, refer to [MaxTrdQtys](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8387)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds under a single account ID (acc\_id).

Tips

- The cash account does not support trading derivatives, so it is unsupported to query options through the cash account.
- Maximum quantity that can be bought for futures should be calculated by yourself. The formula is floor(Max buying power/Initial margin change when buying one contract of an asset). Max buying power is from [Get Account Funds](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-funds.html).

←
[Get Account Funds](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-funds.html)[Get Positions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-position-list.html)
→

## Get Today's Deals

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-order-fill-list.html


`deal_list_query(code="", deal_market= TrdMarket.NONE, trd_env=TrdEnv.REAL, acc_id=0, acc_index=0, refresh_cache=False)`

- **Description**

Query today's deal list of a specific trading account.

This feature is only available for live trading and not for paper trading.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Security symbol. <br><br>Only return orders whose related security symbols correspond to these codes.<br>If this parameter is not passed, return all. |
| deal\_market | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Filter deals by security market. <br><br>  - Return today's deals for the specified market.<br>  - If this parameter is not passed or the default NONE is used, return today's deals for all markets. |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
| acc\_id | int | Trading account ID. <br><br>  - When acc\_id is 0, the account specified by acc\_index is chosen.<br>  - When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen.<br>  - Using acc\_id to query and trade is strongly recommended, acc\_index will change when adding/closing an account, result in the account you specify is inconsistent with the actual trading account. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |
| refresh\_cache | bool | Whether to refresh the cache. <br><br>  - True: Re-request data from the Futu server immediately, without using the OpenD cache. At this time, it will be restricted by the interface frequency limit.<br>  - False: Use OpenD's cache (the cache needs to be refreshed if it is not updated in rare circumstances). |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, transaction list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Transaction list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | trd\_side | [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832) | Trading direction. |
    | deal\_id | str | Deal number. |
    | order\_id | str | Order ID. |
    | code | str | Security code. |
    | stock\_name | str | Security name. |
    | deal\_market | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Deal market. |
    | qty | float | Quantity of shares bought/sold on this fill. <br><br>Option futures unit is "Contract". |
    | price | float | Fill price. <br><br>3 decimal place accuracy, excess part will be rounded. |
    | create\_time | str | Create time. <br><br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
    | counter\_broker\_id | int | Counter broker ID. <br><br>Only valid for HK stocks. |
    | counter\_broker\_name | str | Counter broker name. <br><br>Only valid for HK stocks. |
    | status | [DealStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4379) | Deal status. |
    | jp\_acc\_type | [SubAccType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3947) | JP sub account type <br><br>Only applicable for Moomoo JP |
- **Example**

```python
from futu import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.HK, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUSECURITIES)
ret, data = trd_ctx.deal_list_query()
if ret == RET_OK:
    print(data)
    if data.shape[0] > 0:  # If the order fill list is not empty
        print(data['order_id'][0])  # Get the first order ID of the transaction list
        print(data['order_id'].values.tolist())  # Convert to list
else:
    print('deal_list_query error: ', data)
trd_ctx.close()

```

- **Output**

```python
    code stock_name                        deal_market       deal_id             order_id    qty  price trd_side              create_time  counter_broker_id counter_broker_name status jp_acc_type
0  HK.00388      Hong Kong Exchanges and Clearing   HK  5056208452274069375  4665291631090960915  100.0  370.0      BUY  2020-09-17 21:15:59.979                  5                         OK        N/A
['4665291631090960915']

```


## Trd\_GetOrderFillList.proto


- **Description**

Query the transaction list of the specified trading account of the day.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetOrderFillList(TrdGetOrderFillList.Request req);`

`virtual void OnReply_GetOrderFillList(FTAPI_Conn client, uint nSerialNo, TrdGetOrderFillList.Response rsp);`

- **Description**

Query the transaction list of the specified trading account of the day.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getOrderFillList(TrdGetOrderFillList.Request req);`

`void onReply_GetOrderFillList(FTAPI_Conn client, int nSerialNo, TrdGetOrderFillList.Response rsp);`

- **Description**

Query the transaction list of the specified trading account of the day.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetOrderFillList(const Trd_GetOrderFillList::Request &stReq);`

`virtual void OnReply_GetOrderFillList(Futu::u32_t nSerialNo, const Trd_GetOrderFillList::Response &stRsp) = 0;`

- **Description**

Query the transaction list of the specified trading account of the day.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetOrderFillList(req);`

- **Description**

Query the transaction list of the specified trading account of the day.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds under a single account ID (acc\_id).
- It will be restricted by the frequency limit for this interface only when refresh\_cache is True

Tips

- Today's deals are arranged in chronological order: earlier deals return first, followed by later deals.

`deal_list_query(code="", deal_market= TrdMarket.NONE, trd_env=TrdEnv.REAL, acc_id=0, acc_index=0, refresh_cache=False)`

- **Description**

Query today's deal list of a specific trading account.

This feature is only available for live trading and not for paper trading.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Security symbol. <br><br>Only return orders whose related security symbols correspond to these codes.<br>If this parameter is not passed, return all. |
| deal\_market | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Filter deals by security market. <br><br>  - Return today's deals for the specified market.<br>  - If this parameter is not passed or the default NONE is used, return today's deals for all markets. |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
| acc\_id | int | Trading account ID. <br><br>  - When acc\_id is 0, the account specified by acc\_index is chosen.<br>  - When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen.<br>  - Using acc\_id to query and trade is strongly recommended, acc\_index will change when adding/closing an account, result in the account you specify is inconsistent with the actual trading account. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |
| refresh\_cache | bool | Whether to refresh the cache. <br><br>  - True: Re-request data from the moomoo server immediately, without using the OpenD cache. At this time, it will be restricted by the interface frequency limit.<br>  - False: Use OpenD's cache (the cache needs to be refreshed if it is not updated in rare circumstances). |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, transaction list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Transaction list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | trd\_side | [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832) | Trading direction. |
    | deal\_id | str | Deal number. |
    | order\_id | str | Order ID. |
    | code | str | Security code. |
    | stock\_name | str | Security name. |
    | deal\_market | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Deal market. |
    | qty | float | Quantity of shares bought/sold on this fill. <br><br>Option futures unit is "Contract". |
    | price | float | Fill price. <br><br>3 decimal place accuracy, excess part will be rounded. |
    | create\_time | str | Create time. <br><br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
    | counter\_broker\_id | int | Counter broker ID. <br><br>Only valid for HK stocks. |
    | counter\_broker\_name | str | Counter broker name. <br><br>Only valid for HK stocks. |
    | status | [DealStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4379) | Deal status. |
    | jp\_acc\_type | [SubAccType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3947) | JP sub account type <br><br>Only applicable for Moomoo JP |
- **Example**

```python
from moomoo import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUINC)
ret, data = trd_ctx.deal_list_query()
if ret == RET_OK:
    print(data)
    if data.shape[0] > 0:  # If the order fill list is not empty
        print(data['order_id'][0])  # Get the first order ID of the transaction list
        print(data['order_id'].values.tolist())  # Convert to list
else:
    print('deal_list_query error: ', data)
trd_ctx.close()

```

- **Output**

```python
    code stock_name                            deal_market     deal_id             order_id    qty  price trd_side              create_time  counter_broker_id counter_broker_name status jp_acc_type
0  US.AAPL       Apple Inc.                      HK  5056208452274069375  4665291631090960915  100.0  370.0      BUY  2020-09-17 21:15:59.979                  5                         OK        N/A
['4665291631090960915']

```


## Trd\_GetOrderFillList.proto


- **Description**

Query the transaction list of the specified trading account of the day.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetOrderFillList(TrdGetOrderFillList.Request req);`

`virtual void OnReply_GetOrderFillList(MMAPI_Conn client, uint nSerialNo, TrdGetOrderFillList.Response rsp);`

- **Description**

Query the transaction list of the specified trading account of the day.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getOrderFillList(TrdGetOrderFillList.Request req);`

`void onReply_GetOrderFillList(MMAPI_Conn client, int nSerialNo, TrdGetOrderFillList.Response rsp);`

- **Description**

Query the transaction list of the specified trading account of the day.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetOrderFillList(const Trd_GetOrderFillList::Request &stReq);`

`virtual void OnReply_GetOrderFillList(moomoo::u32_t nSerialNo, const Trd_GetOrderFillList::Response &stRsp) = 0;`

- **Description**

Query the transaction list of the specified trading account of the day.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetOrderFillList(req);`

- **Description**

Query the transaction list of the specified trading account of the day.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds under a single account ID (acc\_id).
- It will be restricted by the frequency limit for this interface only when refresh\_cache is True

Tips

- Today's deals are arranged in chronological order: earlier deals return first, followed by later deals.

←
[Subscribe to Transaction Push](https://openapi.moomoo.com/moomoo-api-doc/en/trade/sub-acc-push.html)[Get Historical Deals](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-history-order-fill-list.html)
→

## Get open Orders

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-order-list.html


`order_list_query(order_id="", order_market=TrdMarket.NONE, status_filter_list=[], code='', start='', end='', trd_env=TrdEnv.REAL, acc_id=0, acc_index=0, refresh_cache=False)`

- **Description**

Query the open order list of the specified trading account

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| order\_id | str | Order id. <br><br>If specified, only return data for the specified order.<br>No filtering by default, return all. |
| order\_market | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Filter orders by security market.<br><br>  - Return open orders for the specified market.<br>  - If this parameter is not passed or the default NONE is used, return open orders for all markets. |
| status\_filter\_list | list | Order status filter conditions. <br><br>Only return data for the specified order.<br>No filtering by default, return all.<br>Data type of elements in the list is [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074). |
| code | str | Security symbol. <br><br>Only return orders whose related security symbols correspond to these codes. <br>If this parameter is not passed, return all. |
| start | str | Start time. <br><br>In strict accordance with YYYY-MM-DD HH:MM:SS or YYYY-MM-DD HH:MM:SS.MS format.<br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
| end | str | End time. <br><br>In strict accordance with YYYY-MM-DD HH:MM:SS or YYYY-MM-DD HH:MM:SS.MS format.<br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
| acc\_id | int | Trading account ID. <br><br>  - When acc\_id is 0, the account specified by acc\_index is chosen.<br>  - When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen.<br>  - Using acc\_id to query and trade is strongly recommended, acc\_index will change when adding/closing an account, result in the account you specify is inconsistent with the actual trading account. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |
| refresh\_cache | bool | Whether to refresh the cache. <br><br>  - True: Re-request data from the Futu server immediately, without using the OpenD cache. At this time, it will be restricted by the interface frequency limit.<br>  - False: Use OpenD's cache (The cache needs to be refreshed if it is not updated in rare circumstances.) |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, order list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Order list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | trd\_side | [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832) | Trading direction. |
    | order\_type | [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245) | Order type. |
    | order\_status | [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074) | Order status. |
    | order\_id | str | Order ID. |
    | code | str | Security code. |
    | stock\_name | str | Security name. |
    | order\_market | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Order market. |
    | qty | float | Order quantity. <br><br>Option futures unit is "Contract" |
    | price | float | Order price. <br><br>3 decimal place accuracy, excess part will be rounded. |
    | currency | [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655) | Transaction currency. |
    | create\_time | str | Create time. <br><br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
    | updated\_time | str | Last update time. <br><br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149).<br>The unit of option futures is "Contract" |
    | dealt\_qty | float | Deal quantity <br><br>Option futures unit is "Contract" |
    | dealt\_avg\_price | float | Average deal price. <br><br>No precision limit |
    | last\_err\_msg | str | The last error description. <br><br>If there is an error, the cause of the last error will be returned.<br>If there is no error, an empty string will be returned. |
    | remark | str | Identification of remarks when placing an order. <br><br>Refer to remark in the [place\_order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/place-order.html) interface parameters for details. |
    | time\_in\_force | [TimeInForce](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7678) | Valid period. |
    | fill\_outside\_rth | bool | Whether pre-market and after-hours are needed. <br><br>For HK pre-opening market and US pre/post-market.<br>True: need.<br>False: not need. |
    | session | [Session](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8688) | Order session (Only applied to US stocks) |
    | aux\_price | float | Traget price. |
    | trail\_type | [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12) | Trailing type. |
    | trail\_value | float | Trailing amount/ratio. |
    | trail\_spread | float | Specify spread. |
    | jp\_acc\_type | [SubAccType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3947) | JP sub account type <br><br>Only applicable for Moomoo JP |
- **Example**

```python
from futu import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.HK, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUSECURITIES)
ret, data = trd_ctx.order_list_query()
if ret == RET_OK:
    print(data)
    if data.shape[0] > 0:  # If the order list is not empty
        print(data['order_id'][0])  # Get the first order ID of the order list today
        print(data['order_id'].values.tolist())  # Convert to list
else:
    print('order_list_query error: ', data)
trd_ctx.close()

```

- **Output**

```python
        code stock_name   order_market   trd_side           order_type   order_status             order_id    qty  price              create_time             updated_time  dealt_qty  dealt_avg_price last_err_msg      remark time_in_force fill_outside_rth session aux_price trail_type trail_value trail_spread currency jp_acc_type
0   HK.00700                     HK         BUY           NORMAL  CANCELLED_ALL  6644468615272262086  100.0  520.0  2021-09-06 10:17:52.465  2021-09-07 16:10:22.806        0.0              0.0               asdfg+=@@@           GTC      N/A         N/A       560        N/A         N/A          N/A      HKD        N/A
['6644468615272262086']

```


## Trd\_GetOrderList.proto


- **Description**

Query the open order list of the specified trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order status enumeration, refer to [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer to [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetOrderList(TrdGetOrderList.Request req);`

`virtual void OnReply_GetOrderList(FTAPI_Conn client, uint nSerialNo, TrdGetOrderList.Response rsp);`

- **Description**

Query the open order list of the specified trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order status enumeration, refer to [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer to [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getOrderList(TrdGetOrderList.Request req);`

`void onReply_GetOrderList(FTAPI_Conn client, int nSerialNo, TrdGetOrderList.Response rsp);`

- **Description**

Query the open order list of the specified trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order status enumeration, refer to [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer to [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetOrderList(const Trd_GetOrderList::Request &stReq);`

`virtual void OnReply_GetOrderList(Futu::u32_t nSerialNo, const Trd_GetOrderList::Response &stRsp) = 0;`

- **Description**

Query the open order list of the specified trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order status enumeration, refer to [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer to [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetOrderList(req);`

- **Description**

Query the open order list of the specified trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order status enumeration, refer to [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer to [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds under a single account ID (acc\_id).
- It will be restricted by the frequency limit for this interface only when the cache is refreshed

Tips

- Open orders are arranged in chronological order: earlier orders return first, followed by later orders.

`order_list_query(order_id="", order_market=TrdMarket.NONE, status_filter_list=[], code='', start='', end='', trd_env=TrdEnv.REAL, acc_id=0, acc_index=0, refresh_cache=False)`

- **Description**

Query the open order list of the specified trading account

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| order\_id | str | Order id. <br><br>If specified, only return data for the specified order.<br>No filtering by default, return all. |
| order\_market | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Filter orders by security market.<br><br>  - Return open orders for the specified market.<br>  - If this parameter is not passed or the default NONE is used, return open orders for all markets. |
| status\_filter\_list | list | Order status filter conditions. <br><br>Only return data for the specified order.<br>No filtering by default, return all.<br>Data type of elements in the list is [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074). |
| code | str | Security symbol. <br><br>Only return orders whose related security symbols correspond to these codes. <br>If this parameter is not passed, return all. |
| start | str | Start time. <br><br>In strict accordance with YYYY-MM-DD HH:MM:SS or YYYY-MM-DD HH:MM:SS.MS format.<br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
| end | str | End time. <br><br>In strict accordance with YYYY-MM-DD HH:MM:SS or YYYY-MM-DD HH:MM:SS.MS format.<br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
| acc\_id | int | Trading account ID. <br><br>  - When acc\_id is 0, the account specified by acc\_index is chosen.<br>  - When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen.<br>  - Using acc\_id to query and trade is strongly recommended, acc\_index will change when adding/closing an account, result in the account you specify is inconsistent with the actual trading account. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |
| refresh\_cache | bool | Whether to refresh the cache. <br><br>  - True: Re-request data from the Futu server immediately, without using the OpenD cache. At this time, it will be restricted by the interface frequency limit.<br>  - False: Use OpenD's cache (The cache needs to be refreshed if it is not updated in rare circumstances.) |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, order list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Order list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | trd\_side | [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832) | Trading direction. |
    | order\_type | [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245) | Order type. |
    | order\_status | [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074) | Order status. |
    | order\_id | str | Order ID. |
    | code | str | Security code. |
    | stock\_name | str | Security name. |
    | order\_market | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Order market. |
    | qty | float | Order quantity. <br><br>Option futures unit is "Contract" |
    | price | float | Order price. <br><br>3 decimal place accuracy, excess part will be rounded. |
    | currency | [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655) | Transaction currency. |
    | create\_time | str | Create time. <br><br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
    | updated\_time | str | Last update time. <br><br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149).<br>The unit of option futures is "Contract" |
    | dealt\_qty | float | Deal quantity <br><br>Option futures unit is "Contract" |
    | dealt\_avg\_price | float | Average deal price. <br><br>No precision limit |
    | last\_err\_msg | str | The last error description. <br><br>If there is an error, the cause of the last error will be returned.<br>If there is no error, an empty string will be returned. |
    | remark | str | Identification of remarks when placing an order. <br><br>Refer to remark in the [place\_order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/place-order.html) interface parameters for details. |
    | time\_in\_force | [TimeInForce](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7678) | Valid period. |
    | fill\_outside\_rth | bool | Whether pre-market and after-hours are needed. <br><br>For HK pre-opening market and US pre/post-market.<br>True: need.<br>False: not need. |
    | session | [Session](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8688) | Order session (Only applied to US stocks) |
    | aux\_price | float | Traget price. |
    | trail\_type | [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12) | Trailing type. |
    | trail\_value | float | Trailing amount/ratio. |
    | trail\_spread | float | Specify spread. |
    | jp\_acc\_type | [SubAccType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3947) | JP sub account type <br><br>Only applicable for Moomoo JP |
- **Example**

```python
from moomoo import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUINC)
ret, data = trd_ctx.order_list_query()
if ret == RET_OK:
    print(data)
    if data.shape[0] > 0:  # If the order list is not empty
        print(data['order_id'][0])  # Get the first order ID of the order list today
        print(data['order_id'].values.tolist())  # Convert to list
else:
    print('order_list_query error: ', data)
trd_ctx.close()

```

- **Output**

```python
        code stock_name order_market    trd_side           order_type   order_status             order_id    qty  price              create_time             updated_time  dealt_qty  dealt_avg_price last_err_msg      remark time_in_force fill_outside_rth session aux_price trail_type trail_value trail_spread currency jp_acc_type
0   US.AAPL                    US         BUY           NORMAL  CANCELLED_ALL  6644468615272262086  100.0  520.0  2021-09-06 10:17:52.465  2021-09-07 16:10:22.806        0.0              0.0               asdfg+=@@@           GTC        N/A      N/A       560        N/A         N/A          N/A      USD        N/A
['6644468615272262086']

```


## Trd\_GetOrderList.proto


- **Description**

Query the open order list of the specified trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order status enumeration, refer to [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer to [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetOrderList(TrdGetOrderList.Request req);`

`virtual void OnReply_GetOrderList(MMAPI_Conn client, uint nSerialNo, TrdGetOrderList.Response rsp);`

- **Description**

Query the open order list of the specified trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order status enumeration, refer to [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer to [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getOrderList(TrdGetOrderList.Request req);`

`void onReply_GetOrderList(MMAPI_Conn client, int nSerialNo, TrdGetOrderList.Response rsp);`

- **Description**

Query the open order list of the specified trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order status enumeration, refer to [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer to [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetOrderList(const Trd_GetOrderList::Request &stReq);`

`virtual void OnReply_GetOrderList(moomoo::u32_t nSerialNo, const Trd_GetOrderList::Response &stRsp) = 0;`

- **Description**

Query the open order list of the specified trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order status enumeration, refer to [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer to [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetOrderList(req);`

- **Description**

Query the open order list of the specified trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order status enumeration, refer to [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer to [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds under a single account ID (acc\_id).
- It will be restricted by the frequency limit for this interface only when the cache is refreshed

Tips

- Open orders are arranged in chronological order: earlier orders return first, followed by later orders.

←
[Modify or Cancel Orders](https://openapi.moomoo.com/moomoo-api-doc/en/trade/modify-order.html)[Get Historical Orders](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-history-order-list.html)
→

## Get Positions

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-position-list.html


`position_list_query(code='', position_market=TrdMarket.NONE, pl_ratio_min=None, pl_ratio_max=None, trd_env=TrdEnv.REAL, acc_id=0, acc_index=0, refresh_cache=False, asset_category=AssetCategory.NONE)`

- **Description**

Query the holding position list of a specific trading account

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Security symbol. <br><br>  - Only return orders whose related security symbols correspond to these codes. If this parameter is not passed, return all. <br>  - Note: For the code filtering of futures positions, you need to pass the contract code with a specific month, and it cannot be filtered by the future main contract code. |
| position\_market | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Filter positions by market.<br><br>  - Return positions for the specified market.<br>  - If this parameter is not passed, return positions for all markets. |
| pl\_ratio\_min | float | The lower limit of the current gain or loss ratio filter. <br><br>The securities account uses profit ratio on the diluted cost price, while the futures account uses the profit rate on the average cost price.<br>For example: when 10 is passed, the positions with gain or loss ratio greater than +10% will be returned. |
| pl\_ratio\_max | float | The upper limit of the current gain or loss ratio filter. <br><br>The securities account uses profit ratio on the diluted cost price, while the futures account uses the profit rate on the average cost price.<br>For example: when 10 is passed, the positions with gain or loss ratio less than +10% will be returned. |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
| acc\_id | int | Trading account ID. <br><br>  - When acc\_id is 0, the account specified by acc\_index is chosen.<br>  - When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen.<br>  - Using acc\_id to query and trade is strongly recommended, acc\_index will change when adding/closing an account, result in the account you specify is inconsistent with the actual trading account. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |
| refresh\_cache | bool | Whether to refresh the cache. <br><br>  - True: Re-request data from the Futu server immediately, without using the OpenD cache. At this time, it will be restricted by the interface frequency limit. <br>  - False: Use OpenD's cache (The cache needs to be refreshed if it is not updated in rare circumstances. |
| asset\_category | [AssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313) | Asset category <br><br>Only applicable for Moomoo JP |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, list of positions is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - List of positions format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | position\_side | [PositionSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7930) | Position direction. |
    | code | str | Security code. |
    | stock\_name | str | Security name. |
    | position\_market | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Position market. |
    | qty | float | The number of holdings. <br><br>The unit of options and futures is "contract". |
    | can\_sell\_qty | float | Available quantity. <br><br>Available quantity = Holding quantity - Frozen quantity<br>The unit of options and futures is "contract". |
    | currency | [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655) | Transaction currency. |
    | nominal\_price | float | Market price. <br><br>3 decimal place accuracy, excess part will be rounded. |
    | cost\_price | float | Diluted Cost (for securities account). Average Cost (for futures account).<br><br>It is recommended to use the fields of average\_cost and diluted\_cost to obtain the cost price |
    | cost\_price\_valid | bool | Whether the cost price is valid. <br><br>True: valid.<br>False: invalid. |
    | average\_cost | float | Average cost price <br><br>Not valid for securities paper trading accounts<br>Minimum version requirement: 9.2.5208 |
    | diluted\_cost | float | Diluted cost price <br><br>Not valid for futures trading accounts<br>Minimum version requirement: 9.2.5208 |
    | market\_val | float | Market value. <br><br>3 decimal places accuracy(2 decimal places for A-shares, and 0 decimal place for futures). |
    | pl\_ratio | float | Proportion of gain or loss(under diluted cost price) <br><br>This field is in percentage form, so 20 is equavalent to 20%.<br>Not applicable to futures. |
    | pl\_ratio\_valid | bool | Whether the gain or loss ratio is valid. <br><br>True: valid.<br>False: invalid. |
    | pl\_ratio\_avg\_cost | float | Proportion of gain or loss(under average cost price) <br><br>This field is in percentage form, so 20 is equavalent to 20%.<br>Not applicable to futures. |
    | pl\_val | float | Gain or loss. <br><br>3 decimal places accuracy(2 decimal places for A-shares). |
    | pl\_val\_valid | bool | Whether the gain or loss is valid. <br><br>True: valid.<br>False: invalid. |
    | today\_pl\_val | float | Gain or loss today. <br><br>3 decimal places accuracy(2 decimal places for A-shares). |
    | today\_trd\_val | float | Transaction amount today. <br><br>Only valid in the real trading environment.<br>3 decimal places accuracy(2 decimal places for A-shares). <br>Not applicable to futures. |
    | today\_buy\_qty | float | Total volume purchased today. <br><br>Only valid in the real trading environment.<br>3 decimal places accuracy(2 decimal places for A-shares).<br>Not applicable to futures. |
    | today\_buy\_val | float | Total amount purchased today. <br><br>Only valid in the real trading environment.<br>3 decimal places accuracy(2 decimal places for A-shares).<br>Not applicable to futures. |
    | today\_sell\_qty | float | Total volume sold today. <br><br>Only valid in the real trading environment.<br>3 decimal places accuracy(2 decimal places for A-shares).<br>Not applicable to futures. |
    | today\_sell\_val | float | Total amount sold today. <br><br>Only valid in the real trading environment.<br>3 decimal places accuracy(2 decimal places for A-shares).<br>Not applicable to futures. |
    | unrealized\_pl | float | Unrealized gain or loss. <br><br>Not valid for securities paper trading accounts<br>It is the unrealized profit and loss under the average cost price, for universal securities accounts |
    | realized\_pl | float | Realized gain or loss. <br><br>Not valid for securities paper trading accounts<br>It is the realized profit and loss under the average cost price, for universal securities accounts |
    | position\_id | int | Position ID |
- **Example**

```python
from futu import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.HK, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUSECURITIES)
ret, data = trd_ctx.position_list_query()
if ret == RET_OK:
    print(data)
    if data.shape[0] > 0:  # If the position list is not empty
        print(data['stock_name'][0])  # Get the first stock name of the holding position
        print(data['stock_name'].values.tolist())  # Convert to list
else:
    print('position_list_query error: ', data)
trd_ctx.close()  # Close the current connection

```

- **Output**

```python
       code stock_name position_market    qty  can_sell_qty  cost_price  cost_price_valid average_cost  diluted_cost  market_val  nominal_price  pl_ratio  pl_ratio_valid pl_ratio_avg_cost  pl_val  pl_val_valid today_buy_qty today_buy_val today_pl_val today_trd_val today_sell_qty today_sell_val position_side unrealized_pl realized_pl currency asset_category position_id
0  HK.01810   XIAOMI-W              HK  400.0         400.0      53.975              True          53.975        53.975     19760.0           49.4 -8.476146            True            -8.476146    -1830.0          True           0.0           0.0          0.0           0.0            0.0            0.0          LONG           0.0         0.0      HKD      N/A      6596101776329286054
XIAOMI-W
['XIAOMI-W']

```


## Trd\_GetPositionList.proto


- **Description**

Query the holding position list of a specific trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)
> - Asset category, refer to [TrdAssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For position structure, refer to [Position](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#5027)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetPositionList(TrdGetPositionList.Request req);`

`virtual void OnReply_GetPositionList(FTAPI_Conn client, uint nSerialNo, TrdGetPositionList.Response rsp);`

- **Description**

Query the holding position list of a specific trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)
> - Asset category, refer to [TrdAssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For position structure, refer to [Position](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#5027)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getPositionList(TrdGetPositionList.Request req);`

`void onReply_GetPositionList(FTAPI_Conn client, int nSerialNo, TrdGetPositionList.Response rsp);`

- **Description**

Query the holding position list of a specific trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)
> - Asset category, refer to [TrdAssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For position structure, refer to [Position](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#5027)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetPositionList(const Trd_GetPositionList::Request &stReq);`

`virtual void OnReply_GetPositionList(Futu::u32_t nSerialNo, const Trd_GetPositionList::Response &stRsp) = 0;`

- **Description**

Query the holding position list of a specific trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)
> - Asset category, refer to [TrdAssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For position structure, refer to [Position](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#5027)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetPositionList(req);`

- **Description**

Query the holding position list of a specific trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)
> - Asset category, refer to [TrdAssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For position structure, refer to [Position](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#5027)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds under a single account ID (acc\_id).
- Call this interface, only when the cache is refreshed, will it be restricted by the frequency limit

`position_list_query(code='', position_market=TrdMarket.NONE, pl_ratio_min=None, pl_ratio_max=None, trd_env=TrdEnv.REAL, acc_id=0, acc_index=0, refresh_cache=False, asset_category=AssetCategory.NONE)`

- **Description**

Query the holding position list of a specific trading account

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Security symbol. <br><br>  - Only return orders whose related security symbols correspond to these codes. If this parameter is not passed, return all. <br>  - Note: For the code filtering of futures positions, you need to pass the contract code with a specific month, and it cannot be filtered by the future main contract code. |
| position\_market | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Filter positions by market.<br><br>  - Return positions for the specified market.<br>  - If this parameter is not passed, return positions for all markets. |
| pl\_ratio\_min | float | The lower limit of the current gain or loss ratio filter. <br><br>The securities account uses profit ratio on the diluted cost price, while the futures account uses the profit rate on the average cost price.<br>For example: when 10 is passed, the positions with gain or loss ratio greater than +10% will be returned. |
| pl\_ratio\_max | float | The upper limit of the current gain or loss ratio filter. <br><br>The securities account uses profit ratio on the diluted cost price, while the futures account uses the profit rate on the average cost price.<br>For example: when 10 is passed, the positions with gain or loss ratio less than +10% will be returned. |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
| acc\_id | int | Trading account ID. <br><br>  - When acc\_id is 0, the account specified by acc\_index is chosen.<br>  - When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen.<br>  - Using acc\_id to query and trade is strongly recommended, acc\_index will change when adding/closing an account, result in the account you specify is inconsistent with the actual trading account. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |
| refresh\_cache | bool | Whether to refresh the cache. <br><br>  - True: Re-request data from the Futu server immediately, without using the OpenD cache. At this time, it will be restricted by the interface frequency limit. <br>  - False: Use OpenD's cache (The cache needs to be refreshed if it is not updated in rare circumstances. |
| asset\_category | [AssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313) | Asset category <br><br>Only applicable for Moomoo JP |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, list of positions is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - List of positions format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | position\_side | [PositionSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7930) | Position direction. |
    | code | str | Security code. |
    | stock\_name | str | Security name. |
    | position\_market | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Position market. |
    | qty | float | The number of holdings. <br><br>The unit of options and futures is "contract". |
    | can\_sell\_qty | float | Available quantity. <br><br>Available quantity = Holding quantity - Frozen quantity<br>The unit of options and futures is "contract". |
    | currency | [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655) | Transaction currency. |
    | nominal\_price | float | Market price. <br><br>3 decimal place accuracy, excess part will be rounded. |
    | cost\_price | float | Diluted Cost (for securities account). Average Cost (for futures account).<br><br>It is recommended to use the fields of average\_cost and diluted\_cost to obtain the cost price |
    | cost\_price\_valid | bool | Whether the cost price is valid. <br><br>True: valid.<br>False: invalid. |
    | average\_cost | float | Average cost price <br><br>Not valid for securities paper trading accounts<br>Minimum version requirement: 9.2.5208 |
    | diluted\_cost | float | Diluted cost price <br><br>Not valid for futures trading accounts<br>Minimum version requirement: 9.2.5208 |
    | market\_val | float | Market value. <br><br>3 decimal places accuracy(2 decimal places for A-shares, and 0 decimal place for futures). |
    | pl\_ratio | float | Proportion of gain or loss(under diluted cost price) <br><br>This field is in percentage form, so 20 is equavalent to 20%.<br>Not applicable to futures. |
    | pl\_ratio\_valid | bool | Whether the gain or loss ratio is valid. <br><br>True: valid.<br>False: invalid. |
    | pl\_ratio\_avg\_cost | float | Proportion of gain or loss(under average cost price) <br><br>This field is in percentage form, so 20 is equavalent to 20%.<br>Not applicable to futures. |
    | pl\_val | float | Gain or loss. <br><br>3 decimal places accuracy(2 decimal places for A-shares). |
    | pl\_val\_valid | bool | Whether the gain or loss is valid. <br><br>True: valid.<br>False: invalid. |
    | today\_pl\_val | float | Gain or loss today. <br><br>3 decimal places accuracy(2 decimal places for A-shares). |
    | today\_trd\_val | float | Transaction amount today. <br><br>Only valid in the real trading environment.<br>3 decimal places accuracy(2 decimal places for A-shares). <br>Not applicable to futures. |
    | today\_buy\_qty | float | Total volume purchased today. <br><br>Only valid in the real trading environment.<br>3 decimal places accuracy(2 decimal places for A-shares).<br>Not applicable to futures. |
    | today\_buy\_val | float | Total amount purchased today. <br><br>Only valid in the real trading environment.<br>3 decimal places accuracy(2 decimal places for A-shares).<br>Not applicable to futures. |
    | today\_sell\_qty | float | Total volume sold today. <br><br>Only valid in the real trading environment.<br>3 decimal places accuracy(2 decimal places for A-shares).<br>Not applicable to futures. |
    | today\_sell\_val | float | Total amount sold today. <br><br>Only valid in the real trading environment.<br>3 decimal places accuracy(2 decimal places for A-shares).<br>Not applicable to futures. |
    | unrealized\_pl | float | Unrealized gain or loss. <br><br>Not valid for securities paper trading accounts<br>It is the unrealized profit and loss under the average cost price, for universal securities accounts |
    | realized\_pl | float | Realized gain or loss. <br><br>Not valid for securities paper trading accounts<br>It is the realized profit and loss under the average cost price, for universal securities accounts |
    | position\_id | int | Position ID |
- **Example**

```python
from futu import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUINC)
ret, data = trd_ctx.position_list_query()
if ret == RET_OK:
    print(data)
    if data.shape[0] > 0:  # If the position list is not empty
        print(data['stock_name'][0])  # Get the first stock name of the holding position
        print(data['stock_name'].values.tolist())  # Convert to list
else:
    print('position_list_query error: ', data)
trd_ctx.close()  # Close the current connection

```

- **Output**

```python
       code stock_name position_market    qty  can_sell_qty  cost_price  cost_price_valid average_cost  diluted_cost  market_val  nominal_price  pl_ratio  pl_ratio_valid pl_ratio_avg_cost  pl_val  pl_val_valid today_buy_qty today_buy_val today_pl_val today_trd_val today_sell_qty today_sell_val position_side unrealized_pl realized_pl currency asset_category position_id
0  US.AAPL   Apple Inc.              US  400.0         400.0      53.975              True          53.975        53.975     19760.0           49.4 -8.476146            True            -8.476146    -1830.0          True           0.0           0.0          0.0           0.0            0.0            0.0          LONG           0.0         0.0      USD      N/A      6596101776329286054
Apple Inc.
['Apple Inc.']

```


## Trd\_GetPositionList.proto


- **Description**

Query the holding position list of a specific trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)
> - Asset category, refer to [TrdAssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For position structure, refer to [Position](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#5027)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetPositionList(TrdGetPositionList.Request req);`

`virtual void OnReply_GetPositionList(FTAPI_Conn client, uint nSerialNo, TrdGetPositionList.Response rsp);`

- **Description**

Query the holding position list of a specific trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)
> - Asset category, refer to [TrdAssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For position structure, refer to [Position](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#5027)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getPositionList(TrdGetPositionList.Request req);`

`void onReply_GetPositionList(FTAPI_Conn client, int nSerialNo, TrdGetPositionList.Response rsp);`

- **Description**

Query the holding position list of a specific trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)
> - Asset category, refer to [TrdAssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For position structure, refer to [Position](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#5027)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetPositionList(const Trd_GetPositionList::Request &stReq);`

`virtual void OnReply_GetPositionList(Futu::u32_t nSerialNo, const Trd_GetPositionList::Response &stRsp) = 0;`

- **Description**

Query the holding position list of a specific trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)
> - Asset category, refer to [TrdAssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For position structure, refer to [Position](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#5027)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetPositionList(req);`

- **Description**

Query the holding position list of a specific trading account

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For filter condition structure, refer to [TrdFilterConditions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9070)
> - Asset category, refer to [TrdAssetCategory](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#2313)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For position structure, refer to [Position](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#5027)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds under a single account ID (acc\_id).
- Call this interface, only when the cache is refreshed, will it be restricted by the frequency limit

←
[Query the Maximum Quantity that Can be Bought or Sold](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-max-trd-qtys.html)[Get Margin Data](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-margin-ratio.html)
→

## Modify or Cancel Orders

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/trade/modify-order.html


`modify_order(modify_order_op, order_id, qty, price, adjust_limit=0, trd_env=TrdEnv.REAL, acc_id=0, acc_index=0, aux_price=None, trail_type=None, trail_value=None, trail_spread=None)`

- **Description**

Modify the price and quantity of orders, cancel orders, delete orders, enable or disable orders, etc.

For HKCC market, it is invalid to change orders, except that cancelling orders is supported.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| modify\_order\_op | [ModifyOrderOp](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3811) | Modify order operation type. |
| order\_id | str | Order ID. |
| qty | float | The quantity after the order is changed. <br><br>The unit of options and futures is "contract". <br>0 decimal place accuracy, the excess part is discarded. |
| price | float | The price after the order is changed. <br><br>Accuracy to 3 decimal places for securities account, and the excess part will be discarded.<br>Accuracy to 9 decimal places for futures account, and the excess part will be discarded. |
| adjust\_limit | float | Price adjustment range. <br><br>OpenD will automatically adjust the incoming price to the legal price.(This parameter will be ignored by future contracts.) <br>  - Positive numbers represent upward adjustments, and negative numbers represent downward adjustments. <br>  - For example: 0.015 means upward adjustment and the amplitude does not exceed 1.5%; -0.01 means downward adjustment and the amplitude does not exceed 1%. The default 0 means no adjustment. |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
| acc\_id | int | Trading account ID. <br><br>  - When acc\_id is 0, the account specified by acc\_index is chosen.<br>  - When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen.<br>  - Using acc\_id to query and trade is strongly recommended, acc\_index will change when adding/closing an account, result in the account you specify is inconsistent with the actual trading account. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |
| aux\_price | float | Trigger price. <br><br>  - If order type is **Stop**, **Stop Limit**, **Market if Touched**, or **Limit if Touched**, aux\_price must be set.<br>  - The price will be rounded to 3 decimals for securities account, and 9 decimals for futures account. |
| trail\_type | [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12) | Trailing type. <br><br>If order type is **Trailing Stop**, or **Trailing Stop Limit**, trail\_type must be set. |
| trail\_value | float | Trailing amount/ratio. <br><br>  - If order type is **Trailing Stop**, or **Trailing Stop Limit**, trail\_value must be set.<br>  - If the trail type is PERCENTAGE, this field is in percentage form, so 20 is equivalent to 20%. <br>  - If the trail type is PRICE, this value will be rounded to 3 decimals for securities account, and 9 decimals for futures account.<br>  - If the trail type is PRICE, this value will be rounded to 2 decimals. |
| trail\_spread | float | Specify spread. <br><br>  - If order type is **Trailing Stop Limit**, trail\_spread must be set.<br>  - The price will be rounded to 3 decimals for securities account, and 9 decimals for futures account. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, modification information is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Modification information format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
    | order\_id | str | Order ID. |
- **Example**

```python
from futu import *
pwd_unlock = '123456'
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.HK, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUSECURITIES)
ret, data = trd_ctx.unlock_trade(pwd_unlock)  # If you use a live trading account to modify or cancel an order, you need to unlock the account first. The example here is to cancel an order on a paper trading account, and unlocking is not necessary.
if ret == RET_OK:
    order_id = "8851102695472794941"
    ret, data = trd_ctx.modify_order(ModifyOrderOp.CANCEL, order_id, 0, 0)
    if ret == RET_OK:
        print(data)
        print(data['order_id'][0])  # Get the order ID of the modified order
        print(data['order_id'].values.tolist())  # Convert to list
    else:
        print('modify_order error: ', data)
else:
    print('unlock_trade failed: ', data)
trd_ctx.close()

```

- **Output**

```python
    trd_env             order_id
0    REAL      8851102695472794941
['8851102695472794941']

```

`cancel_all_order(trd_env=TrdEnv.REAL, acc_id=0, acc_index=0, trdmarket=TrdMarket.NONE)`

- **Description**

Cancel all orders. Paper trading and HKCC trading accounts do not support all cancellations.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
| acc\_id | int | Trading account ID. <br><br>When acc\_id is 0, the account specified by acc\_index is chosen.<br>When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |
| trdmarket | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Transaction market selection. <br><br>Cancel orders in specified markets the given account.<br>In the default state, cancel orders in all markets for the given account. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | int | Returned value. On success, ret == RET\_OK. On error, ret != RET\_OK. |
| data | str | If ret == RET\_OK, modification information is returned. |
| If ret != RET\_OK, error description is returned. |

  - Modification information format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment |
    | order\_id | str | Order number |
- **Example**

```python
from futu import *
pwd_unlock = '123456'
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.HK, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUSECURITIES)
ret, data = trd_ctx.unlock_trade(pwd_unlock)  # If you use a live trading account to modify or cancel an order, you need to unlock the account first. The example here is to cancel all orders on a paper trading account, and unlocking is not necessary.
if ret == RET_OK:
    ret, data = trd_ctx.cancel_all_order()
    if ret == RET_OK:
        print(data)
    else:
        print('cancel_all_order error: ', data)
else:
    print('unlock_trade failed: ', data)
trd_ctx.close()

```

- **Output**

```python
success

```


## Trd\_ModifyOrder.proto


- **Description**

Modify the price and quantity of orders, cancel orders, delete orders, enable or disable orders, etc.

For HKCC market, it is invalid to change orders, except that cancelling orders is supported.

- **Parameters**

> - For request packet identification structure, refer to [PacketID](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#1903)
> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For the enumeration of modification operations, refer to [ModifyOrderOp](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3811)
> - For trail type, refer to [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint ModifyOrder(TrdModifyOrder.Request req);`

`virtual void OnReply_ModifyOrder(FTAPI_Conn client, uint nSerialNo, TrdModifyOrder.Response rsp);`

- **Description**

Modify the price and quantity of orders, cancel orders, delete orders, enable or disable orders, etc.

For HKCC market, it is invalid to change orders, except that cancelling orders is supported.

- **Parameters**

> - For request packet identification structure, refer to [PacketID](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#1903)
> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For the enumeration of modification operations, refer to [ModifyOrderOp](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3811)
> - For trail type, refer to [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int modifyOrder(TrdModifyOrder.Request req);`

`void onReply_ModifyOrder(FTAPI_Conn client, int nSerialNo, TrdModifyOrder.Response rsp);`

- **Description**

Modify the price and quantity of orders, cancel orders, delete orders, enable or disable orders, etc.

For HKCC market, it is invalid to change orders, except that cancelling orders is supported.

- **Parameters**

> - For request packet identification structure, refer to [PacketID](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#1903)
> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For the enumeration of modification operations, refer to [ModifyOrderOp](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3811)
> - For trail type, refer to [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t ModifyOrder(const Trd_ModifyOrder::Request &stReq);`

`virtual void OnReply_ModifyOrder(Futu::u32_t nSerialNo, const Trd_ModifyOrder::Response &stRsp) = 0;`

- **Description**

Modify the price and quantity of orders, cancel orders, delete orders, enable or disable orders, etc.

For HKCC market, it is invalid to change orders, except that cancelling orders is supported.

- **Parameters**

> - For request packet identification structure, refer to [PacketID](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#1903)
> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For the enumeration of modification operations, refer to [ModifyOrderOp](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3811)
> - For trail type, refer to [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`ModifyOrder(req);`

- **Description**

Modify the price and quantity of orders, cancel orders, delete orders, enable or disable orders, etc.

For HKCC market, it is invalid to change orders, except that cancelling orders is supported.

- **Parameters**

> - For request packet identification structure, refer to [PacketID](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#1903)
> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For the enumeration of modification operations, refer to [ModifyOrderOp](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3811)
> - For trail type, refer to [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 20 requests per 30 seconds under a single account ID (acc\_id), and the time interval between two consecutive requests should not be less than 0.04 seconds.
- When using live trading accounts, you need to [unlock trade](https://openapi.moomoo.com/moomoo-api-doc/en/trade/unlock.html) **before** calling _Modify or Cancel Orders_ interface, but when using paper trading accounts, you do not need to [unlock trade](https://openapi.moomoo.com/moomoo-api-doc/en/trade/unlock.html).

Tip

- For the execution of **modify the order**, to learn more about the required parameters for each order type, please [click here](https://openapi.moomoo.com/moomoo-api-doc/en/qa/trade.html#2440).
- If you want to **modify the quantity of the order**, the parameter **qty** should be equal to the total quantity of the expected filled.

For example:

The quantity of an order is _N_ shares, with _n_ shares filled. For the unfilled _(N-n)_ shares, if you want to cancel _x_ shares, the parameter **modify\_order\_op** should be _NORMAL_, **qty** should be _(N-x)_.
![order_quantity](https://openapi.moomoo.com/moomoo-api-doc/assets/img/order_quantity_en.f13725f3.png)
- If you want to cancel an order, the parameter **modify\_order\_op** should be _CANCEL_.

For example:

The quantity of an order is _N_ shares, with _n_ shares filled. If you want to cancel the unfilled _(N-n)_ shares, **modify\_order\_op** should be _CANCEL_, and **qty** and **price** will be ignored.

`modify_order(modify_order_op, order_id, qty, price, adjust_limit=0, trd_env=TrdEnv.REAL, acc_id=0, acc_index=0, aux_price=None, trail_type=None, trail_value=None, trail_spread=None)`

- **Description**

Modify the price and quantity of orders, cancel orders, delete orders, enable or disable orders, etc.

For HKCC market, it is invalid to change orders, except that cancelling orders is supported.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| modify\_order\_op | [ModifyOrderOp](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3811) | Modify order operation type. |
| order\_id | str | Order ID. |
| qty | float | The quantity after the order is changed. <br><br>The unit of options and futures is "contract". <br>0 decimal place accuracy, the excess part is discarded. |
| price | float | The price after the order is changed. <br><br>Accuracy to 3 decimal places for securities account, and the excess part will be discarded.<br>Accuracy to 9 decimal places for futures account, and the excess part will be discarded. |
| adjust\_limit | float | Price adjustment range. <br><br>OpenD will automatically adjust the incoming price to the legal price.(This parameter will be ignored by future contracts.) <br>  - Positive numbers represent upward adjustments, and negative numbers represent downward adjustments. <br>  - For example: 0.015 means upward adjustment and the amplitude does not exceed 1.5%; -0.01 means downward adjustment and the amplitude does not exceed 1%. The default 0 means no adjustment. |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
| acc\_id | int | Trading account ID. <br><br>  - When acc\_id is 0, the account specified by acc\_index is chosen.<br>  - When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen.<br>  - Using acc\_id to query and trade is strongly recommended, acc\_index will change when adding/closing an account, result in the account you specify is inconsistent with the actual trading account. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |
| aux\_price | float | Trigger price. <br><br>  - If order type is **Stop**, **Stop Limit**, **Market if Touched**, or **Limit if Touched**, aux\_price must be set.<br>  - The price will be rounded to 3 decimals for securities account, and 9 decimals for futures account. |
| trail\_type | [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12) | Trailing type. <br><br>If order type is **Trailing Stop**, or **Trailing Stop Limit**, trail\_type must be set. |
| trail\_value | float | Trailing amount/ratio. <br><br>  - If order type is **Trailing Stop**, or **Trailing Stop Limit**, trail\_value must be set.<br>  - If the trail type is PERCENTAGE, this field is in percentage form, so 20 is equivalent to 20%. <br>  - If the trail type is PRICE, this value will be rounded to 3 decimals for securities account, and 9 decimals for futures account.<br>  - If the trail type is PRICE, this value will be rounded to 2 decimals. |
| trail\_spread | float | Specify spread. <br><br>  - If order type is **Trailing Stop Limit**, trail\_spread must be set.<br>  - The price will be rounded to 3 decimals for securities account, and 9 decimals for futures account. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, modification information is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Modification information format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
    | order\_id | str | Order ID. |
- **Example**

```python
from moomoo import *
pwd_unlock = '123456'
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUINC)
ret, data = trd_ctx.unlock_trade(pwd_unlock)  # If you use a live trading account to modify or cancel an order, you need to unlock the account first. The example here is to cancel an order on a paper trading account, and unlocking is not necessary.
if ret == RET_OK:
    order_id = "8851102695472794941"
    ret, data = trd_ctx.modify_order(ModifyOrderOp.CANCEL, order_id, 0, 0)
    if ret == RET_OK:
        print(data)
        print(data['stock_name'][0])  # Get the order ID of the modified order
        print(data['stock_name'].values.tolist())  # Convert to list
    else:
        print('modify_order error: ', data)
else:
    print('unlock_trade failed: ', data)
trd_ctx.close()

```

- **Output**

```python
    trd_env             order_id
0    REAL      8851102695472794941
['8851102695472794941']

```

`cancel_all_order(trd_env=TrdEnv.REAL, acc_id=0, acc_index=0, trdmarket=TrdMarket.NONE)`

- **Description**

Cancel all orders. Paper trading and HKCC trading accounts do not support all cancellations.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
| acc\_id | int | Trading account ID. <br><br>When acc\_id is 0, the account specified by acc\_index is chosen.<br>When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |
| trdmarket | [TrdMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6257) | Transaction market selection. <br><br>Cancel orders in specified markets the given account.<br>In the default state, cancel orders in all markets for the given account. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | int | Returned value. On success, ret == RET\_OK. On error, ret != RET\_OK. |
| data | str | If ret == RET\_OK, modification information is returned. |
| If ret != RET\_OK, error description is returned. |

  - Modification information format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment |
    | order\_id | str | Order number |
- **Example**

```python
from moomoo import *
pwd_unlock = '123456'
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUINC)
ret, data = trd_ctx.unlock_trade(pwd_unlock)  # If you use a live trading account to modify or cancel an order, you need to unlock the account first. The example here is to cancel all orders on a paper trading account, and unlocking is not necessary.
if ret == RET_OK:
    ret, data = trd_ctx.cancel_all_order()
    if ret == RET_OK:
        print(data)
    else:
        print('cancel_all_order error: ', data)
else:
    print('unlock_trade failed: ', data)
trd_ctx.close()

```

- **Output**

```python
success

```


## Trd\_ModifyOrder.proto


- **Description**

Modify the price and quantity of orders, cancel orders, delete orders, enable or disable orders, etc.

For HKCC market, it is invalid to change orders, except that cancelling orders is supported.

- **Parameters**

> - For request packet identification structure, refer to [PacketID](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#1903)
> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For the enumeration of modification operations, refer to [ModifyOrderOp](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3811)
> - For trail type, refer to [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint ModifyOrder(TrdModifyOrder.Request req);`

`virtual void OnReply_ModifyOrder(MMAPI_Conn client, uint nSerialNo, TrdModifyOrder.Response rsp);`

- **Description**

Modify the price and quantity of orders, cancel orders, delete orders, enable or disable orders, etc.

For HKCC market, it is invalid to change orders, except that cancelling orders is supported.

- **Parameters**

> - For request packet identification structure, refer to [PacketID](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#1903)
> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For the enumeration of modification operations, refer to [ModifyOrderOp](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3811)
> - For trail type, refer to [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int modifyOrder(TrdModifyOrder.Request req);`

`void onReply_ModifyOrder(MMAPI_Conn client, int nSerialNo, TrdModifyOrder.Response rsp);`

- **Description**

Modify the price and quantity of orders, cancel orders, delete orders, enable or disable orders, etc.

For HKCC market, it is invalid to change orders, except that cancelling orders is supported.

- **Parameters**

> - For request packet identification structure, refer to [PacketID](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#1903)
> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For the enumeration of modification operations, refer to [ModifyOrderOp](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3811)
> - For trail type, refer to [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t ModifyOrder(const Trd_ModifyOrder::Request &stReq);`

`virtual void OnReply_ModifyOrder(moomoo::u32_t nSerialNo, const Trd_ModifyOrder::Response &stRsp) = 0;`

- **Description**

Modify the price and quantity of orders, cancel orders, delete orders, enable or disable orders, etc.

For HKCC market, it is invalid to change orders, except that cancelling orders is supported.

- **Parameters**

> - For request packet identification structure, refer to [PacketID](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#1903)
> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For the enumeration of modification operations, refer to [ModifyOrderOp](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3811)
> - For trail type, refer to [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`ModifyOrder(req);`

- **Description**

Modify the price and quantity of orders, cancel orders, delete orders, enable or disable orders, etc.

For HKCC market, it is invalid to change orders, except that cancelling orders is supported.

- **Parameters**

> - For request packet identification structure, refer to [PacketID](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#1903)
> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For the enumeration of modification operations, refer to [ModifyOrderOp](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3811)
> - For trail type, refer to [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 20 requests per 30 seconds under a single account ID (acc\_id), and the time interval between two consecutive requests should not be less than 0.04 seconds.
- When using live trading accounts, you need to [unlock trade](https://openapi.moomoo.com/moomoo-api-doc/en/trade/unlock.html) **before** calling _Modify or Cancel Orders_ interface, but when using paper trading accounts, you do not need to [unlock trade](https://openapi.moomoo.com/moomoo-api-doc/en/trade/unlock.html).

Tip

- For the execution of **modify the order**, to learn more about the required parameters for each order type, please [click here](https://openapi.moomoo.com/moomoo-api-doc/en/qa/trade.html#2440).
- If you want to **modify the quantity of the order**, the parameter **qty** should be equal to the total quantity of the expected filled.

For example:

The quantity of an order is _N_ shares, with _n_ shares filled. For the unfilled _(N-n)_ shares, if you want to cancel _x_ shares, the parameter **modify\_order\_op** should be _NORMAL_, **qty** should be _(N-x)_.
![order_quantity](https://openapi.moomoo.com/moomoo-api-doc/assets/img/order_quantity_en.f13725f3.png)
- If you want to cancel an order, the parameter **modify\_order\_op** should be _CANCEL_.

For example:

The quantity of an order is _N_ shares, with _n_ shares filled. If you want to cancel the unfilled _(N-n)_ shares, **modify\_order\_op** should be _CANCEL_, and **qty** and **price** will be ignored.

←
[Place Orders](https://openapi.moomoo.com/moomoo-api-doc/en/trade/place-order.html)[Get open Orders](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-order-list.html)
→

## Get Order Fee

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/trade/order-fee-query.html


`order_fee_query(order_id_list=[], acc_id=0, acc_index=0, trd_env=TrdEnv.REAL)`

- **介绍**

Get specified orders' fee details. (Minimum version requirement: 8.2.4218)

- **参数**

| Parameter | Type | Description |
| --- | --- | --- |
| order\_id\_list | list | Order id list.<br><br>  - At most 400 orders for each request.<br>  - The data type of elements in the list is str. |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
| acc\_id | int | Trading account ID. <br><br>  - When acc\_id is 0, the account specified by acc\_index is chosen.<br>  - When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen.<br>  - Using acc\_id to query and trade is strongly recommended, acc\_index will change when adding/closing an account, result in the account you specify is inconsistent with the actual trading account. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |

- **返回**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, order fee list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Order list format as follows：

    | 字段 | 类型 | 说明 |
    | --- | --- | --- |
    | order\_id | str | Order ID |
    | fee\_amount | float | Total fee of the order. |
    | fee\_details | list | Fee details of the order.<br><br>Format：\[('item1', fee amount of item1), ('item2', fee amount of item2), ('item3', fee amount of item3)\] |
- **Example**

```python
from futu import *
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUSECURITIES)
ret1, data1 = trd_ctx.history_order_list_query(status_filter_list=[OrderStatus.FILLED_ALL])
if ret1 == RET_OK:
    if data1.shape[0] > 0:  # If the order list is not empty
        ret2, data2 = trd_ctx.order_fee_query(data1['order_id'].values.tolist())  # Convert order ids to list data type, and request for order fees.
        if ret2 == RET_OK:
            print(data2)
            print(data2['fee_details'][0])  # Get fee details of the first order
        else:
            print('order_fee_query error: ', data2)
else:
    print('order_list_query error: ', data1)
trd_ctx.close()

```

- **Output**

```python
                                            order_id  fee_amount                                        fee_details
0  v3_20240314_12345678_MTc4NzA5NzY5OTA3ODAzMzMwN       10.46  [(Commission, 5.85), (Platform Fee, 2.7), (ORF...\
1  v3_20240318_12345678_MTM5Nzc5MDYxNDY1NDM1MDI1M        2.25  [(Commission, 0.99), (Platform Fee, 1.0), (Set...\
[('Commission', 5.85), ('Platform Fee', 2.7), ('ORF', 0.11), ('OCC Fee', 0.18), ('Option Settlement Fees', 1.62)]\
\
        Copied!\
\
message C2S\
{\
    required Trd_Common.TrdHeader header = 1; //Transaction common header\
    repeated string orderIdExList = 2; // Server order id\
}\
\
message Request\
{\
    required C2S c2s = 1;\
}\
\
        Copied!\
\
message S2C\
{\
    required Trd_Common.TrdHeader header = 1; //Transaction common header\
    repeated Trd_Common.OrderFee orderFeeList = 2; //Order fee list\
}\
\
message Response\
{\
    //The following 3 fields are available in all protocols, and the notes are in InitConnect.proto\
    required int32 retType = 1 [default = -400];\
    optional string retMsg = 2;\
    optional int32 errCode = 3;\
\
    optional S2C s2c = 4;\
}\
\
        Copied!\
\
message C2S\
{\
    required Trd_Common.TrdHeader header = 1; //Transaction common header\
    repeated string orderIdExList = 2; // Server order id\
}\
\
message Request\
{\
    required C2S c2s = 1;\
}\
\
        Copied!\
\
message S2C\
{\
    required Trd_Common.TrdHeader header = 1; //Transaction common header\
    repeated Trd_Common.OrderFee orderFeeList = 2; //Order fee list\
}\
\
message Response\
{\
    //The following 3 fields are available in all protocols, and the notes are in InitConnect.proto\
    required int32 retType = 1 [default = -400];\
    optional string retMsg = 2;\
    optional int32 errCode = 3;\
\
    optional S2C s2c = 4;\
}\
\
        Copied!\
\
public class Program : FTSPI_Trd, FTSPI_Conn\
{\
	FTAPI_Trd trd = new FTAPI_Trd();\
	private TrdCommon.TrdEnv trdEnv = TrdCommon.TrdEnv.TrdEnv_Real;\
	private TrdCommon.TrdMarket trdMkt = TrdCommon.TrdMarket.TrdMarket_US;\
	public Program()\
	{\
		trd.SetClientInfo("csharp", 1);\
		trd.SetConnCallback(this);\
		trd.SetTrdCallback(this);\
	}\
	public void Start()\
	{\
		trd.InitConnect("127.0.0.1", (ushort)11111, false);\
	}\
	public void OnInitConnect(FTAPI_Conn client, long errCode, String desc)\
	{\
		Console.Write("Trd onInitConnect: ret={0} desc={1} connID={2}\n", errCode, desc, client.GetConnectID());\
		if (errCode != 0)\
			return;\
		TrdGetAccList.C2S c2s = TrdGetAccList.C2S.CreateBuilder().SetUserID(0)\
				.Build();\
		TrdGetAccList.Request req = TrdGetAccList.Request.CreateBuilder().SetC2S(c2s).Build();\
		uint seqNo = trd.GetAccList(req);\
		Console.Write("Send TrdGetAccList: {0}\n", seqNo);\
	}\
	public void OnDisconnect(FTAPI_Conn client, long errCode)\
	{\
		Console.Write("Trd onDisConnect: {0}\n", errCode);\
	}\
	public void OnReply_GetAccList(FTAPI_Conn client, uint nSerialNo, TrdGetAccList.Response rsp)\
	{\
		if (rsp.RetType != (int)Common.RetType.RetType_Succeed)\
		{\
			Console.WriteLine("ERROR: GetAccList, retMsg = {0}", rsp.RetMsg);\
			return;\
		}\
		Console.Write("Recv GetAccList succeed. accCount: {0}\n", rsp.S2C.AccListCount);\
		ulong accID = 0;\
		foreach (TrdCommon.TrdAcc acc in rsp.S2C.AccListList)\
		{\
			if (acc.TrdEnv == (int)trdEnv && acc.TrdMarketAuthListList[0] == (int)trdMkt)\
			{\
				accID = acc.AccID;\
				Console.Write("accInfo: accId: {0}, trdEnv: {1}, trdMarketAuthList: {2}, simAccType: {3}\n",\
					acc.AccID, (TrdCommon.TrdEnv)acc.TrdEnv, (TrdCommon.TrdMarket)acc.TrdMarketAuthListList[0],\
					(TrdCommon.TrdAccType)acc.SimAccType);\
				break;\
			}\
		}\
		if (accID == 0)\
		{\
			return;\
		}\
		string svrOrderId = "20240403_900053_Fy0gPKjKE1ZW1hUuf0z0DABgxvzfmQYq";\
		TrdCommon.TrdHeader header = TrdCommon.TrdHeader.CreateBuilder().SetTrdEnv((int)trdEnv)\
			.SetTrdMarket((int)trdMkt)\
			.SetAccID(accID)\
			.Build();\
		TrdGetOrderFee.C2S c2s = TrdGetOrderFee.C2S.CreateBuilder().SetHeader(header)\
			.AddOrderIdExList(svrOrderId).Build();\
		TrdGetOrderFee.Request req = TrdGetOrderFee.Request.CreateBuilder().SetC2S(c2s).Build();\
		uint seqNo = trd.GetOrderFee(req);\
		Console.Write("Send GetOrderFee: {0}\n", seqNo);\
	}\
	public void OnReply_GetOrderFee(FTAPI_Conn client, uint nSerialNo, TrdGetOrderFee.Response rsp)\
	{\
		if (rsp.RetType != (int)Common.RetType.RetType_Succeed)\
		{\
			Console.WriteLine("ERROR: GetOrderFee, retMsg = {0}", rsp.RetMsg);\
			return;\
		}\
		foreach (TrdCommon.OrderFee ordFee in rsp.S2C.OrderFeeListList)\
		{\
			if (ordFee.HasFeeAmount)\
			{\
				Console.WriteLine("orderId: {0}, amount: {1}", ordFee.OrderIDEx, ordFee.FeeAmount);\
			}\
			else\
			{\
				Console.WriteLine("orderId: {0}", ordFee.OrderIDEx);\
			}\
			foreach (TrdCommon.OrderFeeItem feeItem in ordFee.FeeListList)\
			{\
				Console.WriteLine("title: {0}, fee: {1}", feeItem.Title, feeItem.Value);\
			}\
		}\
	}\
	public static void Main(String[] args)\
	{\
		FTAPI.Init();\
		Program Trd = new Program();\
		Trd.Start();\
		while (true)\
			Thread.Sleep(1000 * 600);\
	}\
}\
\
        Copied!\
\
orderId: 20240403_900053_Fy0gPKjKE1ZW1hUuf0z0DABgxvzfmQYq, amount: 2.01\
title: ..., fee: 0.99\
title: ..., fee: 1\
title: ..., fee: 0\
title: ..., fee: 0.01\
title: ..., fee: 0.01\
\
        Copied!\
\
message C2S\
{\
    required Trd_Common.TrdHeader header = 1; //Transaction common header\
    repeated string orderIdExList = 2; // Server order id\
}\
\
message Request\
{\
    required C2S c2s = 1;\
}\
\
        Copied!\
\
message S2C\
{\
    required Trd_Common.TrdHeader header = 1; //Transaction common header\
    repeated Trd_Common.OrderFee orderFeeList = 2; //Order fee list\
}\
\
message Response\
{\
    //The following 3 fields are available in all protocols, and the notes are in InitConnect.proto\
    required int32 retType = 1 [default = -400];\
    optional string retMsg = 2;\
    optional int32 errCode = 3;\
\
    optional S2C s2c = 4;\
}\
\
        Copied!\
\
public class TrdDemo implements FTSPI_Trd, FTSPI_Conn {\
    FTAPI_Conn_Trd trd = new FTAPI_Conn_Trd();\
\
    public TrdDemo() {\
        trd.setClientInfo("javaclient", 1);  //Set client information\
        trd.setConnSpi(this);  //Set connection callback\
        trd.setTrdSpi(this);   //Set transaction callback\
    }\
\
    public void start() {\
        trd.initConnect("127.0.0.1", (short)11111, false);\
    }\
\
    @Override\
    public void onInitConnect(FTAPI_Conn client, long errCode, String desc)\
    {\
        System.out.printf("Trd onInitConnect: ret=%b desc=%s connID=%d\n", errCode, desc, client.getConnectID());\
        if (errCode != 0)\
            return;\
\
        TrdCommon.TrdHeader header = TrdCommon.TrdHeader.newBuilder()\
                .setAccID(281756457888247915L)  //Use your own trade account\
                .setTrdEnv(TrdCommon.TrdEnv.TrdEnv_Real_VALUE)\
                .setTrdMarket(TrdCommon.TrdMarket.TrdMarket_HK_VALUE)\
                .build();\
        String orderId = "20210625_123456_OD|IqKozO18ODL1pwZNcLzgvEe9sW8gm"; //Use your own order id\
        TrdGetOrderFee.C2S c2s = TrdGetOrderFee.C2S.newBuilder()\
                .setHeader(header)\
                .addOrderIdExList(orderId)\
                .build();\
        TrdGetOrderFee.Request req =TrdGetOrderFee.Request.newBuilder().setC2S(c2s).build();\
        int sn = trd.getOrderFee(req);\
        System.out.printf("getOrderFee: sn=%d\n", sn);\
    }\
\
    @Override\
    public void onDisconnect(FTAPI_Conn client, long errCode) {\
        System.out.printf("Trd onDisConnect: %d\n", errCode);\
    }\
\
    @Override\
    public void onReply_GetOrderFee(FTAPI_Conn client, int nSerialNo, TrdGetOrderList.Response rsp) {\
        if (rsp.getRetType() != 0) {\
            System.out.printf("TrdGetOrderFee failed: %s\n", rsp.getRetMsg());\
        }\
        else {\
            try {\
                String json = JsonFormat.printer().print(rsp);\
                System.out.printf("onReply_GetOrderFee: %s\n", json);\
            } catch (InvalidProtocolBufferException err) {\
                err.printStackTrace();\
            }\
        }\
    }\
\
    public static void main(String[] args) {\
        FTAPI.init();\
        TrdDemo trd = new TrdDemo();\
        trd.start();\
\
        while (true) {\
            try {\
                Thread.sleep(1000 * 600);\
            } catch (InterruptedException exc) {\
\
            }\
        }\
    }\
}\
\
        Copied!\
\
getOrderFee: sn=2\
onReply_GetOrderFee: {\
  "retType": 0,\
  "retMsg": "",\
  "errCode": 0,\
  "s2c": {\
    "header": {\
      "trdEnv": 1,\
      "accID": "281756455988306264",\
      "trdMarket": 1\
    },\
    "orderFeeList": [{\
      "orderIDEx": "20210625_5972312_OD|IqKozO18ODL1pwZNcLzgvEe9sW8gm",\
      "feeAmount": 7.569999999999999,\
      "feeList": [{\
        "title": "Commission",\
        "value": 1.0\
      }, {\
        "title": "Platform Fee",\
        "value": 0.0\
      }, {\
        "title": "Trading Tariff",\
        "value": 0.0\
      }, {\
        "title": "Settlement Fee",\
        "value": 5.5\
      }, {\
        "title": "Stamp Duty",\
        "value": 1.0\
      }, {\
        "title": "Trading Fee",\
        "value": 0.05\
      }, {\
        "title": "Transaction Levy",\
        "value": 0.02\
      }]\
    }]\
  }\
}\
\
        Copied!\
\
message C2S\
{\
    required Trd_Common.TrdHeader header = 1; //Transaction common header\
    repeated string orderIdExList = 2; // Server order id\
}\
\
message Request\
{\
    required C2S c2s = 1;\
}\
\
        Copied!\
\
message S2C\
{\
    required Trd_Common.TrdHeader header = 1; //Transaction common header\
    repeated Trd_Common.OrderFee orderFeeList = 2; //Order fee list\
}\
\
message Response\
{\
    //The following 3 fields are available in all protocols, and the notes are in InitConnect.proto\
    required int32 retType = 1 [default = -400];\
    optional string retMsg = 2;\
    optional int32 errCode = 3;\
\
    optional S2C s2c = 4;\
}\
\
        Copied!\
\
class Program : public FTSPI_Qot, public FTSPI_Trd, public FTSPI_Conn\
{\
public:\
\
	Program() {\
		m_pTrdApi = FTAPI::CreateTrdApi();\
		m_pTrdApi->RegisterTrdSpi(this);\
		m_pTrdApi->RegisterConnSpi(this);\
	}\
\
	~Program() {\
		if (m_pTrdApi != nullptr)\
		{\
			m_pTrdApi->UnregisterTrdSpi();\
			m_pTrdApi->UnregisterConnSpi();\
			FTAPI::ReleaseTrdApi(m_pTrdApi);\
			m_pTrdApi = nullptr;\
		}\
	}\
\
	void Start() {\
		m_pTrdApi->InitConnect("127.0.0.1", 11111, false);\
	}\
\
	virtual void OnInitConnect(FTAPI_Conn* pConn, Futu::i64_t nErrCode, const char* strDesc) {\
		cout << "connect" << endl;\
\
		Trd_GetOrderFee::Request req;\
		Trd_GetOrderFee::C2S *c2s = req.mutable_c2s();\
		Trd_Common::TrdHeader *header = c2s->mutable_header();\
		header->set_accid(281756455983234005);\
		header->set_trdenv(1);\
		header->set_trdmarket(1);\
		c2s->add_orderidexlist("20240410_900053_OD|kSoBjXk8SRhW4aJfWHwAmrhzYFyJS");\
\
        m_GetOrderFeeSerialNo = m_pTrdApi->GetOrderFee(req);\
        cout << "Request GetOrderFee SerialNo: " << m_GetOrderFeeSerialNo << endl;\
	}\
\
	virtual void OnReply_GetOrderFee(Futu::u32_t nSerialNo, const Trd_GetOrderFee::Response &stRsp){\
        if(nSerialNo == m_GetOrderFeeSerialNo)\
        {\
            cout << "OnReply_GetOrderFee SerialNo: " << nSerialNo << endl;\
            string resp_str;\
            ProtoBufToBodyData(stRsp, resp_str);\
            cout << UTF8ToLocal(resp_str) << endl;\
        }\
	}\
\
protected:\
	FTAPI_Trd *m_pTrdApi;\
\
    Futu::u32_t m_GetOrderFeeSerialNo;\
};\
\
int32_t main(int32_t argc, char** argv)\
{\
	FTAPI::Init();\
\
	{\
		Program program;\
		program.Start();\
		getchar();\
	}\
\
	protobuf::ShutdownProtobufLibrary();\
	FTAPI::UnInit();\
	return 0;\
}\
\
        Copied!\
\
connect\
Request_GetOrderFee SerialNo: 4\
OnReply_GetOrderFee SerialNo: 4\
{\
    "retType": 0,\
    "retMsg": "",\
    "errCode": 0,\
    "s2c": {\
        "header": {\
            "trdEnv": 1,\
            "accID": "281756455983234005",\
            "trdMarket": 1\
        },\
        "orderFeeList": [\
            {\
                "orderIDEx": "20240410_900053_OD|kSoBjXk8SRhW4aJfWHwAmrhzYFyJS",\
                "feeAmount": 24.27,\
                "feeList": [\
                    {\
                        "title": "...",\
                        "value": 3\
                    },\
                    {\
                        "title": "...",\
                        "value": 15\
                    },\
                    {\
                        "title": "...",\
                        "value": 0\
                    },\
                    {\
                        "title": "...",\
                        "value": 2\
                    },\
                    {\
                        "title": "...",\
                        "value": 4\
                    },\
                    {\
                        "title": "...",\
                        "value": 0.18\
                    },\
                    {\
                        "title": "...",\
                        "value": 0.09\
                    },\
                    {\
                        "title": "...",\
                        "value": 0\
                    }\
                ]\
            }\
        ]\
    }\
}\
\
        Copied!\
\
message C2S\
{\
    required Trd_Common.TrdHeader header = 1; //Transaction common header\
    repeated string orderIdExList = 2; // Server order id\
}\
\
message Request\
{\
    required C2S c2s = 1;\
}\
\
        Copied!\
\
message S2C\
{\
    required Trd_Common.TrdHeader header = 1; //Transaction common header\
    repeated Trd_Common.OrderFee orderFeeList = 2; //Order fee list\
}\
\
message Response\
{\
    //The following 3 fields are available in all protocols, and the notes are in InitConnect.proto\
    required int32 retType = 1 [default = -400];\
    optional string retMsg = 2;\
    optional int32 errCode = 3;\
\
    optional S2C s2c = 4;\
}\
\
        Copied!\
\
import ftWebsocket from "futu-api";\
import { ftCmdID } from "futu-api";\
import { Common, Qot_Common, Trd_Common } from "futu-api/proto";\
import beautify from "js-beautify";\
\
function TrdGetOrderList(){\
    const { RetType } = Common\
    const { TrdEnv, TrdMarket } = Trd_Common\
    let [addr, port, enable_ssl, key] = ["127.0.0.1", 33333, false, 'ec16fde057a2e7a0'];\
    let websocket = new ftWebsocket();\
\
    websocket.onlogin = (ret, msg)=>{\
        if (ret) {\
            websocket.GetAccList({\
                c2s: {\
                    userID: 0,\
                },\
            }).then((res) => {\
                let { retType,s2c: { accList } } = res\
                if(retType == RetType.RetType_Succeed){\
                    let acc = accList.filter((item)=>{\
                        return item.trdEnv == TrdEnv.TrdEnv_Simulate && item.trdMarketAuthList.some((auth)=>{ return auth == TrdMarket.TrdMarket_HK})\
                    })[0]; // The sample takes the first HK paper trading environment account\
\
                    const req = {\
                        c2s: {\
                            header: {\
                                trdEnv: acc.trdEnv,\
                                accID: acc.accID,\
                                trdMarket: TrdMarket.TrdMarket_HK,\
                            },\
                        },\
                    };\
\
                    websocket.GetOrderFee(req)\
                    .then((res) => {\
                        let { errCode, retMsg, retType,s2c } = res\
                        console.log("GetOrderFee: errCode %d, retMsg %s, retType %d", errCode, retMsg, retType);\
                        if(retType == RetType.RetType_Succeed){\
                            let data = beautify(JSON.stringify(s2c), {\
                                indent_size: 2,\
                                space_in_empty_paren: true,\
                            });\
                            console.log(data);\
                        }\
                    })\
                    .catch((error) => {\
                        console.log("error:", error);\
                    });\
\
                }\
            })\
            .catch((error) => {\
                console.log("GetAccList error:", error);\
            });\
        } else {\
            console.log("error", msg);\
        }\
    };\
\
    websocket.start(addr, port, enable_ssl, key);\
\
    // After using the connection, remember to close it to prevent the number of connections from running out\
    setTimeout(()=>{\
        websocket.stop();\
        console.log("stop");\
    }, 5000); // Set the script to receive OpenD push duration to 5 seconds\
}\
\
        Copied!\
\
GetOrderFee: errCode 0, retMsg , retType 0\
{\
  "header": {\
    "trdEnv": 1,\
    "accID": "281756455988249902",\
    "trdMarket": 1\
  },\
  "orderFeeList": [{\
    "orderIDEx": "20210913_5915950_OD|pM+9NqXZAaxnZYpScrsjT4zHWtlk1",\
    "feeAmount": 522700.6,\
    "feeList": [\
        {\
            "title":"...",\
            "value":"...",\
        }, ...,{\
            "title":"...",\
            "value":"...",\
        },\
    ]\
  }, ..., {\
    "orderIDEx": "20210913_5915950_OD|rILqM3WaKl2rXYpRYuigcJmBKtRld",\
    "feeAmount": 67356.8,\
    "feeList": [\
        {\
            "title":"...",\
            "value":"...",\
        }, ...,{\
            "title":"...",\
            "value":"...",\
        },\
    ]\
  }]\
}\
stop\
\
        Copied!\
\
from moomoo import *\
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUINC)\
ret1, data1 = trd_ctx.history_order_list_query(status_filter_list=[OrderStatus.FILLED_ALL])\
if ret1 == RET_OK:\
    if data1.shape[0] > 0:  # If the order list is not empty\
        ret2, data2 = trd_ctx.order_fee_query(data1['order_id'].values.tolist())  # Convert order ids to list data type, and request for order fees.\
        if ret2 == RET_OK:\
            print(data2)\
            print(data2['fee_details'][0])  # Get fee details of the first order\
        else:\
            print('order_fee_query error: ', data2)\
else:\
    print('order_list_query error: ', data1)\
trd_ctx.close()\
\
        Copied!\
\
                                            order_id  fee_amount                                        fee_details\
0  v3_20240314_12345678_MTc4NzA5NzY5OTA3ODAzMzMwN       10.46  [(Commission, 5.85), (Platform Fee, 2.7), (ORF...\
1  v3_20240318_12345678_MTM5Nzc5MDYxNDY1NDM1MDI1M        2.25  [(Commission, 0.99), (Platform Fee, 1.0), (Set...\
[('Commission', 5.85), ('Platform Fee', 2.7), ('ORF', 0.11), ('OCC Fee', 0.18), ('Option Settlement Fees', 1.62)]\
\
        Copied!\
\
message C2S\
{\
    required Trd_Common.TrdHeader header = 1; //Transaction common header\
    repeated string orderIdExList = 2; // Server order id\
}\
\
message Request\
{\
    required C2S c2s = 1;\
}\
\
        Copied!\
\
message S2C\
{\
    required Trd_Common.TrdHeader header = 1; //Transaction common header\
    repeated Trd_Common.OrderFee orderFeeList = 2; //Order fee list\
}\
\
message Response\
{\
    //The following 3 fields are available in all protocols, and the notes are in InitConnect.proto\
    required int32 retType = 1 [default = -400];\
    optional string retMsg = 2;\
    optional int32 errCode = 3;\
\
    optional S2C s2c = 4;\
}\
\
        Copied!\
\
message C2S\
{\
    required Trd_Common.TrdHeader header = 1; //Transaction common header\
    repeated string orderIdExList = 2; // Server order id\
}\
\
message Request\
{\
    required C2S c2s = 1;\
}\
\
        Copied!\
\
message S2C\
{\
    required Trd_Common.TrdHeader header = 1; //Transaction common header\
    repeated Trd_Common.OrderFee orderFeeList = 2; //Order fee list\
}\
\
message Response\
{\
    //The following 3 fields are available in all protocols, and the notes are in InitConnect.proto\
    required int32 retType = 1 [default = -400];\
    optional string retMsg = 2;\
    optional int32 errCode = 3;\
\
    optional S2C s2c = 4;\
}\
\
        Copied!\
\
public class Program : MMSPI_Trd, MMSPI_Conn\
{\
	MMAPI_Trd trd = new MMAPI_Trd();\
	private TrdCommon.TrdEnv trdEnv = TrdCommon.TrdEnv.TrdEnv_Real;\
	private TrdCommon.TrdMarket trdMkt = TrdCommon.TrdMarket.TrdMarket_HK;\
	public Program()\
	{\
		trd.SetClientInfo("csharp", 1);\
		trd.SetConnCallback(this);\
		trd.SetTrdCallback(this);\
	}\
	public void Start()\
	{\
		trd.InitConnect("127.0.0.1", (ushort)11111, false);\
	}\
	public void OnInitConnect(MMAPI_Conn client, long errCode, String desc)\
	{\
		Console.Write("Trd onInitConnect: ret={0} desc={1} connID={2}\n", errCode, desc, client.GetConnectID());\
		if (errCode != 0)\
			return;\
		TrdGetAccList.C2S c2s = TrdGetAccList.C2S.CreateBuilder().SetUserID(0)\
				.Build();\
		TrdGetAccList.Request req = TrdGetAccList.Request.CreateBuilder().SetC2S(c2s).Build();\
		uint seqNo = trd.GetAccList(req);\
		Console.Write("Send TrdGetAccList: {0}\n", seqNo);\
	}\
	public void OnDisconnect(MMAPI_Conn client, long errCode)\
	{\
		Console.Write("Trd onDisConnect: {0}\n", errCode);\
	}\
	public void OnReply_GetAccList(MMAPI_Conn client, uint nSerialNo, TrdGetAccList.Response rsp)\
	{\
		if (rsp.RetType != (int)Common.RetType.RetType_Succeed)\
		{\
			Console.WriteLine("ERROR: GetAccList, retMsg = {0}", rsp.RetMsg);\
			return;\
		}\
		Console.Write("Recv GetAccList succeed. accCount: {0}\n", rsp.S2C.AccListCount);\
		ulong accID = 0;\
		foreach (TrdCommon.TrdAcc acc in rsp.S2C.AccListList)\
		{\
			if (acc.TrdEnv == (int)trdEnv && acc.TrdMarketAuthListList[0] == (int)trdMkt)\
			{\
				accID = acc.AccID;\
				Console.Write("accInfo: accId: {0}, trdEnv: {1}, trdMarketAuthList: {2}, simAccType: {3}\n",\
					acc.AccID, (TrdCommon.TrdEnv)acc.TrdEnv, (TrdCommon.TrdMarket)acc.TrdMarketAuthListList[0],\
					(TrdCommon.TrdAccType)acc.SimAccType);\
				break;\
			}\
		}\
		if (accID == 0)\
		{\
			return;\
		}\
		string svrOrderId = "20240409_900062_ODc3ODI3NDQwNTA3NjU1NTkzNTRmNDJk";\
		TrdCommon.TrdHeader header = TrdCommon.TrdHeader.CreateBuilder().SetTrdEnv((int)trdEnv)\
			.SetTrdMarket((int)trdMkt)\
			.SetAccID(accID)\
			.Build();\
		TrdGetOrderFee.C2S c2s = TrdGetOrderFee.C2S.CreateBuilder().SetHeader(header)\
			.AddOrderIdExList(svrOrderId).Build();\
		TrdGetOrderFee.Request req = TrdGetOrderFee.Request.CreateBuilder().SetC2S(c2s).Build();\
		uint seqNo = trd.GetOrderFee(req);\
		Console.Write("Send GetOrderFee: {0}\n", seqNo);\
	}\
	public void OnReply_GetOrderFee(MMAPI_Conn client, uint nSerialNo, TrdGetOrderFee.Response rsp)\
	{\
		if (rsp.RetType != (int)Common.RetType.RetType_Succeed)\
		{\
			Console.WriteLine("ERROR: GetOrderFee, retMsg = {0}", rsp.RetMsg);\
			return;\
		}\
		foreach (TrdCommon.OrderFee ordFee in rsp.S2C.OrderFeeListList)\
		{\
			if (ordFee.HasFeeAmount)\
			{\
				Console.WriteLine("orderId: {0}, amount: {1}", ordFee.OrderIDEx, ordFee.FeeAmount);\
			}\
			else\
			{\
				Console.WriteLine("orderId: {0}", ordFee.OrderIDEx);\
			}\
			foreach (TrdCommon.OrderFeeItem feeItem in ordFee.FeeListList)\
			{\
				Console.WriteLine("title: {0}, fee: {1}", feeItem.Title, feeItem.Value);\
			}\
		}\
	}\
	public static void Main(String[] args)\
	{\
		MMAPI.Init();\
		Program Trd = new Program();\
		Trd.Start();\
		while (true)\
			Thread.Sleep(1000 * 600);\
	}\
}\
\
\
        Copied!\
\
orderId: 20240409_900062_ODc3ODI3NDQwNTA3NjU1NTkzNTRmNDJk, amount: 28.6\
title: ..., fee: 3\
title: ..., fee: 15\
title: ..., fee: 0\
title: ..., fee: 2\
title: ..., fee: 8\
title: ..., fee: 0.4\
title: ..., fee: 0.19\
title: ..., fee: 0.01\
\
        Copied!\
\
message C2S\
{\
    required Trd_Common.TrdHeader header = 1; //Transaction common header\
    repeated string orderIdExList = 2; // Server order id\
}\
\
message Request\
{\
    required C2S c2s = 1;\
}\
\
        Copied!\
\
message S2C\
{\
    required Trd_Common.TrdHeader header = 1; //Transaction common header\
    repeated Trd_Common.OrderFee orderFeeList = 2; //Order fee list\
}\
\
message Response\
{\
    //The following 3 fields are available in all protocols, and the notes are in InitConnect.proto\
    required int32 retType = 1 [default = -400];\
    optional string retMsg = 2;\
    optional int32 errCode = 3;\
\
    optional S2C s2c = 4;\
}\
\
        Copied!\
\
public class TrdDemo implements MMSPI_Trd, MMSPI_Conn {\
    MMAPI_Conn_Trd trd = new MMAPI_Conn_Trd();\
\
    public TrdDemo() {\
        trd.setClientInfo("javaclient", 1);  //Set client information\
        trd.setConnSpi(this);  //Set connection callback\
        trd.setTrdSpi(this);   //Set transaction callback\
    }\
\
    public void start() {\
        trd.initConnect("127.0.0.1", (short)11111, false);\
    }\
\
    @Override\
    public void onInitConnect(MMSPI_Conn client, long errCode, String desc)\
    {\
        System.out.printf("Trd onInitConnect: ret=%b desc=%s connID=%d\n", errCode, desc, client.getConnectID());\
        if (errCode != 0)\
            return;\
\
        TrdCommon.TrdHeader header = TrdCommon.TrdHeader.newBuilder()\
                .setAccID(281756457888247915L)  //Use your own trade account\
                .setTrdEnv(TrdCommon.TrdEnv.TrdEnv_Real_VALUE)\
                .setTrdMarket(TrdCommon.TrdMarket.TrdMarket_HK_VALUE)\
                .build();\
        String orderId = "20210625_123456_OD|IqKozO18ODL1pwZNcLzgvEe9sW8gm"; //Use your own order id\
        TrdGetOrderFee.C2S c2s = TrdGetOrderFee.C2S.newBuilder()\
                .setHeader(header)\
                .addOrderIdExList(orderId)\
                .build();\
        TrdGetOrderFee.Request req =TrdGetOrderFee.Request.newBuilder().setC2S(c2s).build();\
        int sn = trd.getOrderFee(req);\
        System.out.printf("getOrderFee: sn=%d\n", sn);\
    }\
\
    @Override\
    public void onDisconnect(MMSPI_Conn client, long errCode) {\
        System.out.printf("Trd onDisConnect: %d\n", errCode);\
    }\
\
    @Override\
    public void onReply_GetOrderFee(MMSPI_Conn client, int nSerialNo, TrdGetOrderList.Response rsp) {\
        if (rsp.getRetType() != 0) {\
            System.out.printf("TrdGetOrderFee failed: %s\n", rsp.getRetMsg());\
        }\
        else {\
            try {\
                String json = JsonFormat.printer().print(rsp);\
                System.out.printf("onReply_GetOrderFee: %s\n", json);\
            } catch (InvalidProtocolBufferException err) {\
                err.printStackTrace();\
            }\
        }\
    }\
\
    public static void main(String[] args) {\
        MMAPI.init();\
        TrdDemo trd = new TrdDemo();\
        trd.start();\
\
        while (true) {\
            try {\
                Thread.sleep(1000 * 600);\
            } catch (InterruptedException exc) {\
\
            }\
        }\
    }\
}\
\
        Copied!\
\
getOrderFee: sn=2\
onReply_GetOrderFee: {\
  "retType": 0,\
  "retMsg": "",\
  "errCode": 0,\
  "s2c": {\
    "header": {\
      "trdEnv": 1,\
      "accID": "281756455988306264",\
      "trdMarket": 1\
    },\
    "orderFeeList": [{\
      "orderIDEx": "20210625_5972312_OD|IqKozO18ODL1pwZNcLzgvEe9sW8gm",\
      "feeAmount": 7.569999999999999,\
      "feeList": [{\
        "title": "Commission",\
        "value": 1.0\
      }, {\
        "title": "Platform Fee",\
        "value": 0.0\
      }, {\
        "title": "Trading Tariff",\
        "value": 0.0\
      }, {\
        "title": "Settlement Fee",\
        "value": 5.5\
      }, {\
        "title": "Stamp Duty",\
        "value": 1.0\
      }, {\
        "title": "Trading Fee",\
        "value": 0.05\
      }, {\
        "title": "Transaction Levy",\
        "value": 0.02\
      }]\
    }]\
  }\
}\
\
        Copied!\
\
message C2S\
{\
    required Trd_Common.TrdHeader header = 1; //Transaction common header\
    repeated string orderIdExList = 2; // Server order id\
}\
\
message Request\
{\
    required C2S c2s = 1;\
}\
\
        Copied!\
\
message S2C\
{\
    required Trd_Common.TrdHeader header = 1; //Transaction common header\
    repeated Trd_Common.OrderFee orderFeeList = 2; //Order fee list\
}\
\
message Response\
{\
    //The following 3 fields are available in all protocols, and the notes are in InitConnect.proto\
    required int32 retType = 1 [default = -400];\
    optional string retMsg = 2;\
    optional int32 errCode = 3;\
\
    optional S2C s2c = 4;\
}\
\
        Copied!\
\
class Program : public MMSPI_Qot, public MMSPI_Trd, public MMSPI_Conn\
{\
public:\
\
	Program() {\
		m_pTrdApi = MMAPI::CreateTrdApi();\
		m_pTrdApi->RegisterTrdSpi(this);\
		m_pTrdApi->RegisterConnSpi(this);\
	}\
\
	~Program() {\
		if (m_pTrdApi != nullptr)\
		{\
			m_pTrdApi->UnregisterTrdSpi();\
			m_pTrdApi->UnregisterConnSpi();\
			MMAPI::ReleaseTrdApi(m_pTrdApi);\
			m_pTrdApi = nullptr;\
		}\
	}\
\
	void Start() {\
		m_pTrdApi->InitConnect("127.0.0.1", 11111, false);\
	}\
\
	virtual void OnInitConnect(MMAPI_Conn* pConn, moomoo::i64_t nErrCode, const char* strDesc) {\
		cout << "connect" << endl;\
\
		// construct request message\
		Trd_GetOrderFee::Request req;\
		Trd_GetOrderFee::C2S *c2s = req.mutable_c2s();\
		Trd_Common::TrdHeader *header = c2s->mutable_header();\
		header->set_accid(281756455983234005);\
		header->set_trdenv(1);\
		header->set_trdmarket(1);\
		c2s->add_orderidexlist("20240410_900053_OD|kSoBjXk8SRhW4aJfWHwAmrhzYFyJS");\
\
        m_GetOrderFeeSerialNo = m_pTrdApi->GetOrderFee(req);\
        cout << "Request GetOrderFee SerialNo: " << m_GetOrderFeeSerialNo << endl;\
	}\
\
	virtual void OnReply_GetOrderFee(moomoo::u32_t nSerialNo, const Trd_GetOrderList::Response &stRsp){\
        if(nSerialNo == m_GetOrderListSerialNo)\
        {\
            cout << "OnReply_GetOrderFee SerialNo: " << nSerialNo << endl;\
			// print response\
			// ProtoBufToBodyData and UTF8ToLocal refer to tool.h in Samples\
            string resp_str;\
            ProtoBufToBodyData(stRsp, resp_str);\
            cout << UTF8ToLocal(resp_str) << endl;\
        }\
	}\
\
protected:\
	MMAPI_Trd *m_pTrdApi;\
\
    moomoo::u32_t m_GetOrderListSerialNo;\
};\
\
int32_t main(int32_t argc, char** argv)\
{\
	MMAPI::Init();\
\
	{\
		Program program;\
		program.Start();\
		getchar();\
	}\
\
	protobuf::ShutdownProtobufLibrary();\
	MMAPI::UnInit();\
	return 0;\
}\
\
        Copied!\
\
connect\
Request_GetOrderFee SerialNo: 4\
OnReply_GetOrderFee SerialNo: 4\
{\
	"retType": 0,\
	"retMsg": "",\
	"errCode": 0,\
	"s2c": {\
		"header": {\
			"trdEnv": 1,\
			"accID": "281756455983234005",\
			"trdMarket": 1\
		},\
		"orderFeeList": [{\
			"orderIDEx": "20240410_900053_OD|kSoBjXk8SRhW4aJfWHwAmrhzYFyJS",\
			"feeAmount": 24.27,\
			"feeList": [{\
				"title": "Commission",\
				"value": 3\
			},\
			{\
				"title": "Platform Fee",\
				"value": 15\
			},\
			{\
				"title": "Trading Tariff",\
				"value": 0\
			},\
			{\
				"title": "Settlement Fee",\
				"value": 2\
			},\
			{\
				"title": "Stamp Duty",\
				"value": 4\
			},\
			{\
				"title": "Trading Fee",\
				"value": 0.18\
			},\
			{\
				"title": "SFC Levy",\
				"value": 0.09\
			},\
			{\
				"title": "FRC Levy",\
				"value": 0\
			}]\
		}]\
	}\
}\
\
        Copied!\
\
message C2S\
{\
    required Trd_Common.TrdHeader header = 1; //Transaction common header\
    repeated string orderIdExList = 2; // Server order id\
}\
\
message Request\
{\
    required C2S c2s = 1;\
}\
\
        Copied!\
\
message S2C\
{\
    required Trd_Common.TrdHeader header = 1; //Transaction common header\
    repeated Trd_Common.OrderFee orderFeeList = 2; //Order fee list\
}\
\
message Response\
{\
    //The following 3 fields are available in all protocols, and the notes are in InitConnect.proto\
    required int32 retType = 1 [default = -400];\
    optional string retMsg = 2;\
    optional int32 errCode = 3;\
\
    optional S2C s2c = 4;\
}\
\
        Copied!\
\
import mmWebsocket from "moomoo-api";\
import { mmCmdID } from "moomoo-api";\
import { Common, Qot_Common, Trd_Common } from "moomoo-api/proto";\
import beautify from "js-beautify";\
\
function TrdGetOrderList(){\
    const { RetType } = Common\
    const { TrdEnv, TrdMarket } = Trd_Common\
    let [addr, port, enable_ssl, key] = ["127.0.0.1", 33333, false, 'ec16fde057a2e7a0'];\
    let websocket = new mmWebsocket();\
\
    websocket.onlogin = (ret, msg)=>{\
        if (ret) {\
            websocket.GetAccList({\
                c2s: {\
                    userID: 0,\
                },\
            }).then((res) => {\
                let { retType,s2c: { accList } } = res\
                if(retType == RetType.RetType_Succeed){\
                    let acc = accList.filter((item)=>{\
                        return item.trdEnv == TrdEnv.TrdEnv_Simulate && item.trdMarketAuthList.some((auth)=>{ return auth == TrdMarket.TrdMarket_HK})\
                    })[0]; // The sample takes the first HK paper trading environment account\
\
                    const req = {\
                        c2s: {\
                            header: {\
                                trdEnv: acc.trdEnv,\
                                accID: acc.accID,\
                                trdMarket: TrdMarket.TrdMarket_HK,\
                            },\
                        },\
                    };\
\
                    websocket.GetOrderFee(req)\
                    .then((res) => {\
                        let { errCode, retMsg, retType,s2c } = res\
                        console.log("GetOrderFee: errCode %d, retMsg %s, retType %d", errCode, retMsg, retType);\
                        if(retType == RetType.RetType_Succeed){\
                            let data = beautify(JSON.stringify(s2c), {\
                                indent_size: 2,\
                                space_in_empty_paren: true,\
                            });\
                            console.log(data);\
                        }\
                    })\
                    .catch((error) => {\
                        console.log("error:", error);\
                    });\
\
                }\
            })\
            .catch((error) => {\
                console.log("GetAccList error:", error);\
            });\
        } else {\
            console.log("error", msg);\
        }\
    };\
\
    websocket.start(addr, port, enable_ssl, key);\
\
    // After using the connection, remember to close it to prevent the number of connections from running out\
    setTimeout(()=>{\
        websocket.stop();\
        console.log("stop");\
    }, 5000); // Set the script to receive OpenD push duration to 5 seconds\
}\
\
        Copied!\
\
GetOrderFee: errCode 0, retMsg , retType 0\
{\
  "header": {\
    "trdEnv": 1,\
    "accID": "281756455988249902",\
    "trdMarket": 1\
  },\
  "orderFeeList": [{\
    "orderIDEx": "20210913_5915950_OD|pM+9NqXZAaxnZYpScrsjT4zHWtlk1",\
    "feeAmount": 522700.6,\
    "feeList": [\
        {\
            "title":"...",\
            "value":"...",\
        }, ...,{\
            "title":"...",\
            "value":"...",\
        },\
    ]\
  }, ..., {\
    "orderIDEx": "20210913_5915950_OD|rILqM3WaKl2rXYpRYuigcJmBKtRld",\
    "feeAmount": 67356.8,\
    "feeList": [\
        {\
            "title":"...",\
            "value":"...",\
        }, ...,{\
            "title":"...",\
            "value":"...",\
        },\
    ]\
  }]\
}\
stop\
\
        Copied!\
\

## Overview

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/trade/overview.html


- 裸协议

| Module | Interface Name | Function Description |
| --- | --- | --- |
| Account | [get\_acc\_list](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-acc-list.html) | Get account list |
| [unlock\_trade](https://openapi.moomoo.com/moomoo-api-doc/en/trade/unlock.html) | Unlock trading |
| Asset and Position | [accinfo\_query](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-funds.html) | Get account financial information |
| [acctradinginfo\_query](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-max-trd-qtys.html) | Get maximum tradable quantity |
| [position\_list\_query](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-position-list.html) | Get positions list |
| [Trd\_GetMarginRatio](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-margin-ratio.html) | Get margin data |
| [Get Cash Flow Summary](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-acc-cash-flow.html) | Get Account Cash Flow Data<br><br>Minimum version requirement：9.1.5108 |
| Order | [place\_order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/place-order.html) | Place order |
| [modify\_order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/modify-order.html) | Modify or cancel order |
| [order\_list\_query](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-order-list.html) | Get order list |
| [order\_fee\_query](https://openapi.moomoo.com/moomoo-api-doc/en/trade/order-fee-query.html) | Get order fees<br><br>Minimum version requirement: 8.2.4218 |
| [history\_order\_list\_query](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-history-order-list.html) | Get historical order list |
| [TradeOrderHandlerBase](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order.html) | Order callback |
| [SubAccPush](https://openapi.moomoo.com/moomoo-api-doc/en/trade/sub-acc-push.html) | Trade data callback |
| Deal | [deal\_list\_query](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-order-fill-list.html) | Get today's executed trades |
| [history\_deal\_list\_query](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-history-order-fill-list.html) | Get historical executed trades |
| [TradeDealHandlerBase](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order-fill.html) | Trade execution callback |

| Module | Interface Name | Function Description |
| --- | --- | --- |
| Account | [GetAccList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-acc-list.html) | Get account list |
| [UnlockTrade](https://openapi.moomoo.com/moomoo-api-doc/en/trade/unlock.html) | Lock or unlock the trade |
| Asset and Position | [GetFunds](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-funds.html) | Get account funds |
| [GetMaxTrdQtys](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-max-trd-qtys.html) | Get the maximum number of trade |
| [GetPositionList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-position-list.html) | Get account positions |
| [Trd\_GetMarginRatio](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-margin-ratio.html) | Get margin data |
| [Get Cash Flow Summary](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-acc-cash-flow.html) | Get Account Cash Flow Data<br><br>Minimum version requirement：9.1.5108 |
| Order | [PlaceOrder](https://openapi.moomoo.com/moomoo-api-doc/en/trade/place-order.html) | Place order |
| [ModifyOrder](https://openapi.moomoo.com/moomoo-api-doc/en/trade/modify-order.html) | Modify order |
| [GetOrderList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-order-list.html) | Get order list |
| [GetOrderFee](https://openapi.moomoo.com/moomoo-api-doc/en/trade/order-fee-query.html) | Get order fee<br><br>Minimum version requirement: 8.2.4218 |
| [GetHistoryOrderList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-history-order-list.html) | Get historical order list |
| [UpdateOrder](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order.html) | Push notification of order status changes |
| [SubAccPush](https://openapi.moomoo.com/moomoo-api-doc/en/trade/sub-acc-push.html) | Subscribe to the trade push data of the account |
| Deal | [GetOrderFillList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-order-fill-list.html) | Get a list of deal |
| [GetHistoryOrderFillList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-history-order-fill-list.html) | Get historical deal list |
| [OnPush\_UpdateOrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order-fill.html) | Push deal notification |

| Module | Interface Name | Function Description |
| --- | --- | --- |
| Account | [getAccList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-acc-list.html) | Get account list |
| [unlockTrade](https://openapi.moomoo.com/moomoo-api-doc/en/trade/unlock.html) | Lock or unlock the trade |
| Asset and Position | [getFunds](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-funds.html) | Get account funds |
| [getMaxTrdQtys](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-max-trd-qtys.html) | Get the maximum number of trade |
| [getPositionList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-position-list.html) | Get account positions |
| [Trd\_GetMarginRatio](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-margin-ratio.html) | Get margin data |
| [Get Cash Flow Summary](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-acc-cash-flow.html) | Get Account Cash Flow Data<br><br>Minimum version requirement：9.1.5108 |
| Order | [placeOrder](https://openapi.moomoo.com/moomoo-api-doc/en/trade/place-order.html) | Place order |
| [modifyOrder](https://openapi.moomoo.com/moomoo-api-doc/en/trade/modify-order.html) | Modify order |
| [getOrderList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-order-list.html) | Get order list |
| [getOrderFee](https://openapi.moomoo.com/moomoo-api-doc/en/trade/order-fee-query.html) | Get order fee<br><br>Minimum version requirement: 8.2.4218 |
| [getHistoryOrderList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-history-order-list.html) | Get historical order list |
| [updateOrder](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order.html) | Push notification of order status changes |
| [subAccPush](https://openapi.moomoo.com/moomoo-api-doc/en/trade/sub-acc-push.html) | Subscribe to the trade push data of the account |
| Deal | [getOrderFillList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-order-fill-list.html) | Get a list of deal |
| [getHistoryOrderFillList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-history-order-fill-list.html) | Get historical deal list |
| [onPush\_UpdateOrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order-fill.html) | Push deal notification |

| Module | Interface Name | Function Description |
| --- | --- | --- |
| Account | [GetAccList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-acc-list.html) | Get account list |
| [UnlockTrade](https://openapi.moomoo.com/moomoo-api-doc/en/trade/unlock.html) | Lock or unlock the trade |
| Asset and Position | [GetFunds](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-funds.html) | Get account funds |
| [GetMaxTrdQtys](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-max-trd-qtys.html) | Get the maximum number of trade |
| [GetPositionList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-position-list.html) | Get account positions |
| [Trd\_GetMarginRatio](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-margin-ratio.html) | Get margin data |
| [Get Cash Flow Summary](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-acc-cash-flow.html) | Get Account Cash Flow Data<br><br>Minimum version requirement：9.1.5108 |
| Order | [PlaceOrder](https://openapi.moomoo.com/moomoo-api-doc/en/trade/place-order.html) | Place order |
| [ModifyOrder](https://openapi.moomoo.com/moomoo-api-doc/en/trade/modify-order.html) | Modify order |
| [GetOrderList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-order-list.html) | Get order list |
| [GetOrderFee](https://openapi.moomoo.com/moomoo-api-doc/en/trade/order-fee-query.html) | Get order fee<br><br>Minimum version requirement: 8.2.4218 |
| [GetHistoryOrderList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-history-order-list.html) | Get historical order list |
| [UpdateOrder](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order.html) | Push notification of order status changes |
| [SubAccPush](https://openapi.moomoo.com/moomoo-api-doc/en/trade/sub-acc-push.html) | Subscribe to the trade push data of the account |
| Deal | [GetOrderFillList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-order-fill-list.html) | Get a list of deal |
| [GetHistoryOrderFillList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-history-order-fill-list.html) | Get historical deal list |
| [OnPush\_UpdateOrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order-fill.html) | Push deal notification |

| Module | Interface Name | Function Description |
| --- | --- | --- |
| Account | [GetAccList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-acc-list.html) | Get account list |
| [UnlockTrade](https://openapi.moomoo.com/moomoo-api-doc/en/trade/unlock.html) | Lock or unlock the trade |
| Asset and Position | [GetFunds](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-funds.html) | Get account funds |
| [GetMaxTrdQtys](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-max-trd-qtys.html) | Get the maximum number of trade |
| [GetPositionList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-position-list.html) | Get account positions |
| [Trd\_GetMarginRatio](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-margin-ratio.html) | Get margin data |
| [Get Cash Flow Summary](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-acc-cash-flow.html) | Get Account Cash Flow Data<br><br>Minimum version requirement：9.1.5108 |
| Order | [PlaceOrder](https://openapi.moomoo.com/moomoo-api-doc/en/trade/place-order.html) | Place order |
| [ModifyOrder](https://openapi.moomoo.com/moomoo-api-doc/en/trade/modify-order.html) | Modify order |
| [GetOrderList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-order-list.html) | Get order list |
| [GetOrderFee](https://openapi.moomoo.com/moomoo-api-doc/en/trade/order-fee-query.html) | Get order fee<br><br>Minimum version requirement: 8.2.4218 |
| [GetHistoryOrderList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-history-order-list.html) | Get historical order list |
| [UpdateOrder](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order.html) | Push notification of order status changes |
| [SubAccPush](https://openapi.moomoo.com/moomoo-api-doc/en/trade/sub-acc-push.html) | Subscribe to the trade push data of the account |
| Deal | [GetOrderFillList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-order-fill-list.html) | Get a list of deal |
| [GetHistoryOrderFillList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-history-order-fill-list.html) | Get historical deal list |
| [OnPush\_UpdateOrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order-fill.html) | Push deal notification |

| Module | Protocol ID | Protobuf File | Description |
| --- | --- | --- | --- |
| Account | 2001 | [Trd\_GetAccList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-acc-list.html) | Get a list of accounts |
| 2005 | [Trd\_UnlockTrade](https://openapi.moomoo.com/moomoo-api-doc/en/trade/unlock.html) | Lock or unlock the trade |
| Asset and Position | 2101 | [Trd\_GetFunds](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-funds.html) | Get account funds |
| 2111 | [Trd\_GetMaxTrdQtys](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-max-trd-qtys.html) | Get the maximum number of trade |
| 2102 | [Trd\_GetPositionList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-position-list.html) | Get account positions |
| 2223 | [Trd\_GetMarginRatio](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-margin-ratio.html) | Get margin data |
| 2226 | [Get Cash Flow Summary](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-acc-cash-flow.html) | Get Account Cash Flow Data<br><br>Minimum version requirement：9.1.5108 |
| Order | 2202 | [Trd\_PlaceOrder](https://openapi.moomoo.com/moomoo-api-doc/en/trade/place-order.html) | Place order |
| 2205 | [Trd\_ModifyOrder](https://openapi.moomoo.com/moomoo-api-doc/en/trade/modify-order.html) | Modify order |
| 2201 | [Trd\_GetOrderList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-order-list.html) | Get order list |
| 2225 | [Trd\_GetOrderFee](https://openapi.moomoo.com/moomoo-api-doc/en/trade/order-fee-query.html) | Get order fee<br><br>Minimum version requirement: 8.2.4218 |
| 2221 | [Trd\_GetHistoryOrderList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-history-order-list.html) | Get historical order list |
| 2208 | [Trd\_UpdateOrder](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order.html) | Push notification of order status changes |
| 2008 | [Trd\_SubAccPush](https://openapi.moomoo.com/moomoo-api-doc/en/trade/sub-acc-push.html) | Subscribe to the trade push data of the account |
| Deal | 2211 | [Trd\_GetOrderFillList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-order-list.html) | Get a list of deal |
| 2222 | [Trd\_GetHistoryOrderFillList](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-history-order-fill-list.html) | Get historical deal list |
| 2218 | [Trd\_UpdateOrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order-fill.html) | Push deal notification |

←
[Quotation Definitions](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html)[Transaction Objects](https://openapi.moomoo.com/moomoo-api-doc/en/trade/base.html)
→

## Place Orders

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/trade/place-order.html


`place_order(price, qty, code, trd_side, order_type=OrderType.NORMAL, adjust_limit=0, trd_env=TrdEnv.REAL, acc_id=0, acc_index=0, remark=None, time_in_force=TimeInForce.DAY, fill_outside_rth=False, aux_price=None, trail_type=None, trail_value=None, trail_spread=None, session=Session.NONE, jp_acc_type=SubAccType.JP_GENERAL, position_id=NONE)`

- **Description**

Place order

Tips

The Python API is synchronous, but the network transport is asynchronous. When the receiving time interval is very short between the response packet of place\_order and [Order Fill Push Callback](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order-fill.html) or [Order Push Callback](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order.html), it may happen that the response packet of place\_order returns first, but the callback function is called first. For example: [Order Push Callback](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order.html) may be called first, and then the place\_order interface returns.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| price | float | Order price. <br><br>  - When the order is a market order or auction order type, you still need to pass parameters, and price can be passed any value.<br>  - Precision:<br>    - Futures: 8 integer digits, 9 decimal places, supporting negative prices.<br>    - US stock options: 2 decimal places.<br>    - US stocks: up to $1, allowing 4 decimal places.<br>    - Others: 3 decimal places, round off excess digits. |
| qty | float | Order quantity. <br><br>The unit of options and futures is "contract". |
| code | str | Code. <br><br>If it is the future main code, it will be automatically converted to the actual corresponding contract code. |
| trd\_side | [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832) | Transaction direction. |
| order\_type | [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245) | Order type. |
| adjust\_limit | float | Price adjustment range. <br><br>OpenD will automatically adjust the incoming price to the legal price. <br>  - Positive numbers represent upward adjustments, and negative numbers represent downward adjustments. <br>  - For example: 0.015 means upward adjustment and the amplitude does not exceed 1.5%; -0.01 means downward adjustment and the amplitude does not exceed 1%. The default 0 means no adjustment. |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
| acc\_id | int | Trading account ID. <br><br>  - When acc\_id is 0, the account specified by acc\_index is chosen.<br>  - When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen.<br>  - Using acc\_id to query and trade is strongly recommended, acc\_index will change when adding/closing an account, result in the account you specify is inconsistent with the actual trading account. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |
| remark | str | Remark. <br><br>The maximum length after converting to utf8 is 64 bytes. <br>This remark field will be attached to the order to facilitate you to identify the order. |
| time\_in\_force | [TimeInForce](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7678) | Valid period. <br><br>Market orders of HK market, A-share market or global futures, only support _Day_ |
| fill\_outside\_rth | bool | Whether allow to execute the order during pre-market or after-hours market trades. <br><br>For HK pre-opening market and US pre/post-market. And market orders are only supported in regular trading hours. |
| aux\_price | float | Trigger price. <br><br>  - If order type is **Stop**, **Stop Limit**, **Market if Touched**, or **Limit if Touched**, aux\_price must be set.<br>  - Same as price, round off excess digits. |
| trail\_type | [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12) | Trailing type. <br><br>If order type is **Trailing Stop**, or **Trailing Stop Limit**, trail\_type must be set. |
| trail\_value | float | Trailing amount/ratio. <br><br>  - If order type is **Trailing Stop**, or **Trailing Stop Limit**, trail\_value must be set.<br>  - If the trail type is PERCENTAGE, this field is in percentage form, so 20 is equivalent to 20%. <br>  - If the trail type is PRICE, same as price for integer places. For US stock options is fixed to 2 decimal places, while for US stocks it is 4; for others, same as price. Round off excess digits.<br>  - If the trail type is PERCENTAGE, this value will be rounded to 2 decimals. The integer places are same as price. |
| trail\_spread | float | Specify spread. <br><br>  - If order type is **Trailing Stop Limit**, trail\_spread must be set.<br>  - The price will be rounded to 3 decimals for securities account, and 9 decimals for futures account. |
| session | [Session](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8688) | US stocks Trading Session <br><br>Applied to US stocks, **RTH**, **ETH**, **OVERNIGHT**, **ALL** can be allowed. |
| jp\_acc\_type | [SubAccType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3947) | JP sub account type <br><br>Only applicable for Moomoo JP |
| position\_id | int | Position ID <br><br>  - It is used for closing a position for Moomoo JP<br>  - It can be obtained by [Get Positions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-position-list.html) interface. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, order list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Order list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | trd\_side | [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832) | Trading direction. |
    | order\_type | [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245) | Order type. |
    | order\_status | [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074) | Order status. |
    | order\_id | str | Order ID. |
    | code | str | Security code. |
    | stock\_name | str | Security name. |
    | qty | float | Order quantity. <br><br>Option futures unit is "Contract". |
    | price | float | Order price. <br><br>3 decimal place accuracy, excess part will be rounded. |
    | create\_time | str | Create time. <br><br>Format: yyyy-MM-dd HH:mm:ss<br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
    | updated\_time | str | Last update time. <br><br>Format: yyyy-MM-dd HH:mm:ss<br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149).<br>The unit of option futures is "Contract". |
    | dealt\_qty | float | Deal quantity <br><br>Option futures unit is "Contract". |
    | dealt\_avg\_price | float | Average deal price. <br><br>No precision limit. |
    | last\_err\_msg | str | The last error description. <br><br>If there is an error, the cause of the last error will be returned.<br>If there is no error, an empty string will be returned. |
    | remark | str | Identification of remarks when placing an order. <br><br>Refer to remark in the [place\_order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/place-order.html) interface parameters for details. |
    | time\_in\_force | [TimeInForce](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7678) | Valid period. |
    | fill\_outside\_rth | bool | Whether pre-market and after-hours are needed. <br><br>For HK pre-opening market and US pre/post-market.<br>True: need.<br>False: not need. |
    | session | [Session](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8688) | Order session (Only applied to US stocks) |
    | aux\_price | float | Traget price. |
    | trail\_type | [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12) | Trailing type. |
    | trail\_value | float | Trailing amount/ratio. |
    | trail\_spread | float | Specify spread. |
- **Example**

```python
from futu import *
pwd_unlock = '123456'
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.HK, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUSECURITIES)
ret, data = trd_ctx.unlock_trade(pwd_unlock)  # If you use a live trading account to place an order, you need to unlock the account first. The example here is to place an order on a paper trading account, and unlocking is not necessary.
if ret == RET_OK:
    ret, data = trd_ctx.place_order(price=510.0, qty=100, code="HK.00700", trd_side=TrdSide.BUY, trd_env=TrdEnv.SIMULATE, session=Session.NONE)
    if ret == RET_OK:
        print(data)
        print(data['order_id'][0])  # Get the order ID of the placed order
        print(data['order_id'].values.tolist())  # Convert to list
    else:
        print('place_order error: ', data)
else:
    print('unlock_trade failed: ', data)
trd_ctx.close()
```

- **Output**

```python

       code stock_name trd_side order_type order_status           order_id    qty  price          create_time         updated_time  dealt_qty  dealt_avg_price last_err_msg remark time_in_force fill_outside_rth session aux_price trail_type trail_value trail_spread currency
0  HK.00700       Tencent      BUY     NORMAL   SUBMITTING  38196006548709500  100.0  420.0  2021-11-04 11:38:19  2021-11-04 11:38:19        0.0              0.0                               DAY              N/A       N/A     N/A     N/A         N/A          N/A      HKD
['38196006548709500']
```


## Trd\_PlaceOrder.proto


- **Description**

Place an order

- **Parameters**

> - For request packet ID, refer to [PacketID](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#1903)
> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For transaction direction, refer to [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832)
> - For order type, refer to [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245)
> - For stock market, refer to [TrdSecMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4905)
> - For how long the order remains in effect, refer to [TimeInForce](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7678)
> - For trail type, refer to [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint PlaceOrder(TrdPlaceOrder.Request req);`

`virtual void OnReply_PlaceOrder(FTAPI_Conn client, uint nSerialNo, TrdPlaceOrder.Response rsp);`

- **Description**

Place an order

- **Parameters**

> - For request packet ID, refer to [PacketID](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#1903)
> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For transaction direction, refer to [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832)
> - For order type, refer to [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245)
> - For stock market, refer to [TrdSecMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4905)
> - For how long the order remains in effect, refer to [TimeInForce](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7678)
> - For trail type, refer to [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int placeOrder(TrdPlaceOrder.Request req);`

`void onReply_PlaceOrder(FTAPI_Conn client, int nSerialNo, TrdPlaceOrder.Response rsp);`

- **Description**

Place an order

- **Parameters**

> - For request packet ID, refer to [PacketID](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#1903)
> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For transaction direction, refer to [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832)
> - For order type, refer to [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245)
> - For stock market, refer to [TrdSecMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4905)
> - For how long the order remains in effect, refer to [TimeInForce](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7678)
> - For trail type, refer to [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t PlaceOrder(const Trd_PlaceOrder::Request &stReq);`

`virtual void OnReply_PlaceOrder(Futu::u32_t nSerialNo, const Trd_PlaceOrder::Response &stRsp) = 0;`

- **Description**

Place an order

- **Parameters**

> - For request packet ID, refer to [PacketID](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#1903)
> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For transaction direction, refer to [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832)
> - For order type, refer to [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245)
> - For stock market, refer to [TrdSecMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4905)
> - For how long the order remains in effect, refer to [TimeInForce](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7678)
> - For trail type, refer to [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`PlaceOrder(req);`

- **Description**

Place an order

- **Parameters**

> - For request packet ID, refer to [PacketID](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#1903)
> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For transaction direction, refer to [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832)
> - For order type, refer to [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245)
> - For stock market, refer to [TrdSecMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4905)
> - For how long the order remains in effect, refer to [TimeInForce](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7678)
> - For trail type, refer to [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 15 requests per 30 seconds under a single account ID (acc\_id), and the interval between two consecutive requests cannot be less than 0.02 seconds.
- When using live trading accounts, you need to [unlock trade](https://openapi.moomoo.com/moomoo-api-doc/en/trade/unlock.html) **before** calling _Place Order_ interface, but when using paper trading accounts, you do not need to [unlock trade](https://openapi.moomoo.com/moomoo-api-doc/en/trade/unlock.html).

Tips

- Required parameters for each order type: [Click here](https://openapi.moomoo.com/moomoo-api-doc/en/qa/trade.html#8229) to learn more.
- Each broker sets limits on shares or amounts for single orders of various trading products. Exceeding these limits may result in order failures: [Click here](https://openapi.moomoo.com/moomoo-api-doc/en/qa/trade.html#8229) to learn more.
- Locking position is not supported for **shortable securities**, that means you can not hold a long position and a short position at the same time.
- If you want to **close out position** of a **shortable securities**, you need to get the direction of the position and send an opposite order with the same quantity.
- If you want to **reversing trade** of a **shortable securities**, there are 2 steps: 1. you need to get the direction of the position and send an opposite order with the same quantity. 2. Send an opposite order again to open the reverse trade.
For example: If you want to reverse trade of 1 long position of HK.HSI2012, you need to close the long position first and then sell short the contract.
- Only limit orders can be allowed during US stocks 24 Hour Trading Hour. You can choose Day, Good-Till-Cancelled (GTC) as the time-in-force. 24-hour order runs from Sunday 8:00 PM to Friday 8:00 PM ET, covering regular trading hours plus pre-market, post-market, and overnight trading sessions. You can place orders anytime during this period.
- Paper trading of US stocks does not support irregular trading hours (including pre/post-market and overnight).

`place_order(price, qty, code, trd_side, order_type=OrderType.NORMAL, adjust_limit=0, trd_env=TrdEnv.REAL, acc_id=0, acc_index=0, remark=None, time_in_force=TimeInForce.DAY, fill_outside_rth=False, aux_price=None, trail_type=None, trail_value=None, trail_spread=None, session=Session.NONE, jp_acc_type=SubAccType.JP_GENERAL, position_id=NONE)`

- **Description**

Place order

Tips

The Python API is synchronous, but the network transport is asynchronous. When the receiving time interval is very short between the response packet of place\_order and [Order Fill Push Callback](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order-fill.html) or [Order Push Callback](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order.html), it may happen that the response packet of place\_order returns first, but the callback function is called first. For example: [Order Push Callback](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order.html) may be called first, and then the place\_order interface returns.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| price | float | Order price. <br><br>  - When the order is a market order or auction order type, you still need to pass parameters, and price can be passed any value.<br>  - Precision:<br>    - Futures: 8 integer digits, 9 decimal places, supporting negative prices.<br>    - US stock options: 2 decimal places.<br>    - US stocks: up to $1, allowing 4 decimal places.<br>    - Others: 3 decimal places, round off excess digits. |
| qty | float | Order quantity. <br><br>The unit of options and futures is "contract". |
| code | str | Code. <br><br>If it is the future main code, it will be automatically converted to the actual corresponding contract code. |
| trd\_side | [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832) | Transaction direction. |
| order\_type | [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245) | Order type. |
| adjust\_limit | float | Price adjustment range. <br><br>OpenD will automatically adjust the incoming price to the legal price. <br>  - Positive numbers represent upward adjustments, and negative numbers represent downward adjustments. <br>  - For example: 0.015 means upward adjustment and the amplitude does not exceed 1.5%; -0.01 means downward adjustment and the amplitude does not exceed 1%. The default 0 means no adjustment. |
| trd\_env | [TrdEnv](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#48) | Trading environment. |
| acc\_id | int | Trading account ID. <br><br>  - When acc\_id is 0, the account specified by acc\_index is chosen.<br>  - When acc\_id is set the ID number (not 0), the account specified by acc\_id is chosen.<br>  - Using acc\_id to query and trade is strongly recommended, acc\_index will change when adding/closing an account, result in the account you specify is inconsistent with the actual trading account. |
| acc\_index | int | The account number in the trading account list. <br><br>The default is 0, which means the first trading account. |
| remark | str | Remark. <br><br>The maximum length after converting to utf8 is 64 bytes. <br>This remark field will be attached to the order to facilitate you to identify the order. |
| time\_in\_force | [TimeInForce](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7678) | Valid period. <br><br>Market orders of HK market, A-share market or global futures, only support _Day_ |
| fill\_outside\_rth | bool | Whether allow to execute the order during pre-market or after-hours market trades. <br><br>For HK pre-opening market and US pre/post-market. And market orders are only supported in regular trading hours. |
| aux\_price | float | Trigger price. <br><br>  - If order type is **Stop**, **Stop Limit**, **Market if Touched**, or **Limit if Touched**, aux\_price must be set.<br>  - Same as price. Round off excess digits. |
| trail\_type | [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12) | Trailing type. <br><br>If order type is **Trailing Stop**, or **Trailing Stop Limit**, trail\_type must be set. |
| trail\_value | float | Trailing amount/ratio. <br><br>  - If order type is **Trailing Stop**, or **Trailing Stop Limit**, trail\_value must be set.<br>  - If the trail type is PERCENTAGE, this field is in percentage form, so 20 is equivalent to 20%. <br>  - If the trail type is PRICE, same as price for integer places. For US stock options is fixed to 2 decimal places, while for US stocks it is 4; for others, same as price. Round off excess digits.<br>  - If the trail type is PERCENTAGE, this value will be rounded to 2 decimals. The integer places are same as price. |
| trail\_spread | float | Specify spread. <br><br>  - If order type is **Trailing Stop Limit**, trail\_spread must be set.<br>  - The price will be rounded to 3 decimals for securities account, and 9 decimals for futures account. |
| session | [Session](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8688) | US stocks Trading Session <br><br>Applied to US stocks, **RTH**, **ETH**, **OVERNIGHT**, **ALL** can be allowed. |
| jp\_acc\_type | [SubAccType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#3947) | JP sub account type <br><br>Only applicable for Moomoo JP |
| position\_id | int | Position ID <br><br>  - It is used for closing a position for Moomoo JP<br>  - It can be obtained by [Get Positions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-position-list.html) interface. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, order list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Order list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | trd\_side | [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832) | Trading direction. |
    | order\_type | [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245) | Order type. |
    | order\_status | [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074) | Order status. |
    | order\_id | str | Order ID. |
    | code | str | Security code. |
    | stock\_name | str | Security name. |
    | qty | float | Order quantity. <br><br>Option futures unit is "Contract". |
    | price | float | Order price. <br><br>3 decimal place accuracy, excess part will be rounded. |
    | create\_time | str | Create time. <br><br>Format: yyyy-MM-dd HH:mm:ss<br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
    | updated\_time | str | Last update time. <br><br>Format: yyyy-MM-dd HH:mm:ss<br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149).<br>The unit of option futures is "Contract". |
    | dealt\_qty | float | Deal quantity <br><br>Option futures unit is "Contract". |
    | dealt\_avg\_price | float | Average deal price. <br><br>No precision limit. |
    | last\_err\_msg | str | The last error description. <br><br>If there is an error, the cause of the last error will be returned.<br>If there is no error, an empty string will be returned. |
    | remark | str | Identification of remarks when placing an order. <br><br>Refer to remark in the [place\_order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/place-order.html) interface parameters for details. |
    | time\_in\_force | [TimeInForce](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7678) | Valid period. |
    | fill\_outside\_rth | bool | Whether pre-market and after-hours are needed. <br><br>For HK pre-opening market and US pre/post-market.<br>True: need.<br>False: not need. |
    | session | [Session](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8688) | Order session (Only applied to US stocks) |
    | aux\_price | float | Traget price. |
    | trail\_type | [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12) | Trailing type. |
    | trail\_value | float | Trailing amount/ratio. |
    | trail\_spread | float | Specify spread. |
- **Example**

```python
from moomoo import *
pwd_unlock = '123456'
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUINC)
ret, data = trd_ctx.unlock_trade(pwd_unlock)  # If you use a live trading account to place an order, you need to unlock the account first. The example here is to place an order on a paper trading account, and unlocking is not necessary.
if ret == RET_OK:
    ret, data = trd_ctx.place_order(price=510.0, qty=100, code="US.AAPL", trd_side=TrdSide.BUY, trd_env=TrdEnv.SIMULATE, session=Session.NONE)
    if ret == RET_OK:
        print(data)
        print(data['order_id'][0])  # Get the order ID of the placed order
        print(data['order_id'].values.tolist())  # Convert to list
    else:
        print('place_order error: ', data)
else:
    print('unlock_trade failed: ', data)
trd_ctx.close()
```

- **Output**

```python

       code stock_name trd_side order_type order_status           order_id    qty  price          create_time         updated_time  dealt_qty  dealt_avg_price last_err_msg remark time_in_force fill_outside_rth session aux_price trail_type trail_value trail_spread currency
0  US.AAPL       Apple Inc.      BUY     NORMAL   SUBMITTING  38196006548709500  100.0  420.0  2021-11-04 11:38:19  2021-11-04 11:38:19        0.0              0.0                               DAY              N/A       N/A    N/A      N/A         N/A          N/A      USD
['38196006548709500']
```


## Trd\_PlaceOrder.proto


- **Description**

Place an order

- **Parameters**

> - For request packet ID, refer to [PacketID](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#1903)
> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For transaction direction, refer to [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832)
> - For order type, refer to [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245)
> - For stock market, refer to [TrdSecMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4905)
> - For how long the order remains in effect, refer to [TimeInForce](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7678)
> - For trail type, refer to [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint PlaceOrder(TrdPlaceOrder.Request req);`

`virtual void OnReply_PlaceOrder(MMAPI_Conn client, uint nSerialNo, TrdPlaceOrder.Response rsp);`

- **Description**

Place an order

- **Parameters**

> - For request packet ID, refer to [PacketID](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#1903)
> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For transaction direction, refer to [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832)
> - For order type, refer to [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245)
> - For stock market, refer to [TrdSecMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4905)
> - For how long the order remains in effect, refer to [TimeInForce](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7678)
> - For trail type, refer to [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int placeOrder(TrdPlaceOrder.Request req);`

`void onReply_PlaceOrder(MMAPI_Conn client, int nSerialNo, TrdPlaceOrder.Response rsp);`

- **Description**

Place an order

- **Parameters**

> - For request packet ID, refer to [PacketID](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#1903)
> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For transaction direction, refer to [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832)
> - For order type, refer to [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245)
> - For stock market, refer to [TrdSecMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4905)
> - For how long the order remains in effect, refer to [TimeInForce](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7678)
> - For trail type, refer to [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t PlaceOrder(const Trd_PlaceOrder::Request &stReq);`

`virtual void OnReply_PlaceOrder(moomoo::u32_t nSerialNo, const Trd_PlaceOrder::Response &stRsp) = 0;`

- **Description**

Place an order

- **Parameters**

> - For request packet ID, refer to [PacketID](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#1903)
> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For transaction direction, refer to [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832)
> - For order type, refer to [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245)
> - For stock market, refer to [TrdSecMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4905)
> - For how long the order remains in effect, refer to [TimeInForce](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7678)
> - For trail type, refer to [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`PlaceOrder(req);`

- **Description**

Place an order

- **Parameters**

> - For request packet ID, refer to [PacketID](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#1903)
> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For transaction direction, refer to [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832)
> - For order type, refer to [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245)
> - For stock market, refer to [TrdSecMarket](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4905)
> - For how long the order remains in effect, refer to [TimeInForce](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7678)
> - For trail type, refer to [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12)

- **Return**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 15 requests per 30 seconds under a single account ID (acc\_id), and the interval between two consecutive requests cannot be less than 0.02 seconds.
- When using live trading accounts, you need to [unlock trade](https://openapi.moomoo.com/moomoo-api-doc/en/trade/unlock.html) **before** calling _Place Order_ interface, but when using paper trading accounts, you do not need to [unlock trade](https://openapi.moomoo.com/moomoo-api-doc/en/trade/unlock.html).

Tips

- Required parameters for each order type: [Click here](https://openapi.moomoo.com/moomoo-api-doc/en/qa/trade.html#8229) to learn more.
- Each broker sets limits on shares or amounts for single orders of various trading products. Exceeding these limits may result in order failures: [Click here](https://openapi.moomoo.com/moomoo-api-doc/en/qa/trade.html#8229) to learn more.
- Locking position is not supported for **shortable securities**, that means you can not hold a long position and a short position at the same time.
- If you want to **close out position** of a **shortable securities**, you need to get the direction of the position and send an opposite order with the same quantity.
- If you want to **reversing trade** of a **shortable securities**, there are 2 steps: 1. you need to get the direction of the position and send an opposite order with the same quantity. 2. Send an opposite order again to open the reverse trade.
For example: If you want to reverse trade of 1 long position of HK.HSI2012, you need to close the long position first and then sell short the contract.
- Only limit orders can be allowed during US stocks 24 Hour Trading Hour. You can choose Day, Good-Till-Cancelled (GTC) as the time-in-force. 24-hour order runs from Sunday 8:00 PM to Friday 8:00 PM ET, covering regular trading hours plus pre-market, post-market, and overnight trading sessions. You can place orders anytime during this period.
- Paper trading of US stocks does not support irregular trading hours (including pre/post-market and overnight).

←
[Get Account Cash Flow](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-acc-cash-flow.html)[Modify or Cancel Orders](https://openapi.moomoo.com/moomoo-api-doc/en/trade/modify-order.html)
→

## Subscribe to Transaction Push

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/trade/sub-acc-push.html


Python does not need to subscribe to transaction push


## Trd\_Trade Data Callback.proto


- **Description**

Subscribe to receive pushed data from trading accounts
Specify the connection that sends the protocol to receive transaction data push (order status, transaction status, etc.)

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **协议 ID**

`uint SubAccPush(TrdSubAccPush.Request req);`

`virtual void OnReply_SubAccPush(FTAPI_Conn client, uint nSerialNo, TrdSubAccPush.Response rsp);`

- **Description**

Subscribe to receive pushed data from trading accounts
Specify the connection that sends the protocol to receive transaction data push (order status, transaction status, etc.)

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int subAccPush(TrdSubAccPush.Request req);`

`void onReply_SubAccPush(FTAPI_Conn client, int nSerialNo, TrdSubAccPush.Response rsp);`

- **Description**

Subscribe to receive pushed data from trading accounts
Specify the connection that sends the protocol to receive transaction data push (order status, transaction status, etc.)

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t SubAccPush(const Trd_SubAccPush::Request &stReq);`

`virtual void OnReply_SubAccPush(Futu::u32_t nSerialNo, const Trd_SubAccPush::Response &stRsp) = 0;`

- **Description**

Subscribe to receive pushed data from trading accounts
Specify the connection that sends the protocol to receive transaction data push (order status, transaction status, etc.)

- **Parameters**

- **Example**

- **Output**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

`SubAccPush(req);`

- **Description**

Subscribe to receive pushed data from trading accounts
Specify the connection that sends the protocol to receive transaction data push (order status, transaction status, etc.)

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Python does not need to subscribe to transaction push


## Trd\_SubAccPush.proto


- **Description**

Subscribe to receive pushed data from trading accounts
Specify the connection that sends the protocol to receive transaction data push (order status, transaction status, etc.)

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **协议 ID**

`uint SubAccPush(TrdSubAccPush.Request req);`

`virtual void OnReply_SubAccPush(MMAPI_Conn client, uint nSerialNo, TrdSubAccPush.Response rsp);`

- **Description**

Subscribe to receive pushed data from trading accounts
Specify the connection that sends the protocol to receive transaction data push (order status, transaction status, etc.)

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int subAccPush(TrdSubAccPush.Request req);`

`void onReply_SubAccPush(MMAPI_Conn client, int nSerialNo, TrdSubAccPush.Response rsp);`

- **Description**

Subscribe to receive pushed data from trading accounts
Specify the connection that sends the protocol to receive transaction data push (order status, transaction status, etc.)

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t SubAccPush(const Trd_SubAccPush::Request &stReq);`

`virtual void OnReply_SubAccPush(moomoo::u32_t nSerialNo, const Trd_SubAccPush::Response &stRsp) = 0;`

- **Description**

Subscribe to receive pushed data from trading accounts
Specify the connection that sends the protocol to receive transaction data push (order status, transaction status, etc.)

- **Parameters**

- **Example**

- **Output**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

`SubAccPush(req);`

- **Description**

Subscribe to receive pushed data from trading accounts
Specify the connection that sends the protocol to receive transaction data push (order status, transaction status, etc.)

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

←
[Get Order Fee](https://openapi.moomoo.com/moomoo-api-doc/en/trade/order-fee-query.html)[Get Today's Deals](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-order-fill-list.html)
→

## Trading Definitions

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html



## Account Risk Control Level


> **CltRiskLevel**

- `NONE`

Unknown

- `SAFE`

Safe

- `WARNING`

Warning

- `DANGER`

Danger

- `ABSOLUTE_SAFE`

Absolutely safe

- `OPT_DANGER`

Danger

Option related.

Tips

- It is recommanded to use risk\_status field to get risk status of futures account, see [CltRiskStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7469)

**CltRiskLevel**

**CltRiskLevel**

**CltRiskLevel**

**CltRiskLevel**

**CltRiskLevel**


## Currency Type


> **Currency**

- `NONE`

Unknown currency

- `HKD`

HK dollar

- `USD`

US dollar

- `CNH`

Offshore RMB

- `JPY`

Japanese Yen

- `SGD`

SG dollar

- `AUD`

Australian dollar

- `CAD`

Canadian dollar

- `MYR`

Malaysian Ringgit

**Currency**

**Currency**

**Currency**

**Currency**

**Currency**


## TrailType


**TrailType**

- `NONE`

Unknown

- `RATIO`

Trailing ratio

- `AMOUNT`

Trailing amount


## Modify Order Operation


> **ModifyOrderOp**

- `NONE`

Unknown operation

- `NORMAL`

Modify order

- `CANCEL`

Cancel

The uncompleted order will be directly cancelled from the exchange matching queue.

- `DISABLE`

Disable

  - To the exchange, DISABLE is the same as CANCEL.
  - After the order is invalid, the unfilled order will be directly withdrawn from the exchange matching queue, but the order information (such as price and quantity) will continue to be retained in Futu server, and you still can ENABLE it.

- `ENABLE`

Enable

  - Validate the invalid order. To the exchange, ENABLE is the same as placing a new order.
  - After the order is validated, the order will be re-submitted to the exchange according to the original price and quantity, and the re-validated orders need to be re-queued in the order of price priority and time priority.

- `DELETE`

Delete

Hide the order that is canceled or failed.

**ModifyOrderOp**

**ModifyOrderOp**

**ModifyOrderOp**

**ModifyOrderOp**

**ModifyOrderOp**


## Transaction Status


> **DealStatus**

- `OK`

Transaction success

- `CANCELLED`

Transaction cancelled

- `CHANGED`

Transaction changed

**OrderFillStatus**

**OrderFillStatus**

**OrderFillStatus**

**OrderFillStatus**

**OrderFillStatus**


## Order Status


> **OrderStatus**

- `NONE`

Unknown status

- `WAITING_SUBMIT`

Queued

Futu server has received your order and is preparing to submit it to the exchange.

- `SUBMITTING`

Submitting

Futu server has sent your order to the exchange, and the exchange is processing the order.

- `SUBMITTED`

Working

Order has been successfully submitted to the exchange.

- `FILLED_PART`

Partially filled

You can choose to cancel, or wait for fullly filled.

- `FILLED_ALL`

Fully filled

- `CANCELLED_PART`

Partially cancelled

- `CANCELLED_ALL`

Fully cancelled

- `FAILED`

Failed. Rejected by server.

- `DISABLED`

Deactivated

Actively operate a disabled order, this will not be submitted to the exchange.

- `DELETED`

Deleted, only unfilled orders can be deleted

The status after you actively delete the order.

**OrderStatus**

**OrderStatus**

**OrderStatus**

**OrderStatus**

**OrderStatus**


## Order Type


Tips

- [Order types supported in live trading](https://openapi.moomoo.com/moomoo-api-doc/en/qa/trade.html#7467).
- Paper trade only supports limit orders (NORMAL) and market orders (MARKET).

> **OrderType**

- `NONE`

Unknown type.

- `NORMAL`

Limit orders.

- `MARKET`

Market orders.

- `ABSOLUTE_LIMIT`

Absolute limit orders.

Only the price exactly matches before the transaction, otherwise the order will fail.

  - Example: For the next absolute limit buy order with a price of 5 dollers, the seller's price must also be 5 dollers to complete the transaction. The seller cannot complete the transaction even if it is less than 5 yuan, and the order fails. The same goes for selling.

- `AUCTION`

At-auction market orders.

Valid for HK stocks early and closing auctions only

- `AUCTION_LIMIT`

At-auction limit orders.

Valid for HK stocks early and closing auctions only. Participate in the auction, and the specified price is required to be traded.

- `SPECIAL_LIMIT`

Special limit orders.

The transaction rules are the same as enhanced limit orders, and the exchange will automatically cancel the order after partial transaction.

- `SPECIAL_LIMIT_ALL`

AON special limit orders.

The order must be fully filled, otherwise cancelled automatically.

- `STOP`

Stop orders.

- `STOP_LIMIT`

Stop Limit orders.

- `MARKET_IF_TOUCHED`

Market if Touched orders.

- `LIMIT_IF_TOUCHED`

Limit if Touched orders.

- `TRAILING_STOP`

Trailing Stop orders.

- `TRAILING_STOP_LIMIT`

Trailing Stop Limit orders.

- `TWAP_LIMIT`

Time Weighted Average Price Limit orders (HK and US securities only).

Algo orders only support order queries and do not support trading.

- `TWAP`

Time Weighted Average Price Market orders (US securities only).

Algo orders only support order queries and do not support trading.

- `VWAP_LIMIT`

Volume Weighted Average Price Limit orders (HK and US securities only).

Algo orders only support order queries and do not support trading.

- `VWAP`

Volume Weighted Average Price Market orders (US securities only).

Algo orders only support order queries and do not support trading.

**OrderType**

**OrderType**

**OrderType**

**OrderType**

Tips

- Paper trade only supports limit orders (NORMAL) and market orders (MARKET).

**OrderType**


## Position Direction


> **PositionSide**

- `NONE`

Unknown position

- `LONG`

Long position, by default

- `SHORT`

Short position

**PositionSide**

**PositionSide**

**PositionSide**

**PositionSide**

**PositionSide**


## Account Type


> **TrdAccType**

- `NONE`

Unknown type

- `CASH`

Cash account

- `MARGIN`

Margin account

- `TFSA`

Canadian TFSA account

- `RRSP`

Canadian RRSP account

- `SRRSP`

Canadian SRRSP account

- `DERIVATIVE`

Japanese derivative account

**TrdAccType**

**TrdAccType**

**TrdAccType**

**TrdAccType**

**TrdAccType**


## Trading Environment


> **TrdEnv**

- `SIMULATE`

Simulated environment

- `REAL`

Real environment

**TrdEnv**

**TrdEnv**

**TrdEnv**

**TrdEnv**

**TrdEnv**


## Transaction Market


> **TrdMarket**

- `NONE`

Unknown market

- `HK`

Hong Kong market

- `US`

US market

- `CN`

A-share market

The A-share market only supports paper trading, not live trading.

- `HKCC`

HKCC market

  - The HKCC market only supports live trading, not paper trading.
  - The HKCC market can only trade Shanghai Stock Connect and Shenzhen Stock Connect stocks. For details, please refer to HKEX [HKCC List](https://www.hkex.com.hk/mutual-market/stock-connect/eligible-stocks/%20view-all-eligible-securities?sc_lang=zh-HK).

- `FUTURES`

Futures market

- `FUTURES_SIMULATE_US`

US futures simulated market

Minimum OpenD version requirements: 7.7.3908

- `FUTURES_SIMULATE_HK`

Hong Kong futures simulated market

Minimum OpenD version requirements: 7.7.3908

- `FUTURES_SIMULATE_SG`

Singapore futures simulated market

Minimum OpenD version requirements: 7.7.3908

- `FUTURES_SIMULATE_JP`

Japan futures simulated market

Minimum OpenD version requirements: 7.7.3908

- `HKFUND`

HK fund market

Minimum OpenD version requirements: 8.2.4218

- `USFUND`

US fund market

Minimum OpenD version requirements: 8.2.4218

- `SG`

SG market

Minimum OpenD version requirements: 9.0.5008

- `JP`

JP market

Minimum OpenD version requirements: 9.0.5008

- `AU`

AU market

Minimum OpenD version requirements: 9.0.5008

- `MY`

MY market

Minimum OpenD version requirements: 9.0.5008

- `CA`

CA market

Minimum OpenD version requirements: 9.0.5008

**TrdMarket**

**TrdMarket**

**TrdMarket**

**TrdMarket**

**TrdMarket**


## Account Status


> **TrdAccStatus**

- `ACTIVE`

Active account

- `DISABLED`

Disabled account

**TrdAccStatus**

**TrdAccStatus**

**TrdAccStatus**

**TrdAccStatus**

**TrdAccStatus**


## Account Structure


> **TrdAccRole**

- `NONE`

Unknown

- `MASTER`

Master account

- `NORMAL`

Normal account

- `IPO`

Malaysian IPO account

**TrdAccRole**

**TrdAccRole**

**TrdAccRole**

**TrdAccRole**

**TrdAccRole**


## Transaction Securities Market


**TrdSecMarket**

**TrdSecMarket**

**TrdSecMarket**

**TrdSecMarket**

**TrdSecMarket**


## Transaction Direction


> **TrdSide**

- `NONE`

Unknown direction

- `BUY`

Buy

- `SELL`

Sell

- `SELL_SHORT`

Sell short

  - Only applicable for Moomoo JP
  - Other brokers are only used for order list display and are not recommended as a direction for placing orders.

- `BUY_BACK`

Buy back

  - Only applicable for Moomoo JP
  - Other brokers are only used for order list display and are not recommended as a direction for placing orders.

**TrdSide**

**TrdSide**

**TrdSide**

**TrdSide**

**TrdSide**

Tips

It is recommanded that only use `Buy` or `Sell` as the input parameter of direction of **place\_order** interface.

`BuyBack` and `SellShort` is only used as the display field for **Get Order List** , **Get History Order List**, **Orders Push Callback**, **Get Today's Deals**, **Get Historical Deals** and **Deals Push Callback** interface.


## Order Validity Period


> **TimeInForce**

- `DAY`

Good for the day

- `GTC`

Good until cancel

**TimeInForce**

**TimeInForce**

**TimeInForce**

**TimeInForce**

**TimeInForce**


## Securities Firm to Which the Account Belongs


> **SecurityFirm**

- `NONE`

Unknown

- `FUTUSECURITIES`

FUTU HK

- `FUTUINC`

Moomoo US

- `FUTUSG`

Moomoo SG

- `FUTUAU`

Moomoo AU

- `FUTUCA`

Moomoo CA

- `FUTUMY`

Moomoo MY

- `FUTUJP`

Moomoo JP

**SecurityFirm**

**SecurityFirm**

**SecurityFirm**

**SecurityFirm**

**SecurityFirm**


## Simulate Account Type


> **SimAccType**

- `NONE`

Unknown

- `STOCK`

Stock Paper Trading

- `OPTION`

Option Paper Trading

- `FUTURES`

Futures Paper Trading

- `STOCK_AND_OPTION`

US Margin Account (Paper Trading)

**SimAccType**

**SimAccType**

**SimAccType**

**SimAccType**

**SimAccType**


## Account Risk Control Status


> **CltRiskStatus**

- `NONE`

Unknown

- `LEVEL1`

Very Safe

- `LEVEL2`

Safe

- `LEVEL3`

Safe

- `LEVEL4`

Low Risk

- `LEVEL5`

Medium Risk

- `LEVEL6`

High Risk

- `LEVEL7`

Warning

- `LEVEL8`

Margin Call

- `LEVEL9`

Margin Call

**CltRiskStatus**

**CltRiskStatus**

**CltRiskStatus**

**CltRiskStatus**

**CltRiskStatus**


## Day-trading Status


> **DtStatus**

- `NONE`

Unknown

- `Unlimited`

Unlimited

You can day trade for unlimited times. But you pay attention to your remaining day-trading buying power.

- `EM_Call`

EM-Call

You cannot initiate any new positions now. You should make your equity over $25000, or you cannot initiate any new positions for 90 days.

- `DT_Call`

DT-Call

You have an unmet day-trading margin call. And you have five business days to deposit funds to meet the DT Call to get more DTBP. If your DT Call past due, you will not be allowed to initiate any new positions for 90 days until the DT call is met.

**DTStatus**

**DTStatus**

**DTStatus**

**DTStatus**

**DTStatus**


## Cash Flow Direction


> **CashFlowDirection**

- `NONE`

Unknown

- `IN`

Cash Inflow

- `OUT`

Cash Outflow

**TrdCashFlowDirection**

**TrdCashFlowDirection**

**TrdCashFlowDirection**

**TrdCashFlowDirection**

**TrdCashFlowDirection**


## JP Sub Account Type


> **SubAccType**

- `NONE`

Unknown

- `JP_GENERAL`

General - long

- `JP_TOKUTEI`

Specified - long

- `JP_NISA_GENERAL`

General NISA

- `JP_NISA_TSUMITATE`

Tsumitate NISA

- `JP_GENERAL_SHORT`

General - short

- `JP_TOKUTEI_SHORT`

Specified - short

- `JP_HONPO_GENERAL`

Domestic Margin Trading Collateral - General

- `JP_GAIKOKU_GENERAL`

Foreign Margin Trading Collateral - General

- `JP_HONPO_TOKUTEI`

Domestic Margin Trading Collateral - Specified

- `JP_GAIKOKU_TOKUTEI`

Foreign Margin Trading Collateral - Specified

- `JP_DERIVATIVE_LONG`

Derivatives Sub-account - Long

- `JP_DERIVATIVE_SHORT`

Derivatives Sub-account - Short

- `JP_HONPO_DERIVATIVE_GENERAL`

Domestic Derivatives Margin Sub-account - General

- `JP_GAIKOKU_DERIVATIVE_GENERAL`

Foreign Derivatives Margin Sub-account - General

- `JP_HONPO_DERIVATIVE_TOKUTEI`

Domestic Derivatives Margin Sub-account - Specific

- `JP_GAIKOKU_DERIVATIVE_TOKUTEI`

Foreign Derivatives Margin Sub-account - Specific

**TrdSubAccType**

**TrdSubAccType**

**TrdSubAccType**

**TrdCashFlowDirection**

**TrdSubAccType**

**TrdSubAccType**


## Asset Category


> **AssetCategory**

- `NONE`

Unknown

- `JP`

Domestic

- `US`

Foreign

**TrdAssetCategory**

**TrdAssetCategory**

**TrdAssetCategory**

**TrdAssetCategory**

**TrdAssetCategory**


## Transaction Category


**TrdCategory**


## Account Cash Information


**AccCashInfo**


## Account Assets Information by Market


**AccMarketInfo**


## Transaction Protocol Public Header


**TrdHeader**


## Trading Account


**TrdAcc**


## Account Funds


**Funds**


## Account Holding


**Position**


## Order


**Order**


## Order Fee Item


**OrderFeeItem**


## Order Fee


**OrderFee**


## Order Fill


**OrderFill**


## Maximum Trading Quantity


**MaxTrdQtys**


## Cash Flow Summary Info


**FlowSummaryInfo**


## Filter Conditions


**TrdFilterConditions**

←
[Deals Push Callback](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order-fill.html)[Basic Functions](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html)
→

## Unlock Trade

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/trade/unlock.html


`unlock_trade(password=None, password_md5=None, is_unlock=True)`

- **Description**

Lock or unlock trade

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| password | str | Transaction password. <br><br>If password\_md5 is not empty, use the passed password\_md5 to unlock.<br>Otherwise, MD5 calculated from password is used for password\_md5 and then unlock. |
| password\_md5 | str | 32-bit MD5 encryption of transaction password (all lowercase). <br><br>A password must be filled in to unlock a transaction, and a locked transaction is ignored. |
| is\_unlock | bool | Lock or unlock. <br><br>True: unlock.<br>False: lock. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| msg | NoneType | If ret == RET\_OK, None is returned. |
| str | If ret != RET\_OK, error description is returned. |

- **Example**

```python
from futu import *
pwd_unlock = '123456'
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.HK, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUSECURITIES)
ret, data = trd_ctx.unlock_trade(pwd_unlock)
if ret == RET_OK:
    print('unlock success!')
else:
    print('unlock_trade failed: ', data)
trd_ctx.close()

```

- **Output**

```python
unlock success!

```


## Trd\_UnlockTrade.proto


- **Description**

Unlock or lock transaction

- **Parameters**

> - For the security firm structure, refer to [SecurityFirm](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9434)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint UnlockTrade(TrdUnlockTrade.Request req);`

`virtual void OnReply_UnlockTrade(FTAPI_Conn client, uint nSerialNo, TrdUnlockTrade.Response rsp);`

- **Description**

Unlock or lock transaction

- **Parameters**

> - For the security firm structure, refer to [SecurityFirm](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9434)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int unlockTrade(TrdUnlockTrade.Request req);`

`void onReply_UnlockTrade(FTAPI_Conn client, int nSerialNo, TrdUnlockTrade.Response rsp);`

- **Description**

Unlock or lock transaction

- **Parameters**

> - For the security firm structure, refer to [SecurityFirm](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9434)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t UnlockTrade(const Trd_UnlockTrade::Request &stReq);`

`virtual void OnReply_UnlockTrade(Futu::u32_t nSerialNo, const Trd_UnlockTrade::Response &stRsp) = 0;`

- **Description**

Lock or unlock transaction

- **Parameters**

> - For the security firm structure, refer to [SecurityFirm](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9434)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`UnlockTrade(req);`

- **Description**

Lock or unlock transaction

- **Parameters**

> - For the security firm structure, refer to [SecurityFirm](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9434)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

TIP

- When using live trading accounts, you need to **unlock trade** **before** calling _Place Order_ or _Modify or Cancel Orders_ interface, but when using paper trading accounts, you do not need to **unlock trade**.
- Locking or unlocking the transaction is an operation on OpenD. As long as one connection is unlocked, all other connections can call the transaction interface
- It is strongly recommended that customers who connect to OpenD via the external network for live trading use encrypted channels, refer to [Enable protocol encryption](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html#7910)
- Futu API does not support Futu token. If you have activated Futu token, it will fail to unlock. You need to turn off the token and then use Futu API to unlock.

Interface Limitations

- A maximum of 10 requests per 30 seconds under a single user ID.

`unlock_trade(password=None, password_md5=None, is_unlock=True)`

- **Description**

Lock or unlock trade

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| password | str | Transaction password. <br><br>If password\_md5 is not empty, use the passed password\_md5 to unlock.<br>Otherwise, MD5 calculated from password is used for password\_md5 and then unlock. |
| password\_md5 | str | 32-bit MD5 encryption of transaction password (all lowercase). <br><br>A password must be filled in to unlock a transaction, and a locked transaction is ignored. |
| is\_unlock | bool | Lock or unlock. <br><br>True: unlock.<br>False: lock. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| msg | NoneType | If ret == RET\_OK, None is returned. |
| str | If ret != RET\_OK, error description is returned. |

- **Example**

```python
from moomoo import *
pwd_unlock = '123456'
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUINC)
ret, data = trd_ctx.unlock_trade(pwd_unlock)
if ret == RET_OK:
    print('unlock success!')
else:
    print('unlock_trade failed: ', data)
trd_ctx.close()

```

- **Output**

```python
unlock success!

```


## Trd\_UnlockTrade.proto


- **Description**

Unlock or lock transaction

- **Parameters**

> - For the security firm structure, refer to [SecurityFirm](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9434)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint UnlockTrade(TrdUnlockTrade.Request req);`

`virtual void OnReply_UnlockTrade(MMAPI_Conn client, uint nSerialNo, TrdUnlockTrade.Response rsp);`

- **Description**

Unlock or lock transaction

- **Parameters**

> - For the security firm structure, refer to [SecurityFirm](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9434)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int unlockTrade(TrdUnlockTrade.Request req);`

`void onReply_UnlockTrade(MMAPI_Conn client, int nSerialNo, TrdUnlockTrade.Response rsp);`

- **Description**

Unlock or lock transaction

- **Parameters**

> - For the security firm structure, refer to [SecurityFirm](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9434)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t UnlockTrade(const Trd_UnlockTrade::Request &stReq);`

`virtual void OnReply_UnlockTrade(moomoo::u32_t nSerialNo, const Trd_UnlockTrade::Response &stRsp) = 0;`

- **Description**

Lock or unlock transaction

- **Parameters**

> - For the security firm structure, refer to [SecurityFirm](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9434)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`UnlockTrade(req);`

- **Description**

Lock or unlock transaction

- **Parameters**

> - For the security firm structure, refer to [SecurityFirm](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9434)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

TIP

- When using live trading accounts, you need to **unlock trade** **before** calling _Place Order_ or _Modify or Cancel Orders_ interface, but when using paper trading accounts, you do not need to **unlock trade**.
- Locking or unlocking the transaction is an operation on OpenD. As long as one connection is unlocked, all other connections can call the transaction interface
- It is strongly recommended that customers who connect to OpenD via the external network for live trading use encrypted channels, refer to [Enable protocol encryption](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html#7910)
- Moomoo API does not support moomoo token. If you have activated moomoo token, it will fail to unlock. You need to turn off the token and then use Moomoo API to unlock.

Interface Limitations

- A maximum of 10 requests per 30 seconds under a single user ID.

←
[Get the List of Trading Accounts](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-acc-list.html)[Get Account Funds](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-funds.html)
→

## Deals Push Callback

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order-fill.html


`on_recv_rsp(self, rsp_pb)`

- **Description**

In response to the transaction push, asynchronously process the transaction status information pushed by OpenD.
After receiving the order fill information pushed by OpenD, this function is called. You need to override on\_recv\_rsp in the derived class.

This feature is only available for live trading and not for paper trading.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| rsp\_pb | Trd\_UpdateOrderFill\_pb2.Response | This parameter does not need to be processed in the derived class. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, transaction list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Transaction list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | trd\_side | [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832) | Trading direction. |
    | deal\_id | str | Deal number. |
    | order\_id | str | Order ID. |
    | code | str | Security code. |
    | stock\_name | str | Security name. |
    | qty | float | Quantity of shares bought/sold on this fill. <br><br>Option futures unit is "Contract". |
    | price | float | Fill price. |
    | create\_time | str | Create time. <br><br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
    | counter\_broker\_id | int | Counter broker ID. <br><br>Only valid for HK stocks. |
    | counter\_broker\_name | str | Counter broker name. <br><br>Only valid for HK stocks. |
    | status | [DealStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4379) | Deal status. |
- **Example**

```python
from futu import *
from time import sleep
class TradeDealTest(TradeDealHandlerBase):
    """ order update push"""
    def on_recv_rsp(self, rsp_pb):
        ret, content = super(TradeDealTest, self).on_recv_rsp(rsp_pb)
        if ret == RET_OK:
            print("TradeDealTest content={}".format(content))
        return ret, content

trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.HK, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUSECURITIES)
trd_ctx.set_handler(TradeDealTest())
print(trd_ctx.place_order(price=595.0, qty=100, code="HK.00700", trd_side=TrdSide.BUY))

sleep(15)
trd_ctx.close()

```

- **Output**

```python
TradeDealTest content=  trd_env      code stock_name              deal_id             order_id    qty  price trd_side              create_time  counter_broker_id counter_broker_name trd_market status
0    REAL  HK.00700       Tencent  2511067564122483295  8561504228375901919  100.0  518.0      BUY  2021-11-04 11:29:41.595                  5                   5         HK     OK

```


## Trd\_UpdateOrderFill.proto


- **Description**

Respond to the transaction push, asynchronously process the transaction status information pushed by OpenD.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`virtual void OnReply_UpdateOrderFill(FTAPI_Conn client, uint nSerialNo, TrdUpdateOrderFill.Response rsp);`

- **Description**

In response to the transaction push, asynchronously process the transaction status information pushed by OpenD.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`void onPush_UpdateOrderFill(FTAPI_Conn client, int nSerialNo, TrdUpdateOrderFill.Response rsp);`

- **Description**

In response to the transaction push, asynchronously process the transaction status information pushed by OpenD.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`virtual void OnPush_UpdateOrderFill(const Trd_UpdateOrderFill::Response &stRsp) = 0;`

- **Description**

In response to the transaction push, asynchronously process the transaction status information pushed by OpenD.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`OnPush(cmd,res)`

- **Description**

In response to the transaction push, asynchronously process the transaction status information pushed by OpenD.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`on_recv_rsp(self, rsp_pb)`

- **Description**

In response to the transaction push, asynchronously process the transaction status information pushed by OpenD.
After receiving the order fill information pushed by OpenD, this function is called. You need to override on\_recv\_rsp in the derived class.

This feature is only available for live trading and not for paper trading.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| rsp\_pb | Trd\_UpdateOrderFill\_pb2.Response | This parameter does not need to be processed in the derived class. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, transaction list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Transaction list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | trd\_side | [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832) | Trading direction. |
    | deal\_id | str | Deal number. |
    | order\_id | str | Order ID. |
    | code | str | Security code. |
    | stock\_name | str | Security name. |
    | qty | float | Quantity of shares bought/sold on this fill. <br><br>Option futures unit is "Contract". |
    | price | float | Fill price. |
    | create\_time | str | Create time. <br><br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
    | counter\_broker\_id | int | Counter broker ID. <br><br>Only valid for HK stocks. |
    | counter\_broker\_name | str | Counter broker name. <br><br>Only valid for HK stocks. |
    | status | [DealStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#4379) | Deal status. |
- **Example**

```python
from moomoo import *
from time import sleep
class TradeDealTest(TradeDealHandlerBase):
    """ order update push"""
    def on_recv_rsp(self, rsp_pb):
        ret, content = super(TradeDealTest, self).on_recv_rsp(rsp_pb)
        if ret == RET_OK:
            print("TradeDealTest content={}".format(content))
        return ret, content

trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUINC)
trd_ctx.set_handler(TradeDealTest())
print(trd_ctx.place_order(price=595.0, qty=100, code="US.AAPL", trd_side=TrdSide.BUY))

sleep(15)
trd_ctx.close()

```

- **Output**

```python
TradeDealTest content=  trd_env      code stock_name              deal_id             order_id    qty  price trd_side              create_time  counter_broker_id counter_broker_name trd_market status
0    REAL  US.AAPL      Apple Inc.  2511067564122483295  8561504228375901919  100.0  518.0      BUY  2021-11-04 11:29:41.595                  5                   5         US     OK

```


## Trd\_UpdateOrderFill.proto


- **Description**

Respond to the transaction push, asynchronously process the transaction status information pushed by OpenD.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`virtual void OnReply_UpdateOrderFill(MMAPI_Conn client, uint nSerialNo, TrdUpdateOrderFill.Response rsp);`

- **Description**

In response to the transaction push, asynchronously process the transaction status information pushed by OpenD.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`void onPush_UpdateOrderFill(MMAPI_Conn client, int nSerialNo, TrdUpdateOrderFill.Response rsp);`

- **Description**

In response to the transaction push, asynchronously process the transaction status information pushed by OpenD.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`virtual void OnPush_UpdateOrderFill(const Trd_UpdateOrderFill::Response &stRsp) = 0;`

- **Description**

In response to the transaction push, asynchronously process the transaction status information pushed by OpenD.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`OnPush(cmd,res)`

- **Description**

In response to the transaction push, asynchronously process the transaction status information pushed by OpenD.

This feature is only available for live trading and not for paper trading.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For orderfill structure, refer to [OrderFill](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#9504)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

←
[Get Historical Deals](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-history-order-fill-list.html)[Trading Definitions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html)
→

## Orders Push Callback

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order.html


`on_recv_rsp(self, rsp_pb)`

- **Description**

In response to orders push, asynchronously process the order status information pushed by OpenD.
After receiving the order status information pushed by OpenD, this function is called.. You need to override on\_recv\_rsp in the derived class.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| rsp\_pb | Trd\_UpdateOrder\_pb2.Response | This parameter does not need to be processed in the derived class. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, order list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Order list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | trd\_side | [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832) | Trading direction. |
    | order\_type | [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245) | Order type. |
    | order\_status | [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074) | Order status. |
    | order\_id | str | Order ID. |
    | code | str | Security code. |
    | stock\_name | str | Security name. |
    | qty | float | Order quantity. <br><br>Option futures unit is "Contract" |
    | price | float | Order price. <br><br>3 decimal place accuracy, excess part will be rounded. |
    | currency | [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655) | Transaction currency. |
    | create\_time | str | Create time. <br><br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
    | updated\_time | str | Last update time. <br><br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149).<br>The unit of option futures is "Contract". |
    | dealt\_qty | float | Deal quantity <br><br>Option futures unit is "Contract" |
    | dealt\_avg\_price | float | Average deal price. <br><br>No precision limit. |
    | last\_err\_msg | str | The last error description. <br><br>If there is an error, the cause of the last error will be returned.<br>If there is no error, an empty string will be returned. |
    | remark | str | Identification of remarks when placing an order. <br><br>Refer to remark in the [place\_order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/place-order.html) interface parameters for details. |
    | time\_in\_force | [TimeInForce](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7678) | Valid period. |
    | fill\_outside\_rth | bool | Whether pre-market and after-hours are needed. <br><br>Only for US stocks.<br>True: need.<br>False: not need. |
    | session | [Session](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8688) | Order session (Only applied to US stocks) |
    | aux\_price | float | Traget price. |
    | trail\_type | [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12) | Trailing type. |
    | trail\_value | float | Trailing amount/ratio. |
    | trail\_spread | float | Specify spread. |
- **Example**

```python
from futu import *
from time import sleep
class TradeOrderTest(TradeOrderHandlerBase):
    """ order update push"""
    def on_recv_rsp(self, rsp_pb):
        ret, content = super(TradeOrderTest, self).on_recv_rsp(rsp_pb)
        if ret == RET_OK:
            print("* TradeOrderTest content={}\n".format(content))
        return ret, content
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.HK, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUSECURITIES)
trd_ctx.set_handler(TradeOrderTest())
print(trd_ctx.place_order(price=518.0, qty=100, code="HK.00700", trd_side=TrdSide.SELL))

sleep(15)
trd_ctx.close()

```

- **Output**

```python
* TradeOrderTest content=  trd_env      code stock_name  dealt_avg_price  dealt_qty    qty           order_id order_type  price order_status          create_time         updated_time trd_side last_err_msg trd_market remark time_in_force fill_outside_rth session aux_price trail_type trail_value trail_spread currency
0    REAL  HK.00700       Tencent              0.0        0.0  100.0  72625263708670783     NORMAL  518.0   SUBMITTING  2021-11-04 11:26:27  2021-11-04 11:26:27      BUY                      HK                  DAY              N/A       N/A     N/A      N/A         N/A          N/A      HKD

```


## Trd\_UpdateOrder.proto


- **Description**

In response to order push, asynchronously process the order status information pushed by OpenD.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`virtual void OnReply_UpdateOrder(FTAPI_Conn client, TrdUpdateOrder.Response rsp);`

- **Description**

In response to order push, asynchronously process the order status information pushed by OpenD.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`void onPush_UpdateOrder(FTAPI_Conn client, TrdUpdateOrder.Response rsp);`

- **Description**

In response to order push, asynchronously process the order status information pushed by OpenD.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`virtual void OnPush_UpdateOrder(const Trd_UpdateOrder::Response &stRsp) = 0;`

- **Description**

In response to order push, asynchronously process the order status information pushed by OpenD.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`OnPush(cmd,res)`

- **Description**

In response to order push, asynchronously process the order status information pushed by OpenD.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`on_recv_rsp(self, rsp_pb)`

- **Description**

In response to orders push, asynchronously process the order status information pushed by OpenD.
After receiving the order status information pushed by OpenD, this function is called.. You need to override on\_recv\_rsp in the derived class.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| rsp\_pb | Trd\_UpdateOrder\_pb2.Response | This parameter does not need to be processed in the derived class. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, order list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Order list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | trd\_side | [TrdSide](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#832) | Trading direction. |
    | order\_type | [OrderType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#245) | Order type. |
    | order\_status | [OrderStatus](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8074) | Order status. |
    | order\_id | str | Order ID. |
    | code | str | Security code. |
    | stock\_name | str | Security name. |
    | qty | float | Order quantity. <br><br>Option futures unit is "Contract" |
    | price | float | Order price. <br><br>3 decimal place accuracy, excess part will be rounded. |
    | currency | [Currency](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#1655) | Transaction currency. |
    | create\_time | str | Create time. <br><br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149). |
    | updated\_time | str | Last update time. <br><br>For time zone of futures, please refer to [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149).<br>The unit of option futures is "Contract". |
    | dealt\_qty | float | Deal quantity <br><br>Option futures unit is "Contract" |
    | dealt\_avg\_price | float | Average deal price. <br><br>No precision limit. |
    | last\_err\_msg | str | The last error description. <br><br>If there is an error, the cause of the last error will be returned.<br>If there is no error, an empty string will be returned. |
    | remark | str | Identification of remarks when placing an order. <br><br>Refer to remark in the [place\_order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/place-order.html) interface parameters for details. |
    | time\_in\_force | [TimeInForce](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#7678) | Valid period. |
    | fill\_outside\_rth | bool | Whether pre-market and after-hours are needed. <br><br>Only for US stocks.<br>True: need.<br>False: not need. |
    | session | [Session](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8688) | Order session (Only applied to US stocks) |
    | aux\_price | float | Traget price. |
    | trail\_type | [TrailType](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#12) | Trailing type. |
    | trail\_value | float | Trailing amount/ratio. |
    | trail\_spread | float | Specify spread. |
- **Example**

```python
from moomoo import *
from time import sleep
class TradeOrderTest(TradeOrderHandlerBase):
    """ order update push"""
    def on_recv_rsp(self, rsp_pb):
        ret, content = super(TradeOrderTest, self).on_recv_rsp(rsp_pb)
        if ret == RET_OK:
            print("* TradeOrderTest content={}\n".format(content))
        return ret, content

trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111, security_firm=SecurityFirm.FUTUINC)
trd_ctx.set_handler(TradeOrderTest())
print(trd_ctx.place_order(price=518.0, qty=100, code="US.AAPL", trd_side=TrdSide.SELL))

sleep(15)
trd_ctx.close()

```

- **Output**

```python
* TradeOrderTest content=  trd_env      code stock_name  dealt_avg_price  dealt_qty    qty           order_id order_type  price order_status          create_time         updated_time trd_side last_err_msg trd_market remark time_in_force fill_outside_rth session  aux_price trail_type trail_value trail_spread currency
0    REAL  US.AAPL        Apple Inc.              0.0        0.0  100.0  72625263708670783     NORMAL  518.0   SUBMITTING  2021-11-04 11:26:27  2021-11-04 11:26:27      BUY                      US                  DAY              N/A       N/A        N/A      N/A      N/A          N/A      USD

```


## Trd\_UpdateOrder.proto


- **Description**

In response to order push, asynchronously process the order status information pushed by OpenD.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`virtual void OnReply_UpdateOrder(MMAPI_Conn client, TrdUpdateOrder.Response rsp);`

- **Description**

In response to order push, asynchronously process the order status information pushed by OpenD.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`void onPush_UpdateOrder(MMAPI_Conn client, TrdUpdateOrder.Response rsp);`

- **Description**

In response to order push, asynchronously process the order status information pushed by OpenD.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`virtual void OnPush_UpdateOrder(const Trd_UpdateOrder::Response &stRsp) = 0;`

- **Description**

In response to order push, asynchronously process the order status information pushed by OpenD.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`OnPush(cmd,res)`

- **Description**

In response to order push, asynchronously process the order status information pushed by OpenD.

- **Parameters**

> - For protocol header, refer to [TrdHeader](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#8729)
> - For order structure, refer [Order](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html#6192)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

←
[Get Historical Orders](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-history-order-list.html)[Get Order Fee](https://openapi.moomoo.com/moomoo-api-doc/en/trade/order-fee-query.html)
→