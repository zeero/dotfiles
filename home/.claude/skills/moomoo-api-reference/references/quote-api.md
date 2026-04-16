
## Quote Object

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/base.html



## Create and Initialize the Connection


`OpenQuoteContext(host='127.0.0.1', port=11111, is_encrypt=None)`

- **Introduction**

Create and initialize market connection

- **Parameters**

Parameter\|Type\|Description
😐:-\|:-
host\|str\|OpenD listening address.
port\|int\|OpenD listening port.
is\_encrypt\|bool\|Whether to enable encryption.

- The default is None, which means the setting of [enable\_proto\_encrypt](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html#7910) is used.
- True: mandatory encryption.

False: mandatory no encryption.

- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111, is_encrypt=False)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```


## Close Connection


`close()`

- **Introduction**

Close the interface quotation object. By default, the threads created inside the Futu API will prevent the process from exiting, and the process can exit normally only after all Contexts are closed. But through [set\_all\_thread\_daemon](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html#5242), all internal threads can be set as daemon threads. At this time, even if the close of Context is not called, the process can exit normally.

- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```


## Start-up


`start()`

- **Introduction**

Start to receive push data asynchronously


## Stop


`stop()`

- **Introduction**

Stop receiving push data asynchronously


## InitConnect.proto


- **Introduction**

Initialize the connection protocol

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**


## Create and Initialize the Connection


`bool InitConnect(String ip, short port, bool isEnableEncrypt)`

- **Introduction**

Initialize connection, connect and initialize

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


## Destroy Connection


`void Close()`

- **Introduction**

Destroy connection

- **Example**


## Create and Initialize the Connection


`boolean initConnect(String ip, short port, boolean isEnableEncrypt)`

- **Introduction**

Initialize connection, connect and initialize

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| ip | str | OpenD listening address. |
| port | int | OpenD listening port. |
| bEnableEncrypt | bool | Whether to enable encryption. |

- **Return**

  - ret: Whether the execution is started, it does not represent the connection result, and the result is called back through onInitConnect
- **Example**


## Destroy the Connection


`void close()`

- **Introduction**

Destroy connection

- **Example**


## Create and Initialize the Connection


`FTAPI_Qot* CreateQotApi();`

`bool InitConnect(const char* szIPAddr, Futu::u16_t nPort, bool bEnableEncrypt);`

- **Introduction**

Create, initialize connection

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| szIPAddr | str | OpenD listening address. |
| nPort | int | OpenD listening port. |
| bEnableEncrypt | bool | Whether to enable encryption. |

- **Example**


## Destroy the Connection


`void ReleaseTrdApi(FTAPI_Qot* pTrd);`

- **Introduction**

Destroy connection

- **Return**

  - pQot: connection example
- **Example**


## Create and Initialize the Connection


`start(ip, port, ssl, key)`

- **Introduction**

Initialize connection, connect and initialize

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| ip | str | OpenD listening WebSocket address. |
| port | int | OpenD listening WebSocket port. |
| ssl | bool | Whether to enable SSL encryption, refer to [WebSocket related](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#5728). |
| key | str | The connection private key, otherwise the connection will time out. The key is configurable in OpenD, and the visualization version will randomly specify one if the key is not specified. |

- **Example**


## Close Connection


`close()`

- **Introduction**

Close the connection

- **Example**


## Create and Initialize the Connection


`OpenQuoteContext(host='127.0.0.1', port=11111, is_encrypt=None)`

- **Introduction**

Create and initialize market connection

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| host | str | OpenD listening address. |
| port | int | OpenD listening port. |
| is\_encrypt | bool | Whether to enable encryption. <br><br>  - The default is None, which means the setting of [enable\_proto\_encrypt](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html#7910) is used. <br>  - True: mandatory encryption.<br>    <br>    False: mandatory no encryption. |

- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111, is_encrypt=False)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```


## Close Connection


`close()`

- **Introduction**

Close the interface quotation object. By default, the threads created inside the moomoo API will prevent the process from exiting, and the process can exit normally only after all Contexts are closed. But through [set\_all\_thread\_daemon](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html#5242), all internal threads can be set as daemon threads. At this time, even if the close of Context is not called, the process can exit normally.

- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```


## Start-up


`start()`

- **Introduction**

Start to receive push data asynchronously


## Stop


`stop()`

- **Introduction**

Stop receiving push data asynchronously


## InitConnect.proto


- **Introduction**

Initialize the connection protocol

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**


## Create and Initialize the Connection


`bool InitConnect(String ip, short port, bool isEnableEncrypt)`

- **Introduction**

Initialize connection, connect and initialize

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


## Destroy Connection


`void Close()`

- **Introduction**

Destroy connection

- **Example**


## Create and Initialize the Connection


`boolean initConnect(String ip, short port, boolean isEnableEncrypt)`

- **Introduction**

Initialize connection, connect and initialize

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| ip | str | OpenD listening address. |
| port | int | OpenD listening port. |
| bEnableEncrypt | bool | Whether to enable encryption. |

- **Return**

  - ret: Whether the execution is started, it does not represent the connection result, and the result is called back through onInitConnect
- **Example**


## Destroy the Connection


`void close()`

- **Introduction**

Destroy connection

- **Example**


## Create and Initialize the Connection


`MMAPI_Qot* CreateQotApi();`

`bool InitConnect(const char* szIPAddr, moomoo::u16_t nPort, bool bEnableEncrypt);`

- **Introduction**

Create, initialize connection

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| szIPAddr | str | OpenD listening address. |
| nPort | int | OpenD listening port. |
| bEnableEncrypt | bool | Whether to enable encryption. |

- **Example**


## Destroy the Connection


`void ReleaseTrdApi(FTAPI_Qot* pTrd);`

- **Introduction**

Destroy connection

- **Return**

  - pQot: connection example
- **Example**


## Create and Initialize the Connection


`start(ip, port, ssl, key)`

- **Introduction**

Initialize connection, connect and initialize

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| ip | str | OpenD listening WebSocket address. |
| port | int | OpenD listening WebSocket port. |
| ssl | bool | Whether to enable SSL encryption, refer to [WebSocket related](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#5728). |
| key | str | The connection private key, otherwise the connection will time out. The key is configurable in OpenD, and the visualization version will randomly specify one if the key is not specified. |

- **Example**


## Close Connection


`close()`

- **Introduction**

Close the connection

- **Example**

←
[Overview](https://openapi.moomoo.com/moomoo-api-doc/en/quote/overview.html)[Subscribe and Unsubscribe](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html)
→

## Get Real-time Broker Queue

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-broker.html



## Get Real-time Broker Queue


`get_broker_queue(code)`

- **Description**

Obtain real-time data of market participants on the order book. (Require real-time data subscription.)

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Stock code. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| bid\_frame\_table | pd.DataFrame | If ret == RET\_OK, queue of bid brokers is returned. |
| str | If ret != RET\_OK, error description is returned. |
| ask\_frame\_table | pd.DataFrame | If ret == RET\_OK, queue of ask brokers is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Queue of bid brokers format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | bid\_broker\_id | int | Bid broker ID. |
    | bid\_broker\_name | str | Bid broker name. |
    | bid\_broker\_pos | int | Broker level. |
    | order\_id | int | Exchange order ID. <br><br>    - Not the order ID returned by the order interface.<br>    - Only HK SF market quotes support returning this field. |
    | order\_volume | int | Order volume. <br><br>Only HK SF market quotes support returning this field. |

  - Queue of ask brokers format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | ask\_broker\_id | int | Ask Broker ID. |
    | ask\_broker\_name | str | Ask Broker name. |
    | ask\_broker\_pos | int | Broker level. |
    | order\_id | int | Exchange order ID. <br><br>    - Not the order ID returned by the order interface.<br>    - Only HK SF market quotes support returning this field. |
    | order\_volume | int | Order volume. <br><br>Only HK SF market quotes support returning this field. |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
ret_sub, err_message = quote_ctx.subscribe(['HK.00700'], [SubType.BROKER], subscribe_push=False)
# First subscribe to the broker queue type. After the subscription is successful, OpenD will continue to receive pushes from the server, False means that there is no need to push the data to the script temporarily
if ret_sub == RET_OK: # Subscription successful
     ret, bid_frame_table, ask_frame_table = quote_ctx.get_broker_queue('HK.00700') # Get a broker queue data
     if ret == RET_OK:
         print(bid_frame_table)
     else:
         print('error:', bid_frame_table)
else:
     print(err_message)
quote_ctx.close() # Close the current connection, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
    code     name  bid_broker_id                                    bid_broker_name  bid_broker_pos order_id order_volume
0   HK.00700  TENCENT           5338            J.P. Morgan Broking (Hong Kong) Limited               1      N/A          N/A
..       ...      ...            ...                                                ...             ...      ...          ...
36  HK.00700  TENCENT           8305  Futu Securities International (Hong Kong) Limited               4      N/A          N/A

[37 rows x 7 columns]

```


## Qot\_GetBroker.proto


- **Description**

Obtain real-time data of market participants on the order book. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the broker queue structure, refer to [Broker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9607)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**


## GetBroker


`uint GetBroker(QotGetBroker.Request req);`

`virtual void OnReply_GetBroker(FTAPI_Conn client, uint nSerialNo, QotGetBroker.Response rsp);`

- **Description**

Obtain real-time data of market participants on the order book. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the broker queue structure, refer to [Broker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9607)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**


## getBroker


`int getBroker(QotGetBroker.Request req);`

`void onReply_GetBroker(FTAPI_Conn client, int nSerialNo, QotGetBroker.Response rsp);`

- **Description**

Obtain real-time data of market participants on the order book. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the broker queue structure, refer to [Broker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9607)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**


## GetBroker


`Futu::u32_t GetBroker(const Qot_GetBroker::Request &stReq);`

`virtual void OnReply_GetBroker(Futu::u32_t nSerialNo, const Qot_GetBroker::Response &stRsp) = 0;`

- **Description**

Obtain real-time data of market participants on the order book. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the broker queue structure, refer to [Broker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9607)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**


## GetBroker


`GetBroker(req);`

- **Description**

Obtain real-time data of market participants on the order book. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the broker queue structure, refer to [Broker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9607)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- This API provides the function of obtaining real-time data at one time. If you need to obtain pushed data continuously, please refer to the [Real-time Broker Queue Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-broker.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).
- Under the BMP & LV1 HK market quotes, the broker queue market data is not supported.


## get\_broker\_queue


`get_broker_queue(code)`

- **Description**

Obtain real-time data of market participants on the order book. (Require real-time data subscription.)

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Stock code. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| bid\_frame\_table | pd.DataFrame | If ret == RET\_OK, queue of bid brokers is returned. |
| str | If ret != RET\_OK, error description is returned. |
| ask\_frame\_table | pd.DataFrame | If ret == RET\_OK, queue of ask brokers is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Queue of bid brokers format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | bid\_broker\_id | int | Bid broker ID. |
    | bid\_broker\_name | str | Bid broker name. |
    | bid\_broker\_pos | int | Broker level. |
    | order\_id | int | Exchange order ID. <br><br>    - Not the order ID returned by the order interface.<br>    - Only HK SF market quotes support returning this field. |
    | order\_volume | int | Order volume. <br><br>Only HK SF market quotes support returning this field. |

  - Queue of ask brokers format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | ask\_broker\_id | int | Ask Broker ID. |
    | ask\_broker\_name | str | Ask Broker name. |
    | ask\_broker\_pos | int | Broker level. |
    | order\_id | int | Exchange order ID. <br><br>    - Not the order ID returned by the order interface.<br>    - Only HK SF market quotes support returning this field. |
    | order\_volume | int | Order volume. <br><br>Only HK SF market quotes support returning this field. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
ret_sub, err_message = quote_ctx.subscribe(['HK.00700'], [SubType.BROKER], subscribe_push=False)
# First subscribe to the broker queue type. After the subscription is successful, OpenD will continue to receive pushes from the server, False means that there is no need to push the data to the script temporarily
if ret_sub == RET_OK: # Subscription successful
     ret, bid_frame_table, ask_frame_table = quote_ctx.get_broker_queue('HK.00700') # Get a broker queue data
     if ret == RET_OK:
         print(bid_frame_table)
     else:
         print('error:', bid_frame_table)
else:
     print(err_message)
quote_ctx.close() # Close the current connection, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
    code     name  bid_broker_id                                    bid_broker_name  bid_broker_pos order_id order_volume
0   HK.00700  TENCENT           5338            J.P. Morgan Broking (Hong Kong) Limited               1      N/A          N/A
..       ...      ...            ...                                                ...             ...      ...          ...
36  HK.00700  TENCENT           8305  Futu Securities International (Hong Kong) Limited               4      N/A          N/A

[37 rows x 7 columns]

```


## Qot\_GetBroker.proto


- **Description**

Obtain real-time data of market participants on the order book. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the broker queue structure, refer to [Broker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9607)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**


## GetBroker


`uint GetBroker(QotGetBroker.Request req);`

`virtual void OnReply_GetBroker(MMAPI_Conn client, uint nSerialNo, QotGetBroker.Response rsp);`

- **Description**

Obtain real-time data of market participants on the order book. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the broker queue structure, refer to [Broker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9607)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**


## getBroker


`int getBroker(QotGetBroker.Request req);`

`void onReply_GetBroker(MMAPI_Conn client, int nSerialNo, QotGetBroker.Response rsp);`

- **Description**

Obtain real-time data of market participants on the order book. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the broker queue structure, refer to [Broker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9607)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**


## GetBroker


`moomoo::u32_t GetBroker(const Qot_GetBroker::Request &stReq);`

`virtual void OnReply_GetBroker(moomoo::u32_t nSerialNo, const Qot_GetBroker::Response &stRsp) = 0;`

- **Description**

Obtain real-time data of market participants on the order book. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the broker queue structure, refer to [Broker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9607)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**


## GetBroker


`GetBroker(req);`

- **Description**

Obtain real-time data of market participants on the order book. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the broker queue structure, refer to [Broker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9607)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- This API provides the function of obtaining real-time data at one time. If you need to obtain pushed data continuously, please refer to the [Real-time Broker Queue Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-broker.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).
- Under the LV1 HK market quotes, the broker queue market data is not supported.

←
[Get Real-time Tick-by-Tick](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ticker.html)[Get Market Status of Securities](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-state.html)
→

## Get Capital Distribution

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-capital-distribution.html


`get_capital_distribution(stock_code)`

- **Description**

Access to capital distribution

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| stock\_code | str | Stock code. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, stock fund distribution data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Stock fund distribution data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | capital\_in\_super | float | Inflow capital quota, extra-large order. |
    | capital\_in\_big | float | Inflow capital quota, large order. |
    | capital\_in\_mid | float | Inflow capital quota, midium order. |
    | capital\_in\_small | float | Inflow capital quota, small order. |
    | capital\_out\_super | float | Outflow capital quota, extra-large order. |
    | capital\_out\_big | float | Outflow capital quota, large order. |
    | capital\_out\_mid | float | Outflow capital quota, midium order. |
    | capital\_out\_small | float | Outflow capital quota, small order. |
    | update\_time | str | Updated time string. <br><br>Fotmat：yyyy-MM-dd HH:mm:ss |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_capital_distribution("HK.00700")
if ret == RET_OK:
    print(data)
    print(data['capital_in_big'][0]) # Take the amount of inflow capital of the first article, big order
    print(data['capital_in_big'].values.tolist()) # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
   capital_in_super  capital_in_big  ...  capital_out_small          update_time
0      2.261085e+09    2.141964e+09  ...       2.887413e+09  2022-06-08 15:59:59

[1 rows x 9 columns]
2141963720.0
[2141963720.0]

```


## Qot\_GetCapitalDistribution.proto


- **Description**

Access to capital distribution

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetCapitalDistribution(QotGetCapitalDistribution.Request req);`

`virtual void OnReply_GetCapitalDistribution(FTAPI_Conn client, uint nSerialNo, QotGetCapitalDistribution.Response rsp);`

- **Description**

Access to funds distribution

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getCapitalDistribution(QotGetCapitalDistribution.Request req);`

`void onReply_GetCapitalDistribution(FTAPI_Conn client, int nSerialNo, QotGetCapitalDistribution.Response rsp);`

- **Description**

Access to capital distribution

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetCapitalDistribution(const Qot_GetCapitalDistribution::Request &stReq);`

`virtual void OnReply_GetCapitalDistribution(Futu::u32_t nSerialNo, const Qot_GetCapitalDistribution::Response &stRsp) = 0;`

- **Description**

Access to capital distribution

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetCapitalDistribution(req);`

- **Description**

Access to capital distribution

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 30 requests per 30 seconds
- Only support stocks, warrants and funds.
- For more capital flow introduction, please refer to [here](https://support.futunn.com/en-us/topic498?lang=en-US).
- Output data only includes tha data during Regular Trading Hours, not the data during Pre and Post-Market Hours.

`get_capital_distribution(stock_code)`

- **Description**

Access to capital distribution

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| stock\_code | str | Stock code. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, stock fund distribution data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Stock fund distribution data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | capital\_in\_super | float | Inflow capital quota, extra-large order. |
    | capital\_in\_big | float | Inflow capital quota, large order. |
    | capital\_in\_mid | float | Inflow capital quota, midium order. |
    | capital\_in\_small | float | Inflow capital quota, small order. |
    | capital\_out\_super | float | Outflow capital quota, extra-large order. |
    | capital\_out\_big | float | Outflow capital quota, large order. |
    | capital\_out\_mid | float | Outflow capital quota, midium order. |
    | capital\_out\_small | float | Outflow capital quota, small order. |
    | update\_time | str | Updated time string. <br><br>Fotmat：yyyy-MM-dd HH:mm:ss |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_capital_distribution("HK.00700")
if ret == RET_OK:
    print(data)
    print(data['capital_in_big'][0]) # Take the amount of inflow capital of the first article, big order
    print(data['capital_in_big'].values.tolist()) # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
   capital_in_super  capital_in_big  ...  capital_out_small          update_time
0      2.261085e+09    2.141964e+09  ...       2.887413e+09  2022-06-08 15:59:59

[1 rows x 9 columns]
2141963720.0
[2141963720.0]

```


## Qot\_GetCapitalDistribution.proto


- **Description**

Access to capital distribution

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetCapitalDistribution(QotGetCapitalDistribution.Request req);`

`virtual void OnReply_GetCapitalDistribution(MMAPI_Conn client, uint nSerialNo, QotGetCapitalDistribution.Response rsp);`

- **Description**

Access to funds distribution

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getCapitalDistribution(QotGetCapitalDistribution.Request req);`

`void onReply_GetCapitalDistribution(MMAPI_Conn client, int nSerialNo, QotGetCapitalDistribution.Response rsp);`

- **Description**

Access to capital distribution

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetCapitalDistribution(const Qot_GetCapitalDistribution::Request &stReq);`

`virtual void OnReply_GetCapitalDistribution(moomoo::u32_t nSerialNo, const Qot_GetCapitalDistribution::Response &stRsp) = 0;`

- **Description**

Access to capital distribution

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetCapitalDistribution(req);`

- **Description**

Access to capital distribution

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 30 requests per 30 seconds
- Only support stocks, warrants and funds.
- For more capital flow introduction, please refer to [here](https://support.futunn.com/en-us/topic498?lang=en-US).
- Output data only includes tha data during Regular Trading Hours, not the data during Pre and Post-Market Hours.

←
[Get Capital Flow](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-capital-flow.html)[Get Plates of Stocks](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-owner-plate.html)
→

## Get Capital Flow

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-capital-flow.html


`get_capital_flow(stock_code, period_type = PeriodType.INTRADAY, start=None, end=None)`

- **Description**

Get the flow of a specific stock

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| stock\_code | str | Stock code. |
| period\_type | [PeriodType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2884) | Period Type. |
| start | str | Start time. <br><br>Fotmat：yyyy-MM-dd <br>For example: "2017-06-20". |
| end | str | End time. <br><br>Fotmat：yyyy-MM-dd <br>For example: "2017-06-20". |

  - The combination of _**start**_ and _**end**_ is as follows

    | start type | end type | Description |
    | --- | --- | --- |
    | str | str | _**start**_ and _**end**_ are the specified dates respectively. |
    | None | str | _**start**_ is 365 days before _**end**_. |
    | str | None | _**end**_ is 365 days after _**start**_. |
    | None | None | _**end**_ is the current date, _**start**_ is 365 days before. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, capital flow data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Capital flow data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | in\_flow | float | Net inflow of capital. |
    | main\_in\_flow | float | Block Orders Net Inflow. <br><br>Only applicable to historical period (Day, Week, Month). |
    | super\_in\_flow | float | Extra-large Orders Net Inflow. |
    | big\_in\_flow | float | Large Orders Net Inflow. |
    | mid\_in\_flow | float | Medium Orders Net Inflow. |
    | sml\_in\_flow | float | Small Orders Net Inflow. |
    | capital\_flow\_item\_time | str | Start time string. <br><br>Format: yyyy-MM-dd HH:mm:ss<br>Unit: minute. |
    | last\_valid\_time | str | Last valid time string of data. <br><br>Only applicable to intraday period. |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_capital_flow("HK.00700", period_type = PeriodType.INTRADAY)
if ret == RET_OK:
    print(data)
    print(data['in_flow'][0]) # Take the first net inflow of capital
    print(data['in_flow'].values.tolist()) # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
    last_valid_time       in_flow  ...  main_in_flow  capital_flow_item_time
0               N/A -1.857915e+08  ... -1.066828e+08     2021-06-08 00:00:00
..              ...           ...  ...           ...                     ...
245             N/A  2.179240e+09  ...  2.143345e+09     2022-06-08 00:00:00

[246 rows x 8 columns]
-185791500.0
[-185791500.0, -18315000.0, -672100100.0, -714394350.0, -698391950.0, -818886750.0, 304827400.0, 73026200.0, -2078217500.0,\
..                   ...           ...                    ...\
2031460.0, 638067040.0, 622466600.0, -351788160.0, -328529240.0, 715415020.0, 76749700.0, 2179240320.0]

```


## Qot\_GetCapitalFlow.proto


- **Description**

Get funding flow

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For period type, refer to [PeriodType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2884)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetCapitalFlow(QotGetCapitalFlow.Request req);`

`virtual void OnReply_GetCapitalFlow(FTAPI_Conn client, uint nSerialNo, QotGetCapitalFlow.Response rsp);`

- **Description**

Get capital flow

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For period type, refer to [PeriodType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2884)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getCapitalFlow(QotGetCapitalFlow.Request req);`

`void onReply_GetCapitalFlow(FTAPI_Conn client, int nSerialNo, QotGetCapitalFlow.Response rsp);`

- **Description**

Get capital flow

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For period type, refer to [PeriodType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2884)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetCapitalFlow(const Qot_GetCapitalFlow::Request &stReq);`

`virtual void OnReply_GetCapitalFlow(Futu::u32_t nSerialNo, const Qot_GetCapitalFlow::Response &stRsp) = 0;`

- **Description**

Get capital flow

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For period type, refer to [PeriodType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2884)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetCapitalFlow(req);`

- **Description**

Get capital flow

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For period type, refer to [PeriodType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2884)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 30 requests per 30 seconds
- Supported for stocks, warrants and funds only
- Historical period (day, month, year) Only provides data for the latest 1 year; Intraday period only provides data for the latest day.
- Data with historical period (day, month, year), is only supported for the last 2 years. While Data with intraday period is only supported for the latest day.
- Output data only includes tha data during Regular Trading Hours, not the data during Pre and Post-Market Hours.

`get_capital_flow(stock_code, period_type = PeriodType.INTRADAY, start=None, end=None)`

- **Description**

Get the flow of a specific stock

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| stock\_code | str | Stock code. |
| period\_type | [PeriodType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2884) | Period Type. |
| start | str | Start time. <br><br>Fotmat：yyyy-MM-dd <br>For example: "2017-06-20". |
| end | str | End time. <br><br>Fotmat：yyyy-MM-dd <br>For example: "2017-06-20". |

  - The combination of _**start**_ and _**end**_ is as follows

    | start type | end type | Description |
    | --- | --- | --- |
    | str | str | _**start**_ and _**end**_ are the specified dates respectively. |
    | None | str | _**start**_ is 365 days before _**end**_. |
    | str | None | _**end**_ is 365 days after _**start**_. |
    | None | None | _**end**_ is the current date, _**start**_ is 365 days before. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, capital flow data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Capital flow data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | in\_flow | float | Net inflow of capital. |
    | main\_in\_flow | float | Block Orders Net Inflow. <br><br>Only applicable to historical period (Day, Week, Month). |
    | super\_in\_flow | float | Extra-large Orders Net Inflow. |
    | big\_in\_flow | float | Large Orders Net Inflow. |
    | mid\_in\_flow | float | Medium Orders Net Inflow. |
    | sml\_in\_flow | float | Small Orders Net Inflow. |
    | capital\_flow\_item\_time | str | Start time string. <br><br>Format: yyyy-MM-dd HH:mm:ss<br>Unit: minute. |
    | last\_valid\_time | str | Last valid time string of data. <br><br>Only applicable to intraday period. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_capital_flow("HK.00700", period_type = PeriodType.INTRADAY)
if ret == RET_OK:
    print(data)
    print(data['in_flow'][0]) # Take the first net inflow of capital
    print(data['in_flow'].values.tolist()) # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
    last_valid_time       in_flow  ...  main_in_flow  capital_flow_item_time
0               N/A -1.857915e+08  ... -1.066828e+08     2021-06-08 00:00:00
..              ...           ...  ...           ...                     ...
245             N/A  2.179240e+09  ...  2.143345e+09     2022-06-08 00:00:00

[246 rows x 8 columns]
-185791500.0
[-185791500.0, -18315000.0, -672100100.0, -714394350.0, -698391950.0, -818886750.0, 304827400.0, 73026200.0, -2078217500.0,\
..                   ...           ...                    ...\
2031460.0, 638067040.0, 622466600.0, -351788160.0, -328529240.0, 715415020.0, 76749700.0, 2179240320.0]

```


## Qot\_GetCapitalFlow.proto


- **Description**

Get funding flow

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For period type, refer to [PeriodType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2884)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetCapitalFlow(QotGetCapitalFlow.Request req);`

`virtual void OnReply_GetCapitalFlow(FTAPI_Conn client, uint nSerialNo, QotGetCapitalFlow.Response rsp);`

- **Description**

Get capital flow

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For period type, refer to [PeriodType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2884)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getCapitalFlow(QotGetCapitalFlow.Request req);`

`void onReply_GetCapitalFlow(MMAPI_Conn client, int nSerialNo, QotGetCapitalFlow.Response rsp);`

- **Description**

Get capital flow

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For period type, refer to [PeriodType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2884)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetCapitalFlow(const Qot_GetCapitalFlow::Request &stReq);`

`virtual void OnReply_GetCapitalFlow(moomoo::u32_t nSerialNo, const Qot_GetCapitalFlow::Response &stRsp) = 0;`

- **Description**

Get capital flow

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For period type, refer to [PeriodType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2884)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetCapitalFlow(req);`

- **Description**

Get capital flow

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For period type, refer to [PeriodType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2884)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 30 requests per 30 seconds
- Supported for stocks, warrants and funds only
- Historical period (day, month, year) Only provides data for the latest 1 year; Intraday period only provides data for the latest day.
- Data with historical period (day, month, year), is only supported for the last 2 years. While Data with intraday period is only supported for the latest day.
- Output data only includes tha data during Regular Trading Hours, not the data during Pre and Post-Market Hours.

←
[Get Market Status of Securities](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-state.html)[Get Capital Distribution](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-capital-distribution.html)
→

## Get Futures Contract Information

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-future-info.html


`get_future_info(code_list)`

- **Description**

Get futures contract information

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code\_list | list | Futures code list. Data type of elements in the list is str. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, futures contract data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Futures contract data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Future code. |
    | name | str | Future name. |
    | owner | str | Subject. |
    | exchange | str | Exchange. |
    | type | str | Contract type. |
    | size | float | Contract size. |
    | size\_unit | str | Contract size unit. |
    | price\_currency | str | Quote currency. |
    | price\_unit | str | Price unit. |
    | min\_change | float | Price change step. |
    | min\_change\_unit | str | Unit of price change step.<br><br>Obsolete field. |
    | trade\_time | str | Trading time. |
    | time\_zone | str | Time zone. |
    | last\_trade\_time | str | The last trading time. <br><br>Main, current month and next month futures do not have this field. |
    | exchange\_format\_url | str | Exchange format url address. |
    | origin\_code | str | Original future code. |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_future_info(["HK.MPImain", "HK.HAImain"])
if ret == RET_OK:
    print(data)
    print(data['code'][0]) # Take the first stock code
    print(data['code'].values.tolist()) # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
    code      name       owner exchange  type     size size_unit price_currency price_unit  min_change min_change_unit                        trade_time time_zone last_trade_time                                exchange_format_url           origin_code
0  HK.MPImain  MPI Future Main(NOV0)    Hang Seng Mainland Properties Index     HKEX  Equity Index     50.0  Index Points×HKD            HKD  Index Point        0.50        (09:15 - 12:00), (13:00 - 16:30)       CCT                  https://www.hkex.com.hk/Products/Listed-Deriva...           HK.MPI2112
1  HK.HAImain  HAI Future Main(NOV0)    HK.06837     HKEX  Single Stock  10000.0            shares            HKD  1 share/HKD        0.01                   (09:30 - 12:00), (13:00 - 16:00)       CCT                  https://www.hkex.com.hk/Products/Listed-Deriva...           HK.HAI2112
HK.MPImain
['HK.MPImain', 'HK.HAImain']

```


## Qot\_GetFutureInfo.proto


- **Description**

Get futures contract information

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetFutureInfo(QotGetFutureInfo.Request req);`

`virtual void OnReply_GetFutureInfo(FTAPI_Conn client, uint nSerialNo, QotGetFutureInfo.Response rsp);`

- **Description**

Get futures contract information

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getFutureInfo(QotGetFutureInfo.Request req);`

`void onReply_GetFutureInfo(FTAPI_Conn client, int nSerialNo, QotGetFutureInfo.Response rsp);`

- **Description**

Get futures contract information

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetFutureInfo(const Qot_GetFutureInfo::Request &stReq);`

`virtual void OnReply_GetFutureInfo(Futu::u32_t nSerialNo, const Qot_GetFutureInfo::Response &stRsp) = 0;`

- **Description**

Get futures contract information

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetFutureInfo(req);`

- **Description**

Get futures contract information

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 30 requests for obtaining futures contract data interface every 30 seconds
- The maximum number of futures is 200, in the code list for each request.

`get_future_info(code_list)`

- **Description**

Get futures contract information

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code\_list | list | Futures code list. Data type of elements in the list is str. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, futures contract data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Futures contract data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Future code. |
    | name | str | Future name. |
    | owner | str | Subject. |
    | exchange | str | Exchange. |
    | type | str | Contract type. |
    | size | float | Contract size. |
    | size\_unit | str | Contract size unit. |
    | price\_currency | str | Quote currency. |
    | price\_unit | str | Price unit. |
    | min\_change | float | Price change step. |
    | min\_change\_unit | str | Unit of price change step.<br><br>Obsolete field. |
    | trade\_time | str | Trading time. |
    | time\_zone | str | Time zone. |
    | last\_trade\_time | str | The last trading time. <br><br>Main, current month and next month futures do not have this field. |
    | exchange\_format\_url | str | Exchange format url address. |
    | origin\_code | str | Original future code. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_future_info(["HK.MPImain", "HK.HAImain"])
if ret == RET_OK:
    print(data)
    print(data['code'][0]) # Take the first stock code
    print(data['code'].values.tolist()) # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
    code      name       owner exchange  type     size size_unit price_currency price_unit  min_change min_change_unit                        trade_time time_zone last_trade_time                                exchange_format_url           origin_code
0  HK.MPImain  MPI Future Main(NOV0)    Hang Seng Mainland Properties Index     HKEX  Equity Index     50.0  Index Points×HKD            HKD  Index Point        0.50       (09:15 - 12:00), (13:00 - 16:30)       CCT                  https://www.hkex.com.hk/Products/Listed-Deriva...           HK.MPI2112
1  HK.HAImain  HAI Future Main(NOV0)    HK.06837     HKEX  Single Stock  10000.0            shares            HKD  1 share/HKD        0.01               (09:30 - 12:00), (13:00 - 16:00)       CCT                  https://www.hkex.com.hk/Products/Listed-Deriva...           HK.HAI2112
HK.MPImain
['HK.MPImain', 'HK.HAImain']

```


## Qot\_GetFutureInfo.proto


- **Description**

Get futures contract information

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetFutureInfo(QotGetFutureInfo.Request req);`

`virtual void OnReply_GetFutureInfo(MMAPI_Conn client, uint nSerialNo, QotGetFutureInfo.Response rsp);`

- **Description**

Get futures contract information

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getFutureInfo(QotGetFutureInfo.Request req);`

`void onReply_GetFutureInfo(MMAPI_Conn client, int nSerialNo, QotGetFutureInfo.Response rsp);`

- **Description**

Get futures contract information

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetFutureInfo(const Qot_GetFutureInfo::Request &stReq);`

`virtual void OnReply_GetFutureInfo(moomoo::u32_t nSerialNo, const Qot_GetFutureInfo::Response &stRsp) = 0;`

- **Description**

Get futures contract information

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetFutureInfo(req);`

- **Description**

Get futures contract information

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 30 requests for obtaining futures contract data interface every 30 seconds
- The maximum number of futures is 200, in the code list for each request.

←
[Get Related Data of a Specific Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-referencestock-list.html)[Filter Stocks by Condition](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-stock-filter.html)
→

## Get global market status

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-global-state.html


`get_global_state()`

- **Description**

Get global status

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | dict | If ret == RET\_OK, global status is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Global status format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | market\_sz | [MarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663) | Shenzhen market state. |
    | market\_sh | [MarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663) | Shanghai market state. |
    | market\_hk | [MarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663) | Hong Kong market status. |
    | market\_hkfuture | [MarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663) | Hong Kong futures market status. <br><br>Due to there are differences in the trading time of different varieties in the US futures market, it is recommended to use [get\_market\_state](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-state.html) interface to get the market state of the specified variety. |
    | market\_usfuture | [MarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663) | US futures market status. <br><br>Due to there are differences in the trading time of different varieties in the US futures market, it is recommended to use [get\_market\_state](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-state.html) interface to get the market state of the specified variety. |
    | market\_us | [MarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663) | United States market state. <br><br>Due to there are differences in the trading time of different varieties in the US market, it is recommended to use [get\_market\_state](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-state.html) interface to get the market state of the specified variety. |
    | market\_sgfuture | [MarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663) | Singapore futures market status. <br><br>Due to there are differences in the trading time of different varieties in the Singapore futures market, it is recommended to use [get\_market\_state](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-state.html) interface to get the market state of the specified variety. |
    | market\_jpfuture | [MarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663) | Japanese futures market status. |
    | server\_ver | str | OpenD version number. |
    | trd\_logined | bool | True: Logged into the trading server, False: Not logged into the trading server. |
    | qot\_logined | bool | True: logged into the market server, False: Not logged into the market server. |
    | timestamp | str | Current Greenwich timestamp. <br><br>unit: second |
    | local\_timestamp | float | Local timestamp for OpenD. <br><br>unit: second |
    | program\_status\_type | [ProgramStatusType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#9803) | Current status. |
    | program\_status\_desc | str | Additional description. |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
print(quote_ctx.get_global_state())
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
(0, {'market_sz': 'REST', 'market_us': 'AFTER_HOURS_END', 'market_sh': 'REST', 'market_hk': 'MORNING', 'market_hkfuture': 'FUTURE_DAY_OPEN', 'market_usfuture': 'FUTURE_OPEN', 'market_sgfuture': 'FUTURE_DAY_OPEN', 'market_jpfuture': 'FUTURE_DAY_OPEN', 'server_ver': '504', 'trd_logined': True, 'timestamp': '1620963064', 'qot_logined': True, 'local_timestamp': 1620963064.124152, 'program_status_type': 'READY', 'program_status_desc': ''})

```


## GetGlobalState.proto


- **Description**

Get global status

- **Parameters**

- **Return**

> - For enumeration of market status, please refer to [QotMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetGlobalState(GetGlobalState.Request req)`

`void OnReply_GetGlobalState(FTAPI_Conn client, uint nSerialNo, GetGlobalState.Response rsp)`

- **Description**

Get global status

- **Parameters**

- **Return**

> - For enumeration of market status, please refer to [QotMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

**Output**

`int getGlobalState(GetGlobalState.Request req);`

`void onReply_GetGlobalState(FTAPI_Conn client, int nSerialNo, GetGlobalState.Response rsp)`

- **Description**

Get global status

- **Parameters**

- **Return**

> - For enumeration of market status, please refer to [QotMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetGlobalState(const GetGlobalState::Request &stReq);`

`virtual void OnReply_GetGlobalState(Futu::u32_t nSerialNo, const GetGlobalState::Response &stRsp) = 0;`

- **Description**

Get global status

- **Parameters**

- **Return**

> - For enumeration of market status, please refer to [QotMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetGlobalState(req);`

- **Description**

Get global status

- **Parameters**

- **Return**

> - For enumeration of market status, please refer to [QotMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`get_global_state()`

- **Description**

Get global status

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | dict | If ret == RET\_OK, global status is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Global status format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | market\_sz | [MarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663) | Shenzhen market state. |
    | market\_sh | [MarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663) | Shanghai market state. |
    | market\_hk | [MarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663) | Hong Kong market status. |
    | market\_hkfuture | [MarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663) | Hong Kong futures market status. <br><br>Due to there are differences in the trading time of different varieties in the US futures market, it is recommended to use [get\_market\_state](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-state.html) interface to get the market state of the specified variety. |
    | market\_usfuture | [MarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663) | US futures market status. <br><br>Due to there are differences in the trading time of different varieties in the US futures market, it is recommended to use [get\_market\_state](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-state.html) interface to get the market state of the specified variety. |
    | market\_us | [MarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663) | United States market state. <br><br>Due to there are differences in the trading time of different varieties in the US market, it is recommended to use [get\_market\_state](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-state.html) interface to get the market state of the specified variety. |
    | market\_sgfuture | [MarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663) | Singapore futures market status. <br><br>Due to there are differences in the trading time of different varieties in the Singapore futures market, it is recommended to use [get\_market\_state](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-state.html) interface to get the market state of the specified variety. |
    | market\_jpfuture | [MarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663) | Japanese futures market status. |
    | server\_ver | str | OpenD version number. |
    | trd\_logined | bool | True: Logged into the trading server, False: Not logged into the trading server. |
    | qot\_logined | bool | True: logged into the market server, False: Not logged into the market server. |
    | timestamp | str | Current Greenwich timestamp. <br><br>unit: second |
    | local\_timestamp | float | Local timestamp for OpenD. <br><br>unit: second |
    | program\_status\_type | [ProgramStatusType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#9803) | Current status. |
    | program\_status\_desc | str | Additional description. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
print(quote_ctx.get_global_state())
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
(0, {'market_sz': 'REST', 'market_us': 'AFTER_HOURS_END', 'market_sh': 'REST', 'market_hk': 'MORNING', 'market_hkfuture': 'FUTURE_DAY_OPEN', 'market_usfuture': 'FUTURE_OPEN', 'market_sgfuture': 'FUTURE_DAY_OPEN', 'market_jpfuture': 'FUTURE_DAY_OPEN', 'server_ver': '504', 'trd_logined': True, 'timestamp': '1620963064', 'qot_logined': True, 'local_timestamp': 1620963064.124152, 'program_status_type': 'READY', 'program_status_desc': ''})

```


## GetGlobalState.proto


- **Description**

Get global status

- **Parameters**

- **Return**

> - For enumeration of market status, please refer to [QotMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetGlobalState(GetGlobalState.Request req)`

`void OnReply_GetGlobalState(MMAPI_Conn client, uint nSerialNo, GetGlobalState.Response rsp)`

- **Description**

Get global status

- **Parameters**

- **Return**

> - For enumeration of market status, please refer to [QotMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

**Output**

`int getGlobalState(GetGlobalState.Request req);`

`void onReply_GetGlobalState(MMAPI_Conn client, int nSerialNo, GetGlobalState.Response rsp)`

- **Description**

Get global status

- **Parameters**

- **Return**

> - For enumeration of market status, please refer to [QotMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetGlobalState(const GetGlobalState::Request &stReq);`

`virtual void OnReply_GetGlobalState(moomoo::u32_t nSerialNo, const GetGlobalState::Response &stRsp) = 0;`

- **Description**

Get global status

- **Parameters**

- **Return**

> - For enumeration of market status, please refer to [QotMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetGlobalState(req);`

- **Description**

Get global status

- **Parameters**

- **Return**

> - For enumeration of market status, please refer to [QotMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

←
[Get IPO Information](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ipo-list.html)[Get Trading Calendar](https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-trading-days.html)
→

## Get Details of Historical Candlestick Quota

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-history-kl-quota.html


`get_history_kl_quota(get_detail=False)`

- **Description**

Get usage details of historical candlestick quota

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| get\_detail | bool | Whether to return the detailed record of historical candlestick pulled. <br><br>True: return.<br>False: not return. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | tuple | If ret == RET\_OK, historical candlestick quota is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Historical candlestick quota format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | used\_quota | int | Used quota. <br><br>How many stocks have been downloaded in the current period. |
    | remain\_quota | int | Remaining quota. |
    | detail\_list | list | Detailed records of historical candlestick data pulled, including stock code and pulling time. <br><br>Data type of elements in the list is dict. |

    - detail\_list, the data column format is as follows

      | Field | Type | Description |
      | --- | --- | --- |
      | code | str | Stock code. |
      | name | str | Stock name. |
      | request\_time | str | The time string of the last pull. <br><br>yyyy-MM-dd HH:mm:ss. |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_history_kl_quota(get_detail=True)  # Setting True means that you need to return the detailed record of historical candlestick pulled
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
(2, 98,  {'code': 'HK.00123', 'name': 'YUEXIU PROPERTY', 'request_time': '2023-06-20 19:59:00'}, {'code': 'HK.00700', 'name': 'TENCENT', 'request_time': '2023-07-19 16:44:14'}])

```


## Qot\_RequestHistoryKLQuota.proto


- **Description**

Get usage details of historical candlestick quota

- **Parameters**

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint RequestHistoryKLQuota(QotRequestHistoryKLQuota.Request req);`

`virtual void OnReply_RequestHistoryKLQuota(FTAPI_Conn client, uint nSerialNo, QotRequestHistoryKLQuota.Response rsp);`

- **Description**

Get usage details of historical candlestick quota

- **Parameters**

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int requestHistoryKLQuota(QotRequestHistoryKLQuota.Request req);`

`void onReply_RequestHistoryKLQuota(FTAPI_Conn client, int nSerialNo, QotRequestHistoryKLQuota.Response rsp);`

- **Description**

Get usage details of historical candlestick quota

- **Parameters**

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t RequestHistoryKLQuota(const Qot_RequestHistoryKLQuota::Request &stReq);`

`virtual void OnReply_RequestHistoryKLQuota(Futu::u32_t nSerialNo, const Qot_RequestHistoryKLQuota::Response &stRsp) = 0;`

- **Description**

Get usage details of historical candlestick quota, that is, how many stocks have been downloaded in the current period

- **Parameters**

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`RequestHistoryKLQuota(req);`

- **Description**

Get usage details of historical candlestick quota

- **Parameters**

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Restrictions

- We will issue historical candlestick quotas based on the assets and tradings of your account. Therefore, you can only obtain historical candlestick data for a limited number of stocks within 30 days. For specific rules, please refer to [Subscription Quota & Historical Candlestick Quota](https://openapi.moomoo.com/moomoo-api-doc/en/intro/authority.html#9123).
- The historical candlestick quota you consume on that day will be automatically released after 30 days.

`get_history_kl_quota(get_detail=False)`

- **Description**

Get usage details of historical candlestick quota

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| get\_detail | bool | Whether to return the detailed record of historical candlestick pulled. <br><br>True: return.<br>False: not return. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | tuple | If ret == RET\_OK, historical candlestick quota is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Historical candlestick quota format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | used\_quota | int | Used quota. <br><br>How many stocks have been downloaded in the current period. |
    | remain\_quota | int | Remaining quota. |
    | detail\_list | list | Detailed records of historical candlestick data pulled, including stock code and pulling time. <br><br>Data type of elements in the list is dict. |

    - detail\_list, the data column format is as follows

      | Field | Type | Description |
      | --- | --- | --- |
      | code | str | Stock code. |
      | name | str | Stock name. |
      | request\_time | str | The time string of the last pull. <br><br>yyyy-MM-dd HH:mm:ss. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_history_kl_quota(get_detail=True)  # Setting True means that you need to return the detailed record of historical candlestick pulled
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
(2, 98,  {'code': 'HK.00123', 'name': 'YUEXIU PROPERTY', 'request_time': '2023-06-20 19:59:00'}, {'code': 'HK.00700', 'name': 'TENCENT', 'request_time': '2023-07-19 16:44:14'}])

```


## Qot\_RequestHistoryKLQuota.proto


- **Description**

Get usage details of historical candlestick quota

- **Parameters**

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint RequestHistoryKLQuota(QotRequestHistoryKLQuota.Request req);`

`virtual void OnReply_RequestHistoryKLQuota(MMAPI_Conn client, uint nSerialNo, QotRequestHistoryKLQuota.Response rsp);`

- **Description**

Get usage details of historical candlestick quota

- **Parameters**

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int requestHistoryKLQuota(QotRequestHistoryKLQuota.Request req);`

`void onReply_RequestHistoryKLQuota(MMAPI_Conn client, int nSerialNo, QotRequestHistoryKLQuota.Response rsp);`

- **Description**

Get usage details of historical candlestick quota

- **Parameters**

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t RequestHistoryKLQuota(const Qot_RequestHistoryKLQuota::Request &stReq);`

`virtual void OnReply_RequestHistoryKLQuota(moomoo::u32_t nSerialNo, const Qot_RequestHistoryKLQuota::Response &stRsp) = 0;`

- **Description**

Get usage details of historical candlestick quota, that is, how many stocks have been downloaded in the current period

- **Parameters**

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`RequestHistoryKLQuota(req);`

- **Description**

Get usage details of historical candlestick quota

- **Parameters**

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Restrictions

- We will issue historical candlestick quotas based on the assets and tradings of your account. Therefore, you can only obtain historical candlestick data for a limited number of stocks within 30 days. For specific rules, please refer to [Subscription Quota & Historical Candlestick Quota](https://openapi.moomoo.com/moomoo-api-doc/en/intro/authority.html#9123).
- The historical candlestick quota you consume on that day will be automatically released after 30 days.

←
[Get Trading Calendar](https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-trading-days.html)[Set Price Reminder](https://openapi.moomoo.com/moomoo-api-doc/en/quote/set-price-reminder.html)
→

## Get IPO Information

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ipo-list.html


`get_ipo_list(market)`

- **Description**

Get IPO information of a specific market

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| market | [Market](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456) | Market identification. <br><br>Note: Shanghai and Shenzhen are not distinguished here. Entering Shanghai or Shenzhen will return the stocks in the Shanghai and Shenzhen markets. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, IPO data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - IPO data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | list\_time | str | Listing date, expected listing date for US stocks. <br><br>Format：yyyy-MM-dd |
    | list\_timestamp | float | Listing date timestamp, expected listing date timestamp for US stocks. |
    | apply\_code | str | Subscription code (applicable to A-shares). |
    | issue\_size | int | Total number of issuance (applicable to A-shares); Total quantity of issuance (applicable to US stocks). |
    | online\_issue\_size | int | Online issuance (applicable to A-shares). |
    | apply\_upper\_limit | int | Subscription limit (applicable for A-shares). |
    | apply\_limit\_market\_value | int | The market value required for maximium subscription (applicable to A-shares). |
    | is\_estimate\_ipo\_price | bool | Weather to estimate the issuance price (applicable to A-shares). |
    | ipo\_price | float | Issuance price. <br><br>Estimated value, for reference only, will change due to changes in data such as raised funds, issuance quantity, issuance costs, etc. The actual data will be updated as soon as it is released.<br> (applicable to A-shares). |
    | industry\_pe\_rate | float | Industry P/E ratio (applicable to A-shares). |
    | is\_estimate\_winning\_ratio | bool | Whether to estimate the winning rate (applicable to A-shares). |
    | winning\_ratio | float | Winning rate. <br><br>    - This field is in percentage form, so 20 is equivalent to 20%.<br>    - The estimated value, for reference only, will change due to changes in data such as funds raised, issuance quantity, issuance costs, etc. The actual data will be updated as soon as it is released.<br> (applicable to A-shares). |
    | issue\_pe\_rate | float | Issue P/E ratio (applicable to A-shares). |
    | apply\_time | str | Subscription date string <br><br>Format：yyyy-MM-dd<br> (applicable to A-shares). |
    | apply\_timestamp | float | Subscription date timestamp (applicable to A-shares). |
    | winning\_time | str | Time string of announcement date <br><br>Format：yyyy-MM-dd<br> (applicable to A-shares). |
    | winning\_timestamp | float | Timestamp of announcement date (applicable to A-shares). |
    | is\_has\_won | bool | Whether the winning number has been announced (applicable to A-shares). |
    | winning\_num\_data | str | The winning number (applicable to A-shares). <br><br>The format is similar: <br>The last "five" digits: 12345, 12346. <br>The last "six" digits: 123456. |
    | ipo\_price\_min | float | Lowest offer price (applicable to HK stocks); lowest issue price (applicable to US stocks). |
    | ipo\_price\_max | float | Highest offer price (applicable to HK stocks); highest issue price (applicable to US stocks). |
    | list\_price | float | List price (applicable to HK stocks). |
    | lot\_size | int | Number of shares per lot. |
    | entrance\_price | float | Entrance fee (applicable to HK stocks). |
    | is\_subscribe\_status | bool | Is it a subscription status. <br><br>True: is subscribing, False: pending listing. |
    | apply\_end\_time | str | Subscription deadline string <br><br>Format：yyyy-MM-dd<br> (applicable to HK stocks). |
    | apply\_end\_timestamp | float | Subscription deadline timestamp. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_ipo_list(Market.HK)
if ret == RET_OK:
    print(data)
    print(data['code'][0]) # Take the first stock code
    print(data['code'].values.tolist()) # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
    code      name   list_time  list_timestamp apply_code issue_size online_issue_size apply_upper_limit apply_limit_market_value is_estimate_ipo_price ipo_price industry_pe_rate is_estimate_winning_ratio winning_ratio issue_pe_rate apply_time apply_timestamp winning_time winning_timestamp is_has_won winning_num_data  ipo_price_min  ipo_price_max  list_price  lot_size  entrance_price  is_subscribe_status apply_end_time  apply_end_timestamp
0  HK.06666  Evergrande Property Services Group Limited  2020-12-02    1.606838e+09        N/A        N/A               N/A               N/A                      N/A                   N/A       N/A              N/A                       N/A           N/A           N/A        N/A             N/A          N/A               N/A        N/A              N/A          8.500           9.75         0.0       500         4924.12                 True     2020-11-26         1.606352e+09
1  HK.02110                    Yue Kan Holdings Limited  2020-12-07    1.607270e+09        N/A        N/A               N/A               N/A                      N/A                   N/A       N/A              N/A                       N/A           N/A           N/A        N/A             N/A          N/A               N/A        N/A              N/A          0.225           0.27         0.0     10000         2727.21                 True     2020-11-27         1.606439e+09
HK.06666
['HK.06666', 'HK.02110']

```


## Qot\_GetIpoList.proto


- **Description**

Get IPO information of a specific market

- **Parameters**

> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetIpoList(QotGetIpoList.Request req);`

`virtual void OnReply_GetIpoList(FTAPI_Conn client, uint nSerialNo, QotGetIpoList.Response rsp);`

- **Description**

Get IPO information of a specific market

- **Parameters**

> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getIpoList(QotGetIpoList.Request req);`

`void onReply_GetIpoList(FTAPI_Conn client, int nSerialNo, QotGetIpoList.Response rsp);`

- **Description**

Get IPO information of a specific market

- **Parameters**

> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetIpoList(const Qot_GetIpoList::Request &stReq);`

`virtual void OnReply_GetIpoList(Futu::u32_t nSerialNo, const Qot_GetIpoList::Response &stRsp) = 0;`

- **Description**

Get IPO information of a specific market

- **Parameters**

> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetIpoList(req);`

- **Description**

Get IPO information of a specific market

- **Parameters**

> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds

`get_ipo_list(market)`

- **Description**

Get IPO information of a specific market

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| market | [Market](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456) | Market identification. <br><br>Note: Shanghai and Shenzhen are not distinguished here. Entering Shanghai or Shenzhen will return the stocks in the Shanghai and Shenzhen markets. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, IPO data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - IPO data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | list\_time | str | Listing date, expected listing date for US stocks. <br><br>Format：yyyy-MM-dd |
    | list\_timestamp | float | Listing date timestamp, expected listing date timestamp for US stocks. |
    | apply\_code | str | Subscription code (applicable to A-shares). |
    | issue\_size | int | Total number of issuance (applicable to A-shares); Total quantity of issuance (applicable to US stocks). |
    | online\_issue\_size | int | Online issuance (applicable to A-shares). |
    | apply\_upper\_limit | int | Subscription limit (applicable for A-shares). |
    | apply\_limit\_market\_value | int | The market value required for maximium subscription (applicable to A-shares). |
    | is\_estimate\_ipo\_price | bool | Weather to estimate the issuance price (applicable to A-shares). |
    | ipo\_price | float | Issuance price. <br><br>Estimated value, for reference only, will change due to changes in data such as raised funds, issuance quantity, issuance costs, etc. The actual data will be updated as soon as it is released.<br> (applicable to A-shares). |
    | industry\_pe\_rate | float | Industry P/E ratio (applicable to A-shares). |
    | is\_estimate\_winning\_ratio | bool | Whether to estimate the winning rate (applicable to A-shares). |
    | winning\_ratio | float | Winning rate. <br><br>    - This field is in percentage form, so 20 is equivalent to 20%.<br>    - The estimated value, for reference only, will change due to changes in data such as funds raised, issuance quantity, issuance costs, etc. The actual data will be updated as soon as it is released.<br> (applicable to A-shares). |
    | issue\_pe\_rate | float | Issue P/E ratio (applicable to A-shares). |
    | apply\_time | str | Subscription date string <br><br>Format：yyyy-MM-dd<br> (applicable to A-shares). |
    | apply\_timestamp | float | Subscription date timestamp (applicable to A-shares). |
    | winning\_time | str | Time string of announcement date <br><br>Format：yyyy-MM-dd<br> (applicable to A-shares). |
    | winning\_timestamp | float | Timestamp of announcement date (applicable to A-shares). |
    | is\_has\_won | bool | Whether the winning number has been announced (applicable to A-shares). |
    | winning\_num\_data | str | The winning number (applicable to A-shares). <br><br>The format is similar: <br>The last "five" digits: 12345, 12346. <br>The last "six" digits: 123456. |
    | ipo\_price\_min | float | Lowest offer price (applicable to HK stocks); lowest issue price (applicable to US stocks). |
    | ipo\_price\_max | float | Highest offer price (applicable to HK stocks); highest issue price (applicable to US stocks). |
    | list\_price | float | List price (applicable to HK stocks). |
    | lot\_size | int | Number of shares per lot. |
    | entrance\_price | float | Entrance fee (applicable to HK stocks). |
    | is\_subscribe\_status | bool | Is it a subscription status. <br><br>True: is subscribing, False: pending listing. |
    | apply\_end\_time | str | Subscription deadline string <br><br>Format：yyyy-MM-dd<br> (applicable to HK stocks). |
    | apply\_end\_timestamp | float | Subscription deadline timestamp. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_ipo_list(Market.HK)
if ret == RET_OK:
    print(data)
    print(data['code'][0]) # Take the first stock code
    print(data['code'].values.tolist()) # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
    code      name   list_time  list_timestamp apply_code issue_size online_issue_size apply_upper_limit apply_limit_market_value is_estimate_ipo_price ipo_price industry_pe_rate is_estimate_winning_ratio winning_ratio issue_pe_rate apply_time apply_timestamp winning_time winning_timestamp is_has_won winning_num_data  ipo_price_min  ipo_price_max  list_price  lot_size  entrance_price  is_subscribe_status apply_end_time  apply_end_timestamp
0  HK.06666  Evergrande Property Services Group Limited  2020-12-02    1.606838e+09        N/A        N/A               N/A               N/A                      N/A                   N/A       N/A              N/A                       N/A           N/A           N/A        N/A             N/A          N/A               N/A        N/A              N/A          8.500           9.75         0.0       500         4924.12                 True     2020-11-26         1.606352e+09
1  HK.02110                    Yue Kan Holdings Limited  2020-12-07    1.607270e+09        N/A        N/A               N/A               N/A                      N/A                   N/A       N/A              N/A                       N/A           N/A           N/A        N/A             N/A          N/A               N/A        N/A              N/A          0.225           0.27         0.0     10000         2727.21                 True     2020-11-27         1.606439e+09
HK.06666
['HK.06666', 'HK.02110']

```


## Qot\_GetIpoList.proto


- **Description**

Get IPO information of a specific market

- **Parameters**

> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetIpoList(QotGetIpoList.Request req);`

`virtual void OnReply_GetIpoList(MMAPI_Conn client, uint nSerialNo, QotGetIpoList.Response rsp);`

- **Description**

Get IPO information of a specific market

- **Parameters**

> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getIpoList(QotGetIpoList.Request req);`

`void onReply_GetIpoList(MMAPI_Conn client, int nSerialNo, QotGetIpoList.Response rsp);`

- **Description**

Get IPO information of a specific market

- **Parameters**

> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetIpoList(const Qot_GetIpoList::Request &stReq);`

`virtual void OnReply_GetIpoList(moomoo::u32_t nSerialNo, const Qot_GetIpoList::Response &stRsp) = 0;`

- **Description**

Get IPO information of a specific market

- **Parameters**

> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetIpoList(req);`

- **Description**

Get IPO information of a specific market

- **Parameters**

> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds

←
[Get Stock Basic Information](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-static-info.html)[Get global market status](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-global-state.html)
→

## Get Real-time Candlestick

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-kl.html


`get_cur_kline(code, num, ktype=SubType.K_DAY, autype=AuType.QFQ)`

- **Description**

Get real-time candlestick data of subscribed stocks, you must subscribe first.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Stock code. |
| num | int | The number of candlesticks. <br><br>Up to 1000. |
| ktype | [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66) | Candlestick type. |
| autype | [AuType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071) | Type of adjustment. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, IPO data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - IPO data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | time\_key | str | Time. <br><br>Format: yyyy-MM-dd HH:mm:ss<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | open | float | Open. |
    | close | float | Close. |
    | high | float | High. |
    | low | float | Low. |
    | volume | int | Volume. |
    | turnover | float | Turnover. |
    | pe\_ratio | float | P/E ratio. |
    | turnover\_rate | float | Turnover rate. <br><br>This field is in decimal form, so 0.01 is equivalent to 1%. |
    | last\_close | float | Yesterday's close. <br><br>The close of the previous trading day.<br>For efficiency reasons, the yesterday's close of the first data may be 0. |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret_sub, err_message = quote_ctx.subscribe(['US.AAPL'], [SubType.K_DAY], subscribe_push=False, session=Session.ALL)
# First subscribe to the candlestick type. After the subscription is successful, OpenD will continue to receive pushes from the server, False means that there is no need to push to the script temporarily
if ret_sub == RET_OK:  # Successfully subscribed
    ret, data = quote_ctx.get_cur_kline('US.AAPL', 2, SubType.K_DAY, AuType.QFQ)  # Get the latest 2 candlestick data of US.AAPL
    if ret == RET_OK:
        print(data)
        print(data['turnover_rate'][0])   # Take the first turnover rate
        print(data['turnover_rate'].values.tolist())   # Convert to list
    else:
        print('error:', data)
else:
    print('subscription failed', err_message)
quote_ctx.close()  # Close the current link, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
code name             time_key    open   close    high     low     volume      turnover  pe_ratio  turnover_rate  last_close
0  US.AAPL   APPLE  2025-04-03 00:00:00  205.54  203.19  207.49  201.25  103419006  2.111773e+10    33.419        0.00689      223.89
1  US.AAPL   APPLE  2025-04-04 00:00:00  193.89  188.38  199.88  187.34  125910913  2.424473e+10    30.983        0.00838      203.19
0.00689
[0.00689, 0.00838]

```


## Qot\_GetKL.proto


- **Description**

To obtain real-time K line data of subscribed stocks, you must first subscribe.

- **Parameters**

> - For Stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For Candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)

- **Return**

> - For Stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetKL(QotGetKL.Request req);`

`virtual void OnReply_GetKL(FTAPI_Conn client, uint nSerialNo, QotGetKL.Response rsp);`

- **Description**

Get real-time candlestick data of subscribed stocks, you must subscribe first.

- **Parameters**

> - For Stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For Candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)

- **Return**

> - For Stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getKL(QotGetKL.Request req);`

`void onReply_GetKL(FTAPI_Conn client, int nSerialNo, QotGetKL.Response rsp);`

- **Description**

Get real-time candlestick data of subscribed stocks, you must subscribe first.

- **Parameters**

> - For Stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For Candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)

- **Return**

> - For Stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetKL(const Qot_GetKL::Request &stReq);`

`virtual void OnReply_GetKL(Futu::u32_t nSerialNo, const Qot_GetKL::Response &stRsp) = 0;`

- **Description**

Get real-time candlestick data of subscribed stocks, you must subscribe first.

- **Parameters**

> - For Stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For Candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)

- **Return**

> - For Stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetKL(req);`

- **Description**

Get real-time candlestick data of subscribed stocks, you must subscribe first.

- **Parameters**

> - For Stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For Candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)

- **Return**

> - For Stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- This interface is to obtain real-time candlestick, which can obtain the nearest 1000 at most. To get historical candlestick, please refer to [Get historical candlestick](https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-history-kline.html).
- Only a stock of daily timeframe and above have P/E ratio and turnover ratio fields.
- **Options** related candlestick data, only supports 1 day, 1 minute, 5 minutes, 15 minutes and 60 minutes.

Tips

- This API provides the function of obtaining candlestick data at one time. If you need to obtain pushed data continuously, please refer to the [Real-time Candlestick Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-kl.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).

`get_cur_kline(code, num, ktype=SubType.K_DAY, autype=AuType.QFQ)`

- **Description**

Get real-time candlestick data of subscribed stocks, you must subscribe first.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Stock code. |
| num | int | The number of candlesticks. <br><br>Up to 1000. |
| ktype | [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66) | Candlestick type. |
| autype | [AuType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071) | Type of adjustment. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, IPO data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - IPO data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | time\_key | str | Time. <br><br>Format: yyyy-MM-dd HH:mm:ss<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | open | float | Open. |
    | close | float | Close. |
    | high | float | High. |
    | low | float | Low. |
    | volume | int | Volume. |
    | turnover | float | Turnover. |
    | pe\_ratio | float | P/E ratio. |
    | turnover\_rate | float | Turnover rate. <br><br>This field is in decimal form, so 0.01 is equivalent to 1%. |
    | last\_close | float | Yesterday's close. <br><br>The close of the previous trading day.<br>For efficiency reasons, the yesterday's close of the first data may be 0. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret_sub, err_message = quote_ctx.subscribe(['US.AAPL'], [SubType.K_DAY], subscribe_push=False, session=Session.ALL)
# First subscribe to the candlestick type. After the subscription is successful, OpenD will continue to receive pushes from the server, False means that there is no need to push to the script temporarily
if ret_sub == RET_OK:  # Successfully subscribed
    ret, data = quote_ctx.get_cur_kline('US.AAPL', 2, SubType.K_DAY, AuType.QFQ)  # Get the latest 2 candlestick data of US.AAPL
    if ret == RET_OK:
        print(data)
        print(data['turnover_rate'][0])   # Take the first turnover rate
        print(data['turnover_rate'].values.tolist())   # Convert to list
    else:
        print('error:', data)
else:
    print('subscription failed', err_message)
quote_ctx.close()  # Close the current link, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
code name             time_key    open   close    high     low     volume      turnover  pe_ratio  turnover_rate  last_close
0  US.AAPL   APPLE  2025-04-03 00:00:00  205.54  203.19  207.49  201.25  103419006  2.111773e+10    33.419        0.00689      223.89
1  US.AAPL   APPLE  2025-04-04 00:00:00  193.89  188.38  199.88  187.34  125910913  2.424473e+10    30.983        0.00838      203.19
0.00689
[0.00689, 0.00838]

```


## Qot\_GetKL.proto


- **Description**

To obtain real-time K line data of subscribed stocks, you must first subscribe.

- **Parameters**

> - For Stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For Candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)

- **Return**

> - For Stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetKL(QotGetKL.Request req);`

`virtual void OnReply_GetKL(MMAPI_Conn client, uint nSerialNo, QotGetKL.Response rsp);`

- **Description**

Get real-time candlestick data of subscribed stocks, you must subscribe first.

- **Parameters**

> - For Stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For Candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)

- **Return**

> - For Stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getKL(QotGetKL.Request req);`

`void onReply_GetKL(MMAPI_Conn client, int nSerialNo, QotGetKL.Response rsp);`

- **Description**

Get real-time candlestick data of subscribed stocks, you must subscribe first.

- **Parameters**

> - For Stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For Candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)

- **Return**

> - For Stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetKL(const Qot_GetKL::Request &stReq);`

`virtual void OnReply_GetKL(moomoo::u32_t nSerialNo, const Qot_GetKL::Response &stRsp) = 0;`

- **Description**

Get real-time candlestick data of subscribed stocks, you must subscribe first.

- **Parameters**

> - For Stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For Candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)

- **Return**

> - For Stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetKL(req);`

- **Description**

Get real-time candlestick data of subscribed stocks, you must subscribe first.

- **Parameters**

> - For Stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For Candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)

- **Return**

> - For Stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- This interface is to obtain real-time candlestick, which can obtain the nearest 1000 at most. To get historical candlestick, please refer to [Get historical candlestick](https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-history-kline.html).
- Only a stock of daily timeframe and above have P/E ratio and turnover ratio fields.
- **Options** related candlestick data, only supports 1 day, 1 minute, 5 minutes, 15 minutes and 60 minutes.

Tips

- This API provides the function of obtaining candlestick data at one time. If you need to obtain pushed data continuously, please refer to the [Real-time Candlestick Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-kl.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).

←
[Get Real-time Order Book](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-order-book.html)[Get Real-time Time Frame Data](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-rt.html)
→

## Get Market Snapshot

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-snapshot.html


`get_market_snapshot(code_list)`

- **Description**

Get market snapshot

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code\_list | list | Stock list <br><br>Up to 400 targets can be requested each time. <br>Data type of elements in the list is str. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, stock snapshot data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Stock snapshot data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | update\_time | str | Current update time. <br><br>yyyy-MM-dd HH:mm:ss. <br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | last\_price | float | Latest price. |
    | open\_price | float | Open. |
    | high\_price | float | High. |
    | low\_price | float | Low. |
    | prev\_close\_price | float | Yesterday's close. |
    | volume | int | Volume. |
    | turnover | float | Turnover. |
    | turnover\_rate | float | Turnover rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | suspension | bool | Is suspended or not. <br><br>True: suspension. |
    | listing\_date | str | Listing date. <br><br>yyyy-MM-dd |
    | equity\_valid | bool | Is stock or not. <br><br>The following equity-related fields will be legal only if this field is True. |
    | issued\_shares | int | Total shares. |
    | total\_market\_val | float | Total market value. <br><br>Unit: yuan |
    | net\_asset | int | Net asset value. |
    | net\_profit | int | Net profit. |
    | earning\_per\_share | float | Earnings per share. |
    | outstanding\_shares | int | Shares outstanding. |
    | net\_asset\_per\_share | float | Net assets per share. |
    | circular\_market\_val | float | Circulation market value. <br><br>Unit: yuan |
    | ey\_ratio | float | Yield rate. <br><br>This field is a ratio field, and % is not displayed. |
    | pe\_ratio | float | P/E ratio. <br><br>This field is a ratio field, and % is not displayed. |
    | pb\_ratio | float | P/B ratio. <br><br>This field is a ratio field, and % is not displayed. |
    | pe\_ttm\_ratio | float | P/E ratio TTM. <br><br>This field is a ratio field, and % is not displayed. |
    | dividend\_ttm | float | Dividend TTM, dividend. |
    | dividend\_ratio\_ttm | float | Dividend rate TTM. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | dividend\_lfy | float | Dividend LFY, dividend of the previous year. |
    | dividend\_lfy\_ratio | float | Dividend rate LFY. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | stock\_owner | str | The code of the underlying stock to which the warrant belongs or the code of the underlying stock of the option. |
    | wrt\_valid | bool | Is warrant or not. <br><br>The following warrant related fields will be legal if this field is True. |
    | wrt\_conversion\_ratio | float | Conversion ratio. |
    | wrt\_type | [WrtType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421) | Warrant type. |
    | wrt\_strike\_price | float | Strike price. |
    | wrt\_maturity\_date | str | Maturity date. |
    | wrt\_end\_trade | str | Last trading time. |
    | wrt\_leverage | float | Leverage ratio. <br><br>Unit: times |
    | wrt\_ipop | float | in/out of the money. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | wrt\_break\_even\_point | float | Breakeven point. |
    | wrt\_conversion\_price | float | Conversion price. |
    | wrt\_price\_recovery\_ratio | float | Price recovery ratio. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | wrt\_score | float | Comprehensive score of warrant. |
    | wrt\_code | str | The underlying stock of the warrant (This field has been deprecated and changed to stock\_owner.). |
    | wrt\_recovery\_price | float | Warrant recovery price. |
    | wrt\_street\_vol | float | Warrant Outstanding quantity. |
    | wrt\_issue\_vol | float | Warrant issuance. |
    | wrt\_street\_ratio | float | Outstanding percentage. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | wrt\_delta | float | Delta value of warrant. |
    | wrt\_implied\_volatility | float | Warrant implied volatility. |
    | wrt\_premium | float | Warrant premium. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | wrt\_upper\_strike\_price | float | Upper bound price. <br><br>Only Inline Warrant supports this field. |
    | wrt\_lower\_strike\_price | float | lower bound price. <br><br>Only Inline Warrant supports this field. |
    | wrt\_inline\_price\_status | [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794) | in/out of bounds <br><br>Only Inline Warrant supports this field. |
    | wrt\_issuer\_code | str | Issuer code. |
    | option\_valid | bool | Is option or not. <br><br>The following option related fields will be legal when this field is True. |
    | option\_type | [OptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9598) | Option type. |
    | strike\_time | str | The option exercise date. <br><br>Format: yyyy-MM-dd<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | option\_strike\_price | float | Strike price. |
    | option\_contract\_size | float | Number of stocks per contract. |
    | option\_open\_interest | int | Total open contract number. |
    | option\_implied\_volatility | float | Implied volatility. |
    | option\_premium | float | Premium. |
    | option\_delta | float | Greek value Delta. |
    | option\_gamma | float | Greek value Gamma. |
    | option\_vega | float | Greek value Vega. |
    | option\_theta | float | Greek value Theta. |
    | option\_rho | float | Greek value Rho. |
    | index\_option\_type | [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866) | Index option type. |
    | option\_net\_open\_interest | int | Net open contract number. <br><br>Only HK options support this field. |
    | option\_expiry\_date\_distance | int | The number of days from the expiry date, a negative number means it has expired. |
    | option\_contract\_nominal\_value | float | Contract nominal amount. <br><br>Only HK options support this field. |
    | option\_owner\_lot\_multiplier | float | Equal number of underlying stocks. <br><br>Index options do not have this field, only HK options support this field. |
    | option\_area\_type | [OptionAreaType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3628) | Option type (by exercise time). |
    | option\_contract\_multiplier | float | Contract multiplier. |
    | plate\_valid | bool | Is plate or not. <br><br>The following plate related fields will be legal when this field is True. |
    | plate\_raise\_count | int | Number of stocks that raises in the plate. |
    | plate\_fall\_count | int | Number of stocks that falls in the plate. |
    | plate\_equal\_count | int | Number of stocks that dose not change in price in the plate. |
    | index\_valid | bool | Is index or not. <br><br>The following index related fields will be legal when this field is True. |
    | index\_raise\_count | int | Number of stocks that raises in the plate. |
    | index\_fall\_count | int | Number of stocks that falls in the plate. |
    | index\_equal\_count | int | Number of stocks that dose not change in the plate. |
    | lot\_size | int | The number of shares per lot, stock options represent the number of shares per contract <br><br>Index options do not have this field.<br>, and futures represent contract multipliers. |
    | price\_spread | float | The current upward price difference. <br><br>That is, the quotation difference between ask price and sell 1. |
    | ask\_price | float | Ask price. |
    | bid\_price | float | Bid price. |
    | ask\_vol | float | Ask volume. |
    | bid\_vol | float | Bid volume. |
    | enable\_margin | bool | Whether financing is available (Deprecated). <br><br>Please use [Get Margin Data](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-margin-ratio.html). |
    | mortgage\_ratio | float | Stock mortgage rate (Deprecated). |
    | long\_margin\_initial\_ratio | float | The initial margin rate of financing (Deprecated). <br><br>Please use [Get Margin Data](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-margin-ratio.html). |
    | enable\_short\_sell | bool | Whether short-selling is available (Deprecated). <br><br>Please use [Get Margin Data](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-margin-ratio.html). |
    | short\_sell\_rate | float | Short-selling reference rate (Deprecated). <br><br>Please use [Get Margin Data](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-margin-ratio.html). |
    | short\_available\_volume | int | Remaining quantity that can be sold short (Deprecated). <br><br>Please use [Get Margin Data](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-margin-ratio.html). |
    | short\_margin\_initial\_ratio | float | The initial margin rate for short selling (Deprecated). <br><br>Please use [Get Margin Data](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-margin-ratio.html). |
    | sec\_status | [SecurityStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#4415) | Stock status. |
    | amplitude | float | Amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | avg\_price | float | Average price. |
    | bid\_ask\_ratio | float | The Committee. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | volume\_ratio | float | Volume ratio. |
    | highest52weeks\_price | float | Highest price in 52 weeks. |
    | lowest52weeks\_price | float | Lowest price in 52 weeks . |
    | highest\_history\_price | float | Highest historical price. |
    | lowest\_history\_price | float | Lowest historical price. |
    | pre\_price | float | Pre-market price. |
    | pre\_high\_price | float | Highest pre-market price. |
    | pre\_low\_price | float | Lowest pre-market price. |
    | pre\_volume | int | Pre-market volume. |
    | pre\_turnover | float | Pre-market turnover. |
    | pre\_change\_val | float | Pre-market change. |
    | pre\_change\_rate | float | Pre-market change rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | pre\_amplitude | float | Pre-market amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | after\_price | float | After-hours price. |
    | after\_high\_price | float | Highest price after-hours. |
    | after\_low\_price | float | Lowest price after-hours. |
    | after\_volume | int | After-hours trading volume. <br><br>The Sci-tech Innovation Board supports this data. |
    | after\_turnover | float | After-hours turnover. <br><br>The Sci-tech Innovation Board supports this data. |
    | after\_change\_val | float | After-hours change. |
    | after\_change\_rate | float | After-hours change rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | after\_amplitude | float | After-hours amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | overnight\_price | float | Overnight price. |
    | overnight\_high\_price | float | Overnight high. |
    | overnight\_low\_price | float | Overnight low. |
    | overnight\_volume | int | Overnight volume. |
    | overnight\_turnover | float | Overnight turnover. |
    | overnight\_change\_val | float | Overnight change. |
    | overnight\_change\_rate | float | Overnight change rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | overnight\_amplitude | float | Overnight amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | future\_valid | bool | Is futures or not. |
    | future\_last\_settle\_price | float | Yesterday's close. |
    | future\_position | float | Holding position. |
    | future\_position\_change | float | Change in position. |
    | future\_main\_contract | bool | Is future main contract or not. |
    | future\_last\_trade\_time | str | The last trading time. <br><br>Main, current month and next month futures do not have this field. |
    | trust\_valid | bool | Is fund or not. |
    | trust\_dividend\_yield | float | Dividend rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | trust\_aum | float | Asset scale. <br><br>Unit: yuan |
    | trust\_outstanding\_units | int | Total circulation. |
    | trust\_netAssetValue | float | Net asset value. |
    | trust\_premium | float | Premium. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | trust\_assetClass | [AssetClass](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#4696) | Asset class. |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_market_snapshot(['HK.00700', 'US.AAPL'])
if ret == RET_OK:
    print(data)
    print(data['code'][0])    # Take the first stock code
    print(data['code'].values.tolist())   # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
   code  name              update_time  last_price  open_price  high_price  low_price  prev_close_price     volume      turnover  turnover_rate  suspension listing_date  lot_size  price_spread  stock_owner  ask_price  bid_price  ask_vol  bid_vol  enable_margin  mortgage_ratio  long_margin_initial_ratio  enable_short_sell  short_sell_rate  short_available_volume  short_margin_initial_ratio  amplitude  avg_price  bid_ask_ratio  volume_ratio  highest52weeks_price  lowest52weeks_price  highest_history_price  lowest_history_price  close_price_5min  after_volume  after_turnover sec_status  equity_valid  issued_shares  total_market_val     net_asset    net_profit  earning_per_share  outstanding_shares  circular_market_val  net_asset_per_share  ey_ratio  pe_ratio  pb_ratio  pe_ttm_ratio  dividend_ttm  dividend_ratio_ttm  dividend_lfy  dividend_lfy_ratio  wrt_valid  wrt_conversion_ratio wrt_type  wrt_strike_price  wrt_maturity_date  wrt_end_trade  wrt_recovery_price  wrt_street_vol  \
0  HK.00700  TENCENT      2025-04-07 16:09:07      435.40      441.80      462.40     431.00            497.80  123364114  5.499476e+10          1.341       False   2004-06-16       100          0.20          NaN      435.4     435.20   281300    17300            NaN             NaN                        NaN                NaN              NaN                     NaN                         NaN      6.308    445.792        -68.499         5.627             547.00000           294.400000             706.100065            -13.202011            431.60             0    0.000000e+00     NORMAL          True     9202391012      4.006721e+12  1.051300e+12  2.095753e+11             22.774          9202391012         4.006721e+12              114.242     0.199    19.118     3.811        19.118          3.48                0.80          3.48               0.799      False                   NaN      N/A               NaN                NaN            NaN                 NaN             NaN
1   US.AAPL    APPLE  2025-04-07 05:30:43.301      188.38      193.89      199.88     187.34            203.19  125910913  2.424473e+10          0.838       False   1980-12-12         1          0.01          NaN      180.8     180.48       29      400            NaN             NaN                        NaN                NaN              NaN                     NaN                         NaN      6.172    192.554         86.480         2.226             259.81389           163.300566             259.813890              0.053580            188.93       3151311    5.930968e+08     NORMAL          True    15022073000      2.829858e+12  6.675809e+10  9.133420e+10              6.080         15016677308         2.828842e+12                4.444     1.417    30.983    42.389        29.901          0.99                0.53          0.98               0.520      False                   NaN      N/A               NaN                NaN            NaN                 NaN             NaN

   wrt_issue_vol  wrt_street_ratio  wrt_delta  wrt_implied_volatility  wrt_premium  wrt_leverage  wrt_ipop  wrt_break_even_point  wrt_conversion_price  wrt_price_recovery_ratio  wrt_score  wrt_upper_strike_price  wrt_lower_strike_price wrt_inline_price_status  wrt_issuer_code  option_valid option_type  strike_time  option_strike_price  option_contract_size  option_open_interest  option_implied_volatility  option_premium  option_delta  option_gamma  option_vega  option_theta  option_rho  option_net_open_interest  option_expiry_date_distance  option_contract_nominal_value  option_owner_lot_multiplier option_area_type  option_contract_multiplier index_option_type  index_valid  index_raise_count  index_fall_count  index_equal_count  plate_valid  plate_raise_count  plate_fall_count  plate_equal_count  future_valid  future_last_settle_price  future_position  future_position_change  future_main_contract  future_last_trade_time  trust_valid  trust_dividend_yield  trust_aum  \
0            NaN               NaN        NaN                     NaN          NaN           NaN       NaN                   NaN                   NaN                       NaN        NaN                     NaN                     NaN                     N/A              NaN         False         N/A          NaN                  NaN                   NaN                   NaN                        NaN             NaN           NaN           NaN          NaN           NaN         NaN                       NaN                          NaN                            NaN                          NaN              N/A                         NaN               N/A        False                NaN               NaN                NaN        False                NaN               NaN                NaN         False                       NaN              NaN                     NaN                   NaN                     NaN        False                   NaN        NaN
1            NaN               NaN        NaN                     NaN          NaN           NaN       NaN                   NaN                   NaN                       NaN        NaN                     NaN                     NaN                     N/A              NaN         False         N/A          NaN                  NaN                   NaN                   NaN                        NaN             NaN           NaN           NaN          NaN           NaN         NaN                       NaN                          NaN                            NaN                          NaN              N/A                         NaN               N/A        False                NaN               NaN                NaN        False                NaN               NaN                NaN         False                       NaN              NaN                     NaN                   NaN                     NaN        False                   NaN        NaN

   trust_outstanding_units  trust_netAssetValue  trust_premium trust_assetClass pre_price pre_high_price pre_low_price pre_volume pre_turnover pre_change_val pre_change_rate pre_amplitude after_price after_high_price after_low_price after_change_val after_change_rate after_amplitude overnight_price overnight_high_price overnight_low_price overnight_volume overnight_turnover overnight_change_val overnight_change_rate overnight_amplitude
0                      NaN                  NaN            NaN              N/A       N/A            N/A           N/A        N/A          N/A            N/A             N/A           N/A         N/A              N/A             N/A              N/A               N/A             N/A             N/A                  N/A                 N/A              N/A                N/A                  N/A                   N/A                 N/A
1                      NaN                  NaN            NaN              N/A    180.68         181.98        177.47     276016  49809244.83           -7.7          -4.087         2.394       186.6          188.639          186.44            -1.78            -0.944          1.1673          176.94                186.5               174.4           533115        94944250.56               -11.44                -6.072              6.4231
HK.00700
['HK.00700', 'US.AAPL']

```


## Qot\_GetSecuritySnapshot.proto


- **Description**

Get snapshot data

- **Parameters**

> - For stock structure， refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure， refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetSecuritySnapshot(QotGetSecuritySnapshot.Request req);`

`virtual void OnReply_GetSecuritySnapshot(FTAPI_Conn client, uint nSerialNo, QotGetSecuritySnapshot.Response rsp);`

- **Description**

Get market snapshot

- **Parameters**

> - For stock structure， refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure， refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getSecuritySnapshot(QotGetSecuritySnapshot.Request req);`

`void onReply_GetSecuritySnapshot(FTAPI_Conn client, int nSerialNo, QotGetSecuritySnapshot.Response rsp);`

- **Description**

Get market snapshot

- **Parameters**

> - For stock structure， refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure， refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetSecuritySnapshot(const Qot_GetSecuritySnapshot::Request &stReq);`

`virtual void OnReply_GetSecuritySnapshot(Futu::u32_t nSerialNo, const Qot_GetSecuritySnapshot::Response &stRsp) = 0;`

- **Description**

Get market snapshot

- **Parameters**

> - For stock structure， refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure， refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetSecuritySnapshot(req);`

- **Description**

Get market snapshot

- **Parameters**

> - For stock structure， refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure， refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- Request up to 60 snapshots every 30 seconds
- For each request, the maximum number of stock codes supported by the parameter _code\_list_ is 400.
- Under the authority of Hong Kong stock BMP, the maximum number of snapshots of Hong Kong securities (including warrants, CBBC, and Inline Warrants) for a single request is 20
- Under the authority of Hong Kong futures and options BMP, the maximum number of snapshots of Hong Kong futures and options for a single request is 20

`get_market_snapshot(code_list)`

- **Description**

Get market snapshot

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code\_list | list | Stock list <br><br>Up to 400 targets can be requested each time. <br>Data type of elements in the list is str. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, stock snapshot data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Stock snapshot data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | update\_time | str | Current update time. <br><br>yyyy-MM-dd HH:mm:ss. <br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | last\_price | float | Latest price. |
    | open\_price | float | Open. |
    | high\_price | float | High. |
    | low\_price | float | Low. |
    | prev\_close\_price | float | Yesterday's close. |
    | volume | int | Volume. |
    | turnover | float | Turnover. |
    | turnover\_rate | float | Turnover rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | suspension | bool | Is suspended or not. <br><br>True: suspension. |
    | listing\_date | str | Listing date. <br><br>yyyy-MM-dd |
    | equity\_valid | bool | Is stock or not. <br><br>The following equity-related fields will be legal only if this field is True. |
    | issued\_shares | int | Total shares. |
    | total\_market\_val | float | Total market value. <br><br>Unit: yuan |
    | net\_asset | int | Net asset value. |
    | net\_profit | int | Net profit. |
    | earning\_per\_share | float | Earnings per share. |
    | outstanding\_shares | int | Shares outstanding. |
    | net\_asset\_per\_share | float | Net assets per share. |
    | circular\_market\_val | float | Circulation market value. <br><br>Unit: yuan |
    | ey\_ratio | float | Yield rate. <br><br>This field is a ratio field, and % is not displayed. |
    | pe\_ratio | float | P/E ratio. <br><br>This field is a ratio field, and % is not displayed. |
    | pb\_ratio | float | P/B ratio. <br><br>This field is a ratio field, and % is not displayed. |
    | pe\_ttm\_ratio | float | P/E ratio TTM. <br><br>This field is a ratio field, and % is not displayed. |
    | dividend\_ttm | float | Dividend TTM, dividend. |
    | dividend\_ratio\_ttm | float | Dividend rate TTM. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | dividend\_lfy | float | Dividend LFY, dividend of the previous year. |
    | dividend\_lfy\_ratio | float | Dividend rate LFY. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | stock\_owner | str | The code of the underlying stock to which the warrant belongs or the code of the underlying stock of the option. |
    | wrt\_valid | bool | Is warrant or not. <br><br>The following warrant related fields will be legal if this field is True. |
    | wrt\_conversion\_ratio | float | Conversion ratio. |
    | wrt\_type | [WrtType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421) | Warrant type. |
    | wrt\_strike\_price | float | Strike price. |
    | wrt\_maturity\_date | str | Maturity date. |
    | wrt\_end\_trade | str | Last trading time. |
    | wrt\_leverage | float | Leverage ratio. <br><br>Unit: times |
    | wrt\_ipop | float | in/out of the money. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | wrt\_break\_even\_point | float | Breakeven point. |
    | wrt\_conversion\_price | float | Conversion price. |
    | wrt\_price\_recovery\_ratio | float | Price recovery ratio. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | wrt\_score | float | Comprehensive score of warrant. |
    | wrt\_code | str | The underlying stock of the warrant (This field has been deprecated and changed to stock\_owner.). |
    | wrt\_recovery\_price | float | Warrant recovery price. |
    | wrt\_street\_vol | float | Warrant Outstanding quantity. |
    | wrt\_issue\_vol | float | Warrant issuance. |
    | wrt\_street\_ratio | float | Outstanding percentage. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | wrt\_delta | float | Delta value of warrant. |
    | wrt\_implied\_volatility | float | Warrant implied volatility. |
    | wrt\_premium | float | Warrant premium. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | wrt\_upper\_strike\_price | float | Upper bound price. <br><br>Only Inline Warrant supports this field. |
    | wrt\_lower\_strike\_price | float | lower bound price. <br><br>Only Inline Warrant supports this field. |
    | wrt\_inline\_price\_status | [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794) | in/out of bounds <br><br>Only Inline Warrant supports this field. |
    | wrt\_issuer\_code | str | Issuer code. |
    | option\_valid | bool | Is option or not. <br><br>The following option related fields will be legal when this field is True. |
    | option\_type | [OptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9598) | Option type. |
    | strike\_time | str | The option exercise date. <br><br>Format: yyyy-MM-dd<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | option\_strike\_price | float | Strike price. |
    | option\_contract\_size | float | Number of stocks per contract. |
    | option\_open\_interest | int | Total open contract number. |
    | option\_implied\_volatility | float | Implied volatility. |
    | option\_premium | float | Premium. |
    | option\_delta | float | Greek value Delta. |
    | option\_gamma | float | Greek value Gamma. |
    | option\_vega | float | Greek value Vega. |
    | option\_theta | float | Greek value Theta. |
    | option\_rho | float | Greek value Rho. |
    | index\_option\_type | [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866) | Index option type. |
    | option\_net\_open\_interest | int | Net open contract number. <br><br>Only HK options support this field. |
    | option\_expiry\_date\_distance | int | The number of days from the expiry date, a negative number means it has expired. |
    | option\_contract\_nominal\_value | float | Contract nominal amount. <br><br>Only HK options support this field. |
    | option\_owner\_lot\_multiplier | float | Equal number of underlying stocks. <br><br>Index options do not have this field, only HK options support this field. |
    | option\_area\_type | [OptionAreaType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3628) | Option type (by exercise time). |
    | option\_contract\_multiplier | float | Contract multiplier. |
    | plate\_valid | bool | Is plate or not. <br><br>The following plate related fields will be legal when this field is True. |
    | plate\_raise\_count | int | Number of stocks that raises in the plate. |
    | plate\_fall\_count | int | Number of stocks that falls in the plate. |
    | plate\_equal\_count | int | Number of stocks that dose not change in price in the plate. |
    | index\_valid | bool | Is index or not. <br><br>The following index related fields will be legal when this field is True. |
    | index\_raise\_count | int | Number of stocks that raises in the plate. |
    | index\_fall\_count | int | Number of stocks that falls in the plate. |
    | index\_equal\_count | int | Number of stocks that dose not change in the plate. |
    | lot\_size | int | The number of shares per lot, stock options represent the number of shares per contract <br><br>Index options do not have this field.<br>, and futures represent contract multipliers. |
    | price\_spread | float | The current upward price difference. <br><br>That is, the quotation difference between ask price and sell 1. |
    | ask\_price | float | Ask price. |
    | bid\_price | float | Bid price. |
    | ask\_vol | float | Ask volume. |
    | bid\_vol | float | Bid volume. |
    | enable\_margin | bool | Whether financing is available (Deprecated). <br><br>Please use [Get Margin Data](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-margin-ratio.html). |
    | mortgage\_ratio | float | Stock mortgage rate (Deprecated). |
    | long\_margin\_initial\_ratio | float | The initial margin rate of financing (Deprecated). <br><br>Please use [Get Margin Data](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-margin-ratio.html). |
    | enable\_short\_sell | bool | Whether short-selling is available (Deprecated). <br><br>Please use [Get Margin Data](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-margin-ratio.html). |
    | short\_sell\_rate | float | Short-selling reference rate (Deprecated). <br><br>Please use [Get Margin Data](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-margin-ratio.html). |
    | short\_available\_volume | int | Remaining quantity that can be sold short (Deprecated). <br><br>Please use [Get Margin Data](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-margin-ratio.html). |
    | short\_margin\_initial\_ratio | float | The initial margin rate for short selling (Deprecated). <br><br>Please use [Get Margin Data](https://openapi.moomoo.com/moomoo-api-doc/en/trade/get-margin-ratio.html). |
    | sec\_status | [SecurityStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#4415) | Stock status. |
    | amplitude | float | Amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | avg\_price | float | Average price. |
    | bid\_ask\_ratio | float | The Committee. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | volume\_ratio | float | Volume ratio. |
    | highest52weeks\_price | float | Highest price in 52 weeks. |
    | lowest52weeks\_price | float | Lowest price in 52 weeks . |
    | highest\_history\_price | float | Highest historical price. |
    | lowest\_history\_price | float | Lowest historical price. |
    | pre\_price | float | Pre-market price. |
    | pre\_high\_price | float | Highest pre-market price. |
    | pre\_low\_price | float | Lowest pre-market price. |
    | pre\_volume | int | Pre-market volume. |
    | pre\_turnover | float | Pre-market turnover. |
    | pre\_change\_val | float | Pre-market change. |
    | pre\_change\_rate | float | Pre-market change rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | pre\_amplitude | float | Pre-market amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | after\_price | float | After-hours price. |
    | after\_high\_price | float | Highest price after-hours. |
    | after\_low\_price | float | Lowest price after-hours. |
    | after\_volume | int | After-hours trading volume. <br><br>The Sci-tech Innovation Board supports this data. |
    | after\_turnover | float | After-hours turnover. <br><br>The Sci-tech Innovation Board supports this data. |
    | after\_change\_val | float | After-hours change. |
    | after\_change\_rate | float | After-hours change rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | after\_amplitude | float | After-hours amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | overnight\_price | float | Overnight price. |
    | overnight\_high\_price | float | Overnight high. |
    | overnight\_low\_price | float | Overnight low. |
    | overnight\_volume | int | Overnight volume. |
    | overnight\_turnover | float | Overnight turnover. |
    | overnight\_change\_val | float | Overnight change. |
    | overnight\_change\_rate | float | Overnight change rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | overnight\_amplitude | float | Overnight amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | future\_valid | bool | Is futures or not. |
    | future\_last\_settle\_price | float | Yesterday's close. |
    | future\_position | float | Holding position. |
    | future\_position\_change | float | Change in position. |
    | future\_main\_contract | bool | Is future main contract or not. |
    | future\_last\_trade\_time | str | The last trading time. <br><br>Main, current month and next month futures do not have this field. |
    | trust\_valid | bool | Is fund or not. |
    | trust\_dividend\_yield | float | Dividend rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | trust\_aum | float | Asset scale. <br><br>Unit: yuan |
    | trust\_outstanding\_units | int | Total circulation. |
    | trust\_netAssetValue | float | Net asset value. |
    | trust\_premium | float | Premium. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | trust\_assetClass | [AssetClass](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#4696) | Asset class. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_market_snapshot(['HK.00700', 'US.AAPL'])
if ret == RET_OK:
    print(data)
    print(data['code'][0])    # Take the first stock code
    print(data['code'].values.tolist())   # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
   code  name              update_time  last_price  open_price  high_price  low_price  prev_close_price     volume      turnover  turnover_rate  suspension listing_date  lot_size  price_spread  stock_owner  ask_price  bid_price  ask_vol  bid_vol  enable_margin  mortgage_ratio  long_margin_initial_ratio  enable_short_sell  short_sell_rate  short_available_volume  short_margin_initial_ratio  amplitude  avg_price  bid_ask_ratio  volume_ratio  highest52weeks_price  lowest52weeks_price  highest_history_price  lowest_history_price  close_price_5min  after_volume  after_turnover sec_status  equity_valid  issued_shares  total_market_val     net_asset    net_profit  earning_per_share  outstanding_shares  circular_market_val  net_asset_per_share  ey_ratio  pe_ratio  pb_ratio  pe_ttm_ratio  dividend_ttm  dividend_ratio_ttm  dividend_lfy  dividend_lfy_ratio  wrt_valid  wrt_conversion_ratio wrt_type  wrt_strike_price  wrt_maturity_date  wrt_end_trade  wrt_recovery_price  wrt_street_vol  \
0  HK.00700  TENCENT      2025-04-07 16:09:07      435.40      441.80      462.40     431.00            497.80  123364114  5.499476e+10          1.341       False   2004-06-16       100          0.20          NaN      435.4     435.20   281300    17300            NaN             NaN                        NaN                NaN              NaN                     NaN                         NaN      6.308    445.792        -68.499         5.627             547.00000           294.400000             706.100065            -13.202011            431.60             0    0.000000e+00     NORMAL          True     9202391012      4.006721e+12  1.051300e+12  2.095753e+11             22.774          9202391012         4.006721e+12              114.242     0.199    19.118     3.811        19.118          3.48                0.80          3.48               0.799      False                   NaN      N/A               NaN                NaN            NaN                 NaN             NaN
1   US.AAPL    APPLE  2025-04-07 05:30:43.301      188.38      193.89      199.88     187.34            203.19  125910913  2.424473e+10          0.838       False   1980-12-12         1          0.01          NaN      180.8     180.48       29      400            NaN             NaN                        NaN                NaN              NaN                     NaN                         NaN      6.172    192.554         86.480         2.226             259.81389           163.300566             259.813890              0.053580            188.93       3151311    5.930968e+08     NORMAL          True    15022073000      2.829858e+12  6.675809e+10  9.133420e+10              6.080         15016677308         2.828842e+12                4.444     1.417    30.983    42.389        29.901          0.99                0.53          0.98               0.520      False                   NaN      N/A               NaN                NaN            NaN                 NaN             NaN

   wrt_issue_vol  wrt_street_ratio  wrt_delta  wrt_implied_volatility  wrt_premium  wrt_leverage  wrt_ipop  wrt_break_even_point  wrt_conversion_price  wrt_price_recovery_ratio  wrt_score  wrt_upper_strike_price  wrt_lower_strike_price wrt_inline_price_status  wrt_issuer_code  option_valid option_type  strike_time  option_strike_price  option_contract_size  option_open_interest  option_implied_volatility  option_premium  option_delta  option_gamma  option_vega  option_theta  option_rho  option_net_open_interest  option_expiry_date_distance  option_contract_nominal_value  option_owner_lot_multiplier option_area_type  option_contract_multiplier index_option_type  index_valid  index_raise_count  index_fall_count  index_equal_count  plate_valid  plate_raise_count  plate_fall_count  plate_equal_count  future_valid  future_last_settle_price  future_position  future_position_change  future_main_contract  future_last_trade_time  trust_valid  trust_dividend_yield  trust_aum  \
0            NaN               NaN        NaN                     NaN          NaN           NaN       NaN                   NaN                   NaN                       NaN        NaN                     NaN                     NaN                     N/A              NaN         False         N/A          NaN                  NaN                   NaN                   NaN                        NaN             NaN           NaN           NaN          NaN           NaN         NaN                       NaN                          NaN                            NaN                          NaN              N/A                         NaN               N/A        False                NaN               NaN                NaN        False                NaN               NaN                NaN         False                       NaN              NaN                     NaN                   NaN                     NaN        False                   NaN        NaN
1            NaN               NaN        NaN                     NaN          NaN           NaN       NaN                   NaN                   NaN                       NaN        NaN                     NaN                     NaN                     N/A              NaN         False         N/A          NaN                  NaN                   NaN                   NaN                        NaN             NaN           NaN           NaN          NaN           NaN         NaN                       NaN                          NaN                            NaN                          NaN              N/A                         NaN               N/A        False                NaN               NaN                NaN        False                NaN               NaN                NaN         False                       NaN              NaN                     NaN                   NaN                     NaN        False                   NaN        NaN

   trust_outstanding_units  trust_netAssetValue  trust_premium trust_assetClass pre_price pre_high_price pre_low_price pre_volume pre_turnover pre_change_val pre_change_rate pre_amplitude after_price after_high_price after_low_price after_change_val after_change_rate after_amplitude overnight_price overnight_high_price overnight_low_price overnight_volume overnight_turnover overnight_change_val overnight_change_rate overnight_amplitude
0                      NaN                  NaN            NaN              N/A       N/A            N/A           N/A        N/A          N/A            N/A             N/A           N/A         N/A              N/A             N/A              N/A               N/A             N/A             N/A                  N/A                 N/A              N/A                N/A                  N/A                   N/A                 N/A
1                      NaN                  NaN            NaN              N/A    180.68         181.98        177.47     276016  49809244.83           -7.7          -4.087         2.394       186.6          188.639          186.44            -1.78            -0.944          1.1673          176.94                186.5               174.4           533115        94944250.56               -11.44                -6.072              6.4231
HK.00700
['HK.00700', 'US.AAPL']

```


## Qot\_GetSecuritySnapshot.proto


- **Description**

Get snapshot data

- **Parameters**

> - For stock structure， refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure， refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetSecuritySnapshot(QotGetSecuritySnapshot.Request req);`

`virtual void OnReply_GetSecuritySnapshot(MMAPI_Conn client, uint nSerialNo, QotGetSecuritySnapshot.Response rsp);`

- **Description**

Get market snapshot

- **Parameters**

> - For stock structure， refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure， refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getSecuritySnapshot(QotGetSecuritySnapshot.Request req);`

`void onReply_GetSecuritySnapshot(MMAPI_Conn client, int nSerialNo, QotGetSecuritySnapshot.Response rsp);`

- **Description**

Get market snapshot

- **Parameters**

> - For stock structure， refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure， refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetSecuritySnapshot(const Qot_GetSecuritySnapshot::Request &stReq);`

`virtual void OnReply_GetSecuritySnapshot(moomoo::u32_t nSerialNo, const Qot_GetSecuritySnapshot::Response &stRsp) = 0;`

- **Description**

Get market snapshot

- **Parameters**

> - For stock structure， refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure， refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetSecuritySnapshot(req);`

- **Description**

Get market snapshot

- **Parameters**

> - For stock structure， refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure， refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- Request up to 60 snapshots every 30 seconds
- For each request, the maximum number of stock codes supported by the parameter _code\_list_ is 400.

←
[Real-time Broker Queue Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-broker.html)[Get Real-time Quote](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-stock-quote.html)
→

## Get Market Status of Securities

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-state.html


`get_market_state(code_list)`

- **Description**

Get market status of underlying security

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code\_list | list | A list of security codes that need to query for market status. <br><br>Data type of elements in the list is str. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, market status data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Market status data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Security code. |
    | stock\_name | str | Security name. |
    | market\_state | [MarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663) | Market state. |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_market_state(['SZ.000001', 'HK.00700'])
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
    code         stock_name   market_state
0  SZ.000001    Ping An Bank  AFTERNOON
1  HK.00700     Tencent       AFTERNOON

```


## Qot\_GetMarketState.proto


- **Description**

Get the market status of the specified target

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumeration of market status, refer to [QotMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetMarketState(QotGetMarketState.Request req);`

`virtual void OnReply_GetMarketState(FTAPI_Conn client, uint nSerialNo, QotGetMarketState.Response rsp);`

- **Description**

Get market status of underlying security

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumeration of market status, refer to [QotMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getMarketState(QotGetMarketState.Request req);`

`void onReply_GetMarketState(FTAPI_Conn client, int nSerialNo, QotGetMarketState.Response rsp);`

- **Description**

Get market status of underlying security

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumeration of market status, refer to [QotMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetMarketState(const Qot_GetMarketState::Request &stReq);`

`virtual void OnReply_GetMarketState(Futu::u32_t nSerialNo, const Qot_GetMarketState::Response &stRsp) = 0;`

- **Description**

Get market status of underlying security

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumeration of market status, refer to [QotMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetMarketState(req);`

- **Description**

Get market status of underlying security

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumeration of market status, refer to [QotMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds
- The maximum number of stock codes for each request is 400.

`get_market_state(code_list)`

- **Description**

Get market status of underlying security

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code\_list | list | A list of security codes that need to query for market status. <br><br>Data type of elements in the list is str. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, market status data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Market status data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Security code. |
    | stock\_name | str | Security name. |
    | market\_state | [MarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663) | Market state. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_market_state(['SZ.000001', 'HK.00700'])
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
    code         stock_name   market_state
0  SZ.000001    Ping An Bank  AFTERNOON
1  HK.00700     Tencent       AFTERNOON

```


## Qot\_GetMarketState.proto


- **Description**

Get the market status of the specified target

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumeration of market status, refer to [QotMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetMarketState(QotGetMarketState.Request req);`

`virtual void OnReply_GetMarketState(FTAPI_Conn client, uint nSerialNo, QotGetMarketState.Response rsp);`

- **Description**

Get market status of underlying security

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumeration of market status, refer to [QotMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getMarketState(QotGetMarketState.Request req);`

`void onReply_GetMarketState(MMAPI_Conn client, int nSerialNo, QotGetMarketState.Response rsp);`

- **Description**

Get market status of underlying security

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumeration of market status, refer to [QotMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetMarketState(const Qot_GetMarketState::Request &stReq);`

`virtual void OnReply_GetMarketState(moomoo::u32_t nSerialNo, const Qot_GetMarketState::Response &stRsp) = 0;`

- **Description**

Get market status of underlying security

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumeration of market status, refer to [QotMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetMarketState(req);`

- **Description**

Get market status of underlying security

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumeration of market status, refer to [QotMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8663)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds
- The maximum number of stock codes for each request is 400.

←
[Get Real-time Broker Queue](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-broker.html)[Get Capital Flow](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-capital-flow.html)
→

## Get Option Chain

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-chain.html


`get_option_chain(code, index_option_type=IndexOptionType.NORMAL, start=None, end=None, option_type=OptionType.ALL, option_cond_type=OptionCondType.ALL, data_filter=None)`

- **Description**

Query the option chain from an underlying stock. This interface only returns the static information of the option chain. If you need to obtain dynamic information such as quotation or trading, please use the security code returned by this interface to [subscribe](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html) the required security.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Code of underlying stock. |
| index\_option\_type | [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866) | Index option type. <br><br>Only valid for HK index options. Ignore this parameter for stocks, ETFs, and US index options. |
| start | str | Start date, for expiration date. <br><br>For example: "2017-08-01". |
| end | str | End date (including this day), for expiration date. <br><br>For example: "2017-08-30". |
| option\_type | [OptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9598) | Option type for call/put. <br><br>Default all. |
| option\_cond\_type | [OptionCondType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9027) | Option type for in/out of the money. <br><br>Default all. |
| data\_filter | _OptionDataFilter_ | Data filter condition. <br><br>No filter by default. |

  - The combination of _**start**_ and _**end**_ is as follows:

    | Start type | End type | Description |
    | --- | --- | --- |
    | str | str | _**start**_ and _**end**_ are the specified dates respectively. |
    | None | str | _**start**_ is 30 days before _**end**_. |
    | str | None | _**end**_ is 30 days after _**start**_. |
    | None | None | _**start**_ is the current date, _**end**_ is 30 days later. |

  - _OptionDataFilter_ fields are as follows

    | Field | Type | Description |
    | --- | --- | --- |
    | implied\_volatility\_min | float | Min value of implied volatility. <br><br>0 decimal place accuracy, the excess part is discarded. |
    | implied\_volatility\_max | float | Max value of implied volatility. <br><br>0 decimal place accuracy, the excess part is discarded. |
    | delta\_min | float | Min value of Greek value Delta. <br><br>3 decimal place accuracy, the excess part is discarded. |
    | delta\_max | float | Max value of Greek value Delta. <br><br>3 decimal place accuracy, the excess part is discarded. |
    | gamma\_min | float | Min value of Greek value Gamma. <br><br>3 decimal place accuracy, the excess part is discarded. |
    | gamma\_max | float | Max value of Greek value Gamma. <br><br>3 decimal place accuracy, the excess part is discarded. |
    | vega\_min | float | Min value of Greek value Vega. <br><br>3 decimal place accuracy, the excess part is discarded. |
    | vega\_max | float | Max value of Greek value Vega. <br><br>3 decimal place accuracy, the excess part is discarded. |
    | theta\_min | float | Min value of Greek value Theta. <br><br>3 decimal place accuracy, the excess part is discarded. |
    | theta\_max | float | Max value of Greek value Theta. <br><br>3 decimal place accuracy, the excess part is discarded. |
    | rho\_min | float | Min value of Greek value Rho. <br><br>3 decimal place accuracy, the excess part is discarded. |
    | rho\_max | float | Max value of Greek value Rho. <br><br>3 decimal place accuracy, the excess part is discarded. |
    | net\_open\_interest\_min | float | Min value of net open contract number. <br><br>0 decimal place accuracy, the excess part is discarded. |
    | net\_open\_interest\_max | float | Max value of net open contract number. <br><br>0 decimal place accuracy, the excess part is discarded. |
    | open\_interest\_min | float | Min value of open contract number. <br><br>0 decimal place accuracy, the excess part is discarded. |
    | open\_interest\_max | float | Max value of open contract number. <br><br>0 decimal place accuracy, the excess part is discarded. |
    | vol\_min | float | Min value of Volume. <br><br>0 decimal place accuracy, the excess part is discarded. |
    | vol\_max | float | Max value of Volume. <br><br>0 decimal place accuracy, the excess part is discarded. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, option chain data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Option chain data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Security code. |
    | name | str | Security name. |
    | lot\_size | int | Number of shares per lot, number of shares per contract for options. <br><br>Index options do not have this field. |
    | stock\_type | [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767) | Stock type. |
    | option\_type | [OptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9598) | Option type. |
    | stock\_owner | str | Underlying stock. |
    | strike\_time | str | Exercise date. <br><br>Format: yyyy-MM-dd<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | strike\_price | float | Strike price. |
    | suspension | bool | Whether is suspended. <br><br>True: suspended.<br>False: not suspended |
    | stock\_id | int | Stock ID. |
    | index\_option\_type | [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866) | Index option type. |
    | expiration\_cycle | [ExpirationCycle](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5181) | Expiration cycle type. |
    | option\_standard\_type | [OptionStandardType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8553) | Option standard type. |
    | option\_settlement\_mode | [OptionSettlementMode](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6656) | Option settlement mode. |
- **Example**

```python
from futu import *
import time
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
ret1, data1 = quote_ctx.get_option_expiration_date(code='HK.00700')

filter1 = OptionDataFilter()
filter1.delta_min = 0
filter1.delta_max = 0.1

if ret1 == RET_OK:
    expiration_date_list = data1['strike_time'].values.tolist()
    for date in expiration_date_list:
        ret2, data2 = quote_ctx.get_option_chain(code='HK.00700', start=date, end=date, data_filter=filter1)
        if ret2 == RET_OK:
            print(data2)
            print(data2['code'][0])  # Take the first stock code
            print(data2['code'].values.tolist())  # Convert to list
        else:
            print('error:', data2)
        time.sleep(3)
else:
    print('error:', data1)
quote_ctx.close()  # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
                     code                 name  lot_size stock_type option_type stock_owner strike_time  strike_price  suspension  stock_id index_option_type expiration_cycle option_standard_type option_settlement_mode
0     HK.TCH210429C350000   腾讯 210429 350.00 购       100       DRVT        CALL    HK.00700  2021-04-29         350.0       False  80235167               N/A        WEEK        STANDARD			N/A
1     HK.TCH210429P350000   腾讯 210429 350.00 沽       100       DRVT         PUT    HK.00700  2021-04-29         350.0       False  80235247               N/A        WEEK        STANDARD			N/A
2     HK.TCH210429C360000   腾讯 210429 360.00 购       100       DRVT        CALL    HK.00700  2021-04-29         360.0       False  80235163               N/A        WEEK        STANDARD			N/A
3     HK.TCH210429P360000   腾讯 210429 360.00 沽       100       DRVT         PUT    HK.00700  2021-04-29         360.0       False  80235246               N/A        WEEK        STANDARD			N/A
4     HK.TCH210429C370000   腾讯 210429 370.00 购       100       DRVT        CALL    HK.00700  2021-04-29         370.0       False  80235165               N/A        WEEK        STANDARD			N/A
5     HK.TCH210429P370000   腾讯 210429 370.00 沽       100       DRVT         PUT    HK.00700  2021-04-29         370.0       False  80235248               N/A        WEEK        STANDARD			N/A
HK.TCH210429C350000
['HK.TCH210429C350000', 'HK.TCH210429P350000', 'HK.TCH210429C360000', 'HK.TCH210429P360000', 'HK.TCH210429C370000', 'HK.TCH210429P370000']
...
                   code                name  lot_size stock_type option_type stock_owner strike_time  strike_price  suspension  stock_id index_option_type expiration_cycle option_standard_type option_settlement_mode
0   HK.TCH220330C490000  腾讯 220330 490.00 购       100       DRVT        CALL    HK.00700  2022-03-30         490.0       False  80235143               N/A        WEEK        STANDARD			N/A
1   HK.TCH220330P490000  腾讯 220330 490.00 沽       100       DRVT         PUT    HK.00700  2022-03-30         490.0       False  80235193               N/A        WEEK        STANDARD			N/A
2   HK.TCH220330C500000  腾讯 220330 500.00 购       100       DRVT        CALL    HK.00700  2022-03-30         500.0       False  80233887               N/A        WEEK        STANDARD			N/A
3   HK.TCH220330P500000  腾讯 220330 500.00 沽       100       DRVT         PUT    HK.00700  2022-03-30         500.0       False  80233912               N/A        WEEK        STANDARD			N/A
4   HK.TCH220330C510000  腾讯 220330 510.00 购       100       DRVT        CALL    HK.00700  2022-03-30         510.0       False  80233747               N/A        WEEK        STANDARD 			N/A
5   HK.TCH220330P510000  腾讯 220330 510.00 沽       100       DRVT         PUT    HK.00700  2022-03-30         510.0       False  80233766               N/A        WEEK        STANDARD 			N/A
HK.TCH220330C490000
['HK.TCH220330C490000', 'HK.TCH220330P490000', 'HK.TCH220330C500000', 'HK.TCH220330P500000', 'HK.TCH220330C510000', 'HK.TCH220330P510000']

```


## Qot\_GetOptionChain.proto


- **Description**

Query the option chain from an underlying stock. This interface only returns the static information of the option chain. If you need to obtain dynamic information such as quotation or trading, please use the security code returned by this interface to [subscribe](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html) the required security.

- **Protocol ID**

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumeration of option types, refer to [OptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9598)
> - For the enumeration of index option types, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetOptionChain(QotGetOptionChain.Request req);`

`virtual void OnReply_GetOptionChain(FTAPI_Conn client, uint nSerialNo, QotGetOptionChain.Response rsp);`

- **Description**

Query the option chain from an underlying stock. This interface only returns the static information of the option chain. If you need to obtain dynamic information such as quotation or trading, please use the security code returned by this interface to [subscribe](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html) the required security.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumeration of option types, refer to [OptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9598)
> - For the enumeration of index option types, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getOptionChain(QotGetOptionChain.Request req);`

`void onReply_GetOptionChain(FTAPI_Conn client, int nSerialNo, QotGetOptionChain.Response rsp);`

- **Description**

Query the option chain from an underlying stock. This interface only returns the static information of the option chain. If you need to obtain dynamic information such as quotation or trading, please use the security code returned by this interface to [subscribe](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html) the required security.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumeration of option types, refer to [OptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9598)
> - For the enumeration of index option types, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetOptionChain(const Qot_GetOptionChain::Request &stReq);`

`virtual void OnReply_GetOptionChain(Futu::u32_t nSerialNo, const Qot_GetOptionChain::Response &stRsp) = 0;`

- **Description**

Query the option chain from an underlying stock. This interface only returns the static information of the option chain. If you need to obtain dynamic information such as quotation or trading, please use the security code returned by this interface to [subscribe](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html) the required security.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumeration of option types, refer to [OptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9598)
> - For the enumeration of index option types, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetOptionChain(req);`

- **Description**

Query the option chain from an underlying stock. This interface only returns the static information of the option chain. If you need to obtain dynamic information such as quotation or trading, please use the security code returned by this interface to [subscribe](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html) the required security.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumeration of option types, refer to [OptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9598)
> - For the enumeration of index option types, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds
- The upper limit of the incoming time span is 30 days

Tips

- This interface does not support the query of expired option chains, please enter today or future date to the **End date** parameter.
- Open interest (OI) is updated daily and the specific timing depends on the exchange.
  - For U.S. stock options, the data is updated during the PRE\_MARKET session.
  - For Hong Kong stock options, the data is updated after the Regular Trading Hours.

`get_option_chain(code, index_option_type=IndexOptionType.NORMAL, start=None, end=None, option_type=OptionType.ALL, option_cond_type=OptionCondType.ALL, data_filter=None)`

- **Description**

Query the option chain from an underlying stock. This interface only returns the static information of the option chain. If you need to obtain dynamic information such as quotation or trading, please use the security code returned by this interface to [subscribe](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html) the required security.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Code of underlying stock. |
| index\_option\_type | [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866) | Index option type. <br><br>Only valid for HK index options. Ignore this parameter for stocks, ETFs, and US index options. |
| start | str | Start date, for expiration date. <br><br>For example: "2017-08-01". |
| end | str | End date (including this day), for expiration date. <br><br>For example: "2017-08-30". |
| option\_type | [OptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9598) | Option type for call/put. <br><br>Default all. |
| option\_cond\_type | [OptionCondType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9027) | Option type for in/out of the money. <br><br>Default all. |
| data\_filter | _OptionDataFilter_ | Data filter condition. <br><br>No filter by default. |

  - The combination of _**start**_ and _**end**_ is as follows:

    | Start type | End type | Description |
    | --- | --- | --- |
    | str | str | _**start**_ and _**end**_ are the specified dates respectively. |
    | None | str | _**start**_ is 30 days before _**end**_. |
    | str | None | _**end**_ is 30 days after _**start**_. |
    | None | None | _**start**_ is the current date, _**end**_ is 30 days later. |

  - _OptionDataFilter_ fields are as follows

    | Field | Type | Description |
    | --- | --- | --- |
    | implied\_volatility\_min | float | Min value of implied volatility. <br><br>0 decimal place accuracy, the excess part is discarded. |
    | implied\_volatility\_max | float | Max value of implied volatility. <br><br>0 decimal place accuracy, the excess part is discarded. |
    | delta\_min | float | Min value of Greek value Delta. <br><br>3 decimal place accuracy, the excess part is discarded. |
    | delta\_max | float | Max value of Greek value Delta. <br><br>3 decimal place accuracy, the excess part is discarded. |
    | gamma\_min | float | Min value of Greek value Gamma. <br><br>3 decimal place accuracy, the excess part is discarded. |
    | gamma\_max | float | Max value of Greek value Gamma. <br><br>3 decimal place accuracy, the excess part is discarded. |
    | vega\_min | float | Min value of Greek value Vega. <br><br>3 decimal place accuracy, the excess part is discarded. |
    | vega\_max | float | Max value of Greek value Vega. <br><br>3 decimal place accuracy, the excess part is discarded. |
    | theta\_min | float | Min value of Greek value Theta. <br><br>3 decimal place accuracy, the excess part is discarded. |
    | theta\_max | float | Max value of Greek value Theta. <br><br>3 decimal place accuracy, the excess part is discarded. |
    | rho\_min | float | Min value of Greek value Rho. <br><br>3 decimal place accuracy, the excess part is discarded. |
    | rho\_max | float | Max value of Greek value Rho. <br><br>3 decimal place accuracy, the excess part is discarded. |
    | net\_open\_interest\_min | float | Min value of net open contract number. <br><br>0 decimal place accuracy, the excess part is discarded. |
    | net\_open\_interest\_max | float | Max value of net open contract number. <br><br>0 decimal place accuracy, the excess part is discarded. |
    | open\_interest\_min | float | Min value of open contract number. <br><br>0 decimal place accuracy, the excess part is discarded. |
    | open\_interest\_max | float | Max value of open contract number. <br><br>0 decimal place accuracy, the excess part is discarded. |
    | vol\_min | float | Min value of Volume. <br><br>0 decimal place accuracy, the excess part is discarded. |
    | vol\_max | float | Max value of Volume. <br><br>0 decimal place accuracy, the excess part is discarded. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, option chain data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Option chain data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Security code. |
    | name | str | Security name. |
    | lot\_size | int | Number of shares per lot, number of shares per contract for options. <br><br>Index options do not have this field. |
    | stock\_type | [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767) | Stock type. |
    | option\_type | [OptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9598) | Option type. |
    | stock\_owner | str | Underlying stock. |
    | strike\_time | str | Exercise date. <br><br>Format: yyyy-MM-dd<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | strike\_price | float | Strike price. |
    | suspension | bool | Whether is suspended. <br><br>True: suspended.<br>False: not suspended |
    | stock\_id | int | Stock ID. |
    | index\_option\_type | [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866) | Index option type. |
    | expiration\_cycle | [ExpirationCycle](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5181) | Expiration cycle type. |
    | option\_standard\_type | [OptionStandardType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8553) | Option standard type. |
    | option\_settlement\_mode | [OptionSettlementMode](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6656) | Option settlement mode. |
- **Example**

```python
from moomoo import *
import time
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
ret1, data1 = quote_ctx.get_option_expiration_date(code='HK.00700')

filter1 = OptionDataFilter()
filter1.delta_min = 0
filter1.delta_max = 0.1

if ret1 == RET_OK:
    expiration_date_list = data1['strike_time'].values.tolist()
    for date in expiration_date_list:
        ret2, data2 = quote_ctx.get_option_chain(code='HK.00700', start=date, end=date, data_filter=filter1)
        if ret2 == RET_OK:
            print(data2)
            print(data2['code'][0])  # Take the first stock code
            print(data2['code'].values.tolist())  # Convert to list
        else:
            print('error:', data2)
        time.sleep(3)
else:
    print('error:', data1)
quote_ctx.close()  # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
                     code                 name  lot_size stock_type option_type stock_owner strike_time  strike_price  suspension  stock_id index_option_type expiration_cycle option_standard_type
0     HK.TCH210429C350000   腾讯 210429 350.00 购       100       DRVT        CALL    HK.00700  2021-04-29         350.0       False  80235167               N/A        WEEK        STANDARD
1     HK.TCH210429P350000   腾讯 210429 350.00 沽       100       DRVT         PUT    HK.00700  2021-04-29         350.0       False  80235247               N/A        WEEK        STANDARD
2     HK.TCH210429C360000   腾讯 210429 360.00 购       100       DRVT        CALL    HK.00700  2021-04-29         360.0       False  80235163               N/A        WEEK        STANDARD
3     HK.TCH210429P360000   腾讯 210429 360.00 沽       100       DRVT         PUT    HK.00700  2021-04-29         360.0       False  80235246               N/A        WEEK        STANDARD
4     HK.TCH210429C370000   腾讯 210429 370.00 购       100       DRVT        CALL    HK.00700  2021-04-29         370.0       False  80235165               N/A        WEEK        STANDARD
5     HK.TCH210429P370000   腾讯 210429 370.00 沽       100       DRVT         PUT    HK.00700  2021-04-29         370.0       False  80235248               N/A        WEEK        STANDARD
HK.TCH210429C350000
['HK.TCH210429C350000', 'HK.TCH210429P350000', 'HK.TCH210429C360000', 'HK.TCH210429P360000', 'HK.TCH210429C370000', 'HK.TCH210429P370000']
...
                   code                name  lot_size stock_type option_type stock_owner strike_time  strike_price  suspension  stock_id index_option_type expiration_cycle option_standard_type
0   HK.TCH220330C490000  腾讯 220330 490.00 购       100       DRVT        CALL    HK.00700  2022-03-30         490.0       False  80235143               N/A        WEEK        STANDARD
1   HK.TCH220330P490000  腾讯 220330 490.00 沽       100       DRVT         PUT    HK.00700  2022-03-30         490.0       False  80235193               N/A        WEEK        STANDARD
2   HK.TCH220330C500000  腾讯 220330 500.00 购       100       DRVT        CALL    HK.00700  2022-03-30         500.0       False  80233887               N/A        WEEK        STANDARD
3   HK.TCH220330P500000  腾讯 220330 500.00 沽       100       DRVT         PUT    HK.00700  2022-03-30         500.0       False  80233912               N/A        WEEK        STANDARD
4   HK.TCH220330C510000  腾讯 220330 510.00 购       100       DRVT        CALL    HK.00700  2022-03-30         510.0       False  80233747               N/A        WEEK        STANDARD
5   HK.TCH220330P510000  腾讯 220330 510.00 沽       100       DRVT         PUT    HK.00700  2022-03-30         510.0       False  80233766               N/A        WEEK        STANDARD
HK.TCH220330C490000
['HK.TCH220330C490000', 'HK.TCH220330P490000', 'HK.TCH220330C500000', 'HK.TCH220330P500000', 'HK.TCH220330C510000', 'HK.TCH220330P510000']

```


## Qot\_GetOptionChain.proto


- **Description**

Query the option chain from an underlying stock. This interface only returns the static information of the option chain. If you need to obtain dynamic information such as quotation or trading, please use the security code returned by this interface to [subscribe](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html) the required security.

- **Protocol ID**

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumeration of option types, refer to [OptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9598)
> - For the enumeration of index option types, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetOptionChain(QotGetOptionChain.Request req);`

`virtual void OnReply_GetOptionChain(MMAPI_Conn client, uint nSerialNo, QotGetOptionChain.Response rsp);`

- **Description**

Query the option chain from an underlying stock. This interface only returns the static information of the option chain. If you need to obtain dynamic information such as quotation or trading, please use the security code returned by this interface to [subscribe](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html) the required security.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumeration of option types, refer to [OptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9598)
> - For the enumeration of index option types, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getOptionChain(QotGetOptionChain.Request req);`

`void onReply_GetOptionChain(MMAPI_Conn client, int nSerialNo, QotGetOptionChain.Response rsp);`

- **Description**

Query the option chain from an underlying stock. This interface only returns the static information of the option chain. If you need to obtain dynamic information such as quotation or trading, please use the security code returned by this interface to [subscribe](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html) the required security.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumeration of option types, refer to [OptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9598)
> - For the enumeration of index option types, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetOptionChain(const Qot_GetOptionChain::Request &stReq);`

`virtual void OnReply_GetOptionChain(moomoo::u32_t nSerialNo, const Qot_GetOptionChain::Response &stRsp) = 0;`

- **Description**

Query the option chain from an underlying stock. This interface only returns the static information of the option chain. If you need to obtain dynamic information such as quotation or trading, please use the security code returned by this interface to [subscribe](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html) the required security.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumeration of option types, refer to [OptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9598)
> - For the enumeration of index option types, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetOptionChain(req);`

- **Description**

Query the option chain from an underlying stock. This interface only returns the static information of the option chain. If you need to obtain dynamic information such as quotation or trading, please use the security code returned by this interface to [subscribe](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html) the required security.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumeration of option types, refer to [OptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9598)
> - For the enumeration of index option types, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds
- The upper limit of the incoming time span is 30 days

Tips

- This interface does not support the query of expired option chains, please enter today or future date to the **End date** parameter.
- Open interest (OI) is updated daily and the specific timing depends on the exchange.
  - For U.S. stock options, the data is updated during the PRE\_MARKET session.
  - For Hong Kong stock options, the data is updated after the Regular Trading Hours.

←
[Get Option Expiration Date](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-expiration-date.html)[Get Filtered Warrant](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-warrant.html)
→

## Get Option Expiration Date

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-expiration-date.html


`get_option_expiration_date(code, index_option_type=IndexOptionType.NORMAL)`

- **Description**

Query all expiration dates of option chains through the underlying stock. To obtain the complete option chain, please use it in combination with [Get Option Chain](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-chain.html).

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Stock code. |
| index\_option\_type | [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866) | Index option type. <br><br>Only valid for HK index options. Ignore this parameter for stocks, ETFs, and US index options. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, option expiration date data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Option expiration date data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | strike\_time | str | Exercise date. <br><br>Format: yyyy-MM-dd<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | option\_expiry\_date\_distance | int | The number of days from the expiry date. <br><br>A negative number means it has expired. |
    | expiration\_cycle | [ExpirationCycle](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5181) | Expiration cycle. <br><br>For HK index options only |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
ret, data = quote_ctx.get_option_expiration_date(code='HK.00700')
if ret == RET_OK:
    print(data)
    print(data['strike_time'].values.tolist())  # Convert to list
else:
    print('error:', data)
quote_ctx.close()  # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
  strike_time  option_expiry_date_distance expiration_cycle
0  2021-04-29                            4              N/A
1  2021-05-28                           33              N/A
2  2021-06-29                           65              N/A
3  2021-07-29                           95              N/A
4  2021-09-29                          157              N/A
5  2021-12-30                          249              N/A
6  2022-03-30                          339              N/A
['2021-04-29', '2021-05-28', '2021-06-29', '2021-07-29', '2021-09-29', '2021-12-30', '2022-03-30']

```


## Qot\_GetOptionExpirationDate.proto


- **Description**

Query all expiration dates of option chains through the underlying stock. To obtain the complete option chain, please use it in combination with [Get Option Chain](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-chain.html).

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792).
> - For the enumeration of index option types, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)

- **Return**

> - For option expiration cycle, refer to [ExpirationCycle](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5181)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

- **Data Type**

  - For security, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
  - For index option type, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)
  - For option expiration cycle, refer to [ExpirationCycle](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5181)

`uint GetOptionExpirationDate(GetOptionExpirationDate.Request req);`

`virtual void OnReply_GetOptionExpirationDate(FTAPI_Conn client, uint nSerialNo, GetOptionExpirationDate.Response rsp);`

- **Description**

Query all expiration dates of option chains through the underlying stock. To obtain the complete option chain, please use it in combination with [Get Option Chain](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-chain.html).

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792).
> - For the enumeration of index option types, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)

- **Return**

> - For option expiration cycle, refer to [ExpirationCycle](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5181)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

**Output**

`int getOptionExpirationDate(QotGetOptionExpirationDate.Request req);`

`void onReply_GetOptionExpirationDate(FTAPI_Conn client, int nSerialNo, QotGetOptionExpirationDate.Response rsp);`

- **Description**

Query all expiration dates of option chains through the underlying stock. To obtain the complete option chain, please use it in combination with [Get Option Chain](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-chain.html).

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792).
> - For the enumeration of index option types, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)

- **Return**

> - For option expiration cycle, refer to [ExpirationCycle](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5181)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetOptionExpirationDate(const Qot_GetOptionExpirationDate::Request &stReq);`

`virtual void OnReply_GetOptionExpirationDate(Futu::u32_t nSerialNo, const Qot_GetOptionExpirationDate::Response &stRsp) = 0;`

- **Description**

Query all expiration dates of option chains through the underlying stock. To obtain the complete option chain, please use it in combination with [Get Option Chain](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-chain.html).

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792).
> - For the enumeration of index option types, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)

- **Return**

> - For option expiration cycle, refer to [ExpirationCycle](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5181)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetOptionExpirationDate(req);`

- **Description**

Query all expiration dates of option chains through the underlying stock. To obtain the complete option chain, please use it in combination with [Get Option Chain](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-chain.html).

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792).
> - For the enumeration of index option types, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)

- **Return**

> - For option expiration cycle, refer to [ExpirationCycle](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5181)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 60 requests per 30 seconds

`get_option_expiration_date(code, index_option_type=IndexOptionType.NORMAL)`

- **Description**

Query all expiration dates of option chains through the underlying stock. To obtain the complete option chain, please use it in combination with [Get Option Chain](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-chain.html).

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Stock code. |
| index\_option\_type | [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866) | Index option type. <br><br>Only valid for HK index options. Ignore this parameter for stocks, ETFs, and US index options. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, option expiration date data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Option expiration date data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | strike\_time | str | Exercise date. <br><br>Format: yyyy-MM-dd<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | option\_expiry\_date\_distance | int | The number of days from the expiry date. <br><br>A negative number means it has expired. |
    | expiration\_cycle | [ExpirationCycle](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5181) | Expiration cycle. <br><br>For HK index options only |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
ret, data = quote_ctx.get_option_expiration_date(code='HK.00700')
if ret == RET_OK:
    print(data)
    print(data['strike_time'].values.tolist())  # Convert to list
else:
    print('error:', data)
quote_ctx.close()  # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
  strike_time  option_expiry_date_distance expiration_cycle
0  2021-04-29                            4              N/A
1  2021-05-28                           33              N/A
2  2021-06-29                           65              N/A
3  2021-07-29                           95              N/A
4  2021-09-29                          157              N/A
5  2021-12-30                          249              N/A
6  2022-03-30                          339              N/A
['2021-04-29', '2021-05-28', '2021-06-29', '2021-07-29', '2021-09-29', '2021-12-30', '2022-03-30']

```


## Qot\_GetOptionExpirationDate.proto


- **Description**

Query all expiration dates of option chains through the underlying stock. To obtain the complete option chain, please use it in combination with [Get Option Chain](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-chain.html).

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792).
> - For the enumeration of index option types, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)

- **Return**

> - For option expiration cycle, refer to [ExpirationCycle](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5181)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

- **Data Type**

  - For security, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
  - For index option type, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)
  - For option expiration cycle, refer to [ExpirationCycle](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5181)

`uint GetOptionExpirationDate(GetOptionExpirationDate.Request req);`

`virtual void OnReply_GetOptionExpirationDate(MMAPI_Conn client, uint nSerialNo, GetOptionExpirationDate.Response rsp);`

- **Description**

Query all expiration dates of option chains through the underlying stock. To obtain the complete option chain, please use it in combination with [Get Option Chain](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-chain.html).

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792).
> - For the enumeration of index option types, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)

- **Return**

> - For option expiration cycle, refer to [ExpirationCycle](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5181)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

**Output**

`int getOptionExpirationDate(QotGetOptionExpirationDate.Request req);`

`void onReply_GetOptionExpirationDate(MMAPI_Conn client, int nSerialNo, QotGetOptionExpirationDate.Response rsp);`

- **Description**

Query all expiration dates of option chains through the underlying stock. To obtain the complete option chain, please use it in combination with [Get Option Chain](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-chain.html).

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792).
> - For the enumeration of index option types, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)

- **Return**

> - For option expiration cycle, refer to [ExpirationCycle](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5181)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetOptionExpirationDate(const Qot_GetOptionExpirationDate::Request &stReq);`

`virtual void OnReply_GetOptionExpirationDate(moomoo::u32_t nSerialNo, const Qot_GetOptionExpirationDate::Response &stRsp) = 0;`

- **Description**

Query all expiration dates of option chains through the underlying stock. To obtain the complete option chain, please use it in combination with [Get Option Chain](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-chain.html).

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792).
> - For the enumeration of index option types, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)

- **Return**

> - For option expiration cycle, refer to [ExpirationCycle](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5181)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetOptionExpirationDate(req);`

- **Description**

Query all expiration dates of option chains through the underlying stock. To obtain the complete option chain, please use it in combination with [Get Option Chain](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-chain.html).

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792).
> - For the enumeration of index option types, refer to [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866)

- **Return**

> - For option expiration cycle, refer to [ExpirationCycle](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5181)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 60 requests per 30 seconds

←
[Get Adjustment Factor](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-rehab.html)[Get Option Chain](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-chain.html)
→

## Get Real-time Order Book

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-order-book.html


`get_order_book(code, num=10)`

- **Description**

To get the real-time order book of subscribed stocks, you must subscribe first.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Stock code. |
| name | str | Stock name. |
| num | int | The requested number of price levels. <br><br>For the upper limit of the number of price levels, please refer to [Details of price levels](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#2126). |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | dict | If ret == RET\_OK, plate data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Order Book format as follows：

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | svr\_recv\_time\_bid | str | The time when Futu server receives order book of bid from the exchange. <br><br>Sometimes the time is zero, e.g. server reboot or first push of cached data. |
    | svr\_recv\_time\_ask | str | The time when Futu server receives order book of ask from the exchange. <br><br>Sometimes the time is zero, e.g. server reboot or first push of cached data. |
    | Bid | list | Each tuple contains the following information：Bid price, bid volume, order qty of bid, order details of bid. <br><br>Order details of ask<br>    - Details: Exchange order ID. Order volume.<br>    - Up to 1000 order details of ask with HK SF market quotes. <br>    - Other quote rights does not support access to such details. |
    | Ask | list | Each tuple contains the following information：Ask price, ask volume, order qty of ask, order details of ask. <br><br>Order details of ask<br>    - Details: Exchange order ID. Order volume.<br>    - Up to 1000 order details of ask with HK SF market quotes.<br>    - Other quote rights does not support access to such details. |

    The format of Bid and Ask fields as follows：

    ```
    'Bid': [ (bid_price1, bid_volume1, order_num, {'orderid1': order_volume1, 'orderid2': order_volume2, …… }), (bid_price2, bid_volume2, order_num,  {'orderid1': order_volume1, 'orderid2': order_volume2, …… }),…]
    'Ask': [ (ask_price1, ask_volume1，order_num, {'orderid1': order_volume1, 'orderid2': order_volume2, …… }), (ask_price2, ask_volume2, order_num, {'orderid1': order_volume1, 'orderid2': order_volume2, …… }),…]
    ```
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
ret_sub = quote_ctx.subscribe(['US.AAPL'], [SubType.ORDER_BOOK], subscribe_push=False)[0]
# First subscribe to the order type. After the subscription is successful, OpenD will continue to receive pushes from the server, False means that there is no need to push to the script temporarily
if ret_sub == RET_OK:  # Successfully subscribed
    ret, data = quote_ctx.get_order_book('US.AAPL', num=3)  # Get 3 files of real-time panning data once
    if ret == RET_OK:
        print(data)
    else:
        print('error:', data)
else:
    print('subscription failed')
quote_ctx.close()  # Close the current connection, OpenD will automatically cancel the subscription of the corresponding stock in 1 minute
```

- **Output**

```python
{'code': 'US.AAPL', 'name': 'APPLE', 'svr_recv_time_bid': '2025-04-07 05:39:20.352', 'svr_recv_time_ask': '2025-04-07 05:39:20.352', 'Bid': [(181.17, 227, 2, {}), (181.15, 2, 2, {}), (181.12, 100, 1, {})], 'Ask': [(181.71, 200, 1, {}), (181.79, 9, 1, {}), (181.9, 616, 3, {})]}
```


## Qot\_GetOrderBook.proto


- **Description**

To get the real-time order book of subscribed stocks, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For order structure, please refer to [OrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3557)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetOrderBook(QotGetOrderBook.Request req);`

`virtual void OnReply_GetOrderBook(FTAPI_Conn client, uint nSerialNo, QotGetOrderBook.Response rsp);`

- **Description**

To get the real-time order book of subscribed stocks, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For order structure, please refer to [OrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3557)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getOrderBook(QotGetOrderBook.Request req);`

`void onReply_GetOrderBook(FTAPI_Conn client, int nSerialNo, QotGetOrderBook.Response rsp);`

- **Description**

To get the real-time order book of subscribed stocks, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For order structure, please refer to [OrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3557)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetOrderBook(const Qot_GetOrderBook::Request &stReq);`

`virtual void OnReply_GetOrderBook(Futu::u32_t nSerialNo, const Qot_GetOrderBook::Response &stRsp) = 0;`

- **Description**

To get the real-time order book of subscribed stocks, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For order structure, please refer to [OrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3557)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetOrderBook(req);`

- **Description**

To get the real-time order book of subscribed stocks, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For order structure, please refer to [OrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3557)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- The time field in which the Futu server receives data from the exchange. Only supports A-share Market stocks, HK stocks, ETFs, warrants, bulls and bears, and this data is only available at the opening time.
- The time field in which the Futu server receives data from the exchange. The receiving time of some data is zero, such as server restart or cached data pushed for the first time.

Tips

- This API provides the function of obtaining real-time data at one time. If you need to obtain pushed data continuously, please refer to the [Real-time OrderBook Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-order-book.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).
- The real-time order book data will be returned during the current trading session for US stocks, with no need to set the session parameter.

`get_order_book(code, num=10)`

- **Description**

To get the real-time order book of subscribed stocks, you must subscribe first.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Stock code. |
| name | str | Stock name. |
| num | int | The requested number of price levels. <br><br>For the upper limit of the number of price levels, please refer to [Details of price levels](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#2126). |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | dict | If ret == RET\_OK, plate data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Order Book format as follows：

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | svr\_recv\_time\_bid | str | The time when moomoo server receives order book of bid from the exchange. <br><br>Sometimes the time is zero, e.g. server reboot or first push of cached data. |
    | svr\_recv\_time\_ask | str | The time when moomoo server receives order book of ask from the exchange. <br><br>Sometimes the time is zero, e.g. server reboot or first push of cached data. |
    | Bid | list | Each tuple contains the following information：Bid price, bid volume, order qty of bid, order details of bid. <br><br>Order details of ask<br>    - Details: Exchange order ID. Order volume.<br>    - Up to 1000 order details of ask with HK SF market quotes. <br>    - Other quote rights does not support access to such details. |
    | Ask | list | Each tuple contains the following information：Ask price, ask volume, order qty of ask, order details of ask. <br><br>Order details of ask<br>    - Details: Exchange order ID. Order volume.<br>    - Up to 1000 order details of ask with HK SF market quotes. <br>    - Other quote rights does not support access to such details. |

    The format of Bid and Ask fields as follows：

    ```
    'Bid': [ (bid_price1, bid_volume1, order_num, {'orderid1': order_volume1, 'orderid2': order_volume2, …… }), (bid_price2, bid_volume2, order_num,  {'orderid1': order_volume1, 'orderid2': order_volume2, …… }),…]
    'Ask': [ (ask_price1, ask_volume1，order_num, {'orderid1': order_volume1, 'orderid2': order_volume2, …… }), (ask_price2, ask_volume2, order_num, {'orderid1': order_volume1, 'orderid2': order_volume2, …… }),…]
    ```
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
ret_sub = quote_ctx.subscribe(['US.AAPL'], [SubType.ORDER_BOOK], subscribe_push=False)[0]
# First subscribe to the order type. After the subscription is successful, OpenD will continue to receive pushes from the server, False means that there is no need to push to the script temporarily
if ret_sub == RET_OK:  # Successfully subscribed
    ret, data = quote_ctx.get_order_book('US.AAPL', num=3)  # Get 3 files of real-time panning data once
    if ret == RET_OK:
        print(data)
    else:
        print('error:', data)
else:
    print('subscription failed')
quote_ctx.close()  # Close the current connection, OpenD will automatically cancel the subscription of the corresponding stock in 1 minute
```

- **Output**

```python
{'code': 'US.AAPL', 'name': 'APPLE', 'svr_recv_time_bid': '2025-04-07 05:39:20.352', 'svr_recv_time_ask': '2025-04-07 05:39:20.352', 'Bid': [(181.17, 227, 2, {}), (181.15, 2, 2, {}), (181.12, 100, 1, {})], 'Ask': [(181.71, 200, 1, {}), (181.79, 9, 1, {}), (181.9, 616, 3, {})]}
```


## Qot\_GetOrderBook.proto


- **Description**

To get the real-time order book of subscribed stocks, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For order structure, please refer to [OrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3557)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetOrderBook(QotGetOrderBook.Request req);`

`virtual void OnReply_GetOrderBook(MMAPI_Conn client, uint nSerialNo, QotGetOrderBook.Response rsp);`

- **Description**

To get the real-time order book of subscribed stocks, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For order structure, please refer to [OrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3557)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getOrderBook(QotGetOrderBook.Request req);`

`void onReply_GetOrderBook(MMAPI_Conn client, int nSerialNo, QotGetOrderBook.Response rsp);`

- **Description**

To get the real-time order book of subscribed stocks, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For order structure, please refer to [OrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3557)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetOrderBook(const Qot_GetOrderBook::Request &stReq);`

`virtual void OnReply_GetOrderBook(moomoo::u32_t nSerialNo, const Qot_GetOrderBook::Response &stRsp) = 0;`

- **Description**

To get the real-time order book of subscribed stocks, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For order structure, please refer to [OrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3557)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetOrderBook(req);`

- **Description**

To get the real-time order book of subscribed stocks, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For order structure, please refer to [OrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3557)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- The time field in which the moomoo server receives data from the exchange. Only supports A-share Market stocks, HK stocks, ETFs, warrants, bulls and bears, and this data is only available at the opening time.
- The time field in which the moomoo server receives data from the exchange. The receiving time of some data is zero, such as server restart or cached data pushed for the first time.

Tips

- This API provides the function of obtaining real-time data at one time. If you need to obtain pushed data continuously, please refer to the [Real-time OrderBook Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-order-book.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).
- The real-time order book data will be returned during the current trading session for US stocks, with no need to set the session parameter.

←
[Get Real-time Quote](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-stock-quote.html)[Get Real-time Candlestick](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-kl.html)
→

## Get Plates of Stocks

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-owner-plate.html


`get_owner_plate(code_list)`

- **Description**

Get the information of plates to which the stocks belong

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code\_list | list | Stock code list. <br><br>Only supports underlying stocks and indexes. <br>Data type of elements in the list is str. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, data of the sector is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Data of the sector format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Securities code. |
    | name | str | Stock name. |
    | plate\_code | str | Plate code. |
    | plate\_name | str | Plate name. |
    | plate\_type | [Plate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#978) | Plate type. <br><br>industry or conceptual. |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

code_list = ['HK.00001']
ret, data = quote_ctx.get_owner_plate(code_list)
if ret == RET_OK:
    print(data)
    print(data['code'][0]) # Take the first stock code
    print(data['plate_code'].values.tolist()) # Convert plate code to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
    code          name          plate_code                            plate_name plate_type
0   HK.00001  CKH HOLDINGS  HK.HSI Constituent  ConstituentStocks in Hang Seng Index      OTHER
..       ...           ...                 ...                                   ...        ...
8   HK.00001  CKH HOLDINGS           HK.BK1983                                HK ADR      OTHER

[9 rows x 5 columns]
HK.00001
['HK.HSI Constituent', 'HK.GangGuTong', 'HK.BK1000', 'HK.BK1061', 'HK.BK1107', 'HK.BK1331', 'HK.BK1600', 'HK.BK1922', 'HK.BK1983']

```


## Qot\_GetOwnerPlate.proto


- **Description**

Get information about the sector of the stock

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of plate information refer to [PlateInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3203)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetOwnerPlate(QotGetOwnerPlate.Request req);`

`virtual void OnReply_GetOwnerPlate(FTAPI_Conn client, uint nSerialNo, QotGetOwnerPlate.Response rsp);`

- **Description**

Get the information of plates to which the stocks belong

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of plate information refer to [PlateInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3203)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getOwnerPlate(QotGetOwnerPlate.Request req);`

`void onReply_GetOwnerPlate(FTAPI_Conn client, int nSerialNo, QotGetOwnerPlate.Response rsp);`

- **Description**

Get the information of plates to which the stocks belong

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of plate information refer to [PlateInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3203)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetOwnerPlate(const Qot_GetOwnerPlate::Request &stReq);`

`virtual void OnReply_GetOwnerPlate(Futu::u32_t nSerialNo, const Qot_GetOwnerPlate::Response &stRsp) = 0;`

- **Description**

Get the information of plates to which the stocks belong

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of plate information refer to [PlateInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3203)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetOwnerPlate(req);`

- **Description**

Get the information of plates to which the stocks belong

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of plate information refer to [PlateInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3203)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds
- The maximum number of stocks of each request list is 200
- Only supports stocks and indices

`get_owner_plate(code_list)`

- **Description**

Get the information of plates to which the stocks belong

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code\_list | list | Stock code list. <br><br>Only supports underlying stocks and indexes. <br>Data type of elements in the list is str. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, data of the sector is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Data of the sector format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Securities code. |
    | name | str | Stock name. |
    | plate\_code | str | Plate code. |
    | plate\_name | str | Plate name. |
    | plate\_type | [Plate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#978) | Plate type. <br><br>industry or conceptual. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

code_list = ['HK.00001']
ret, data = quote_ctx.get_owner_plate(code_list)
if ret == RET_OK:
    print(data)
    print(data['code'][0]) # Take the first stock code
    print(data['plate_code'].values.tolist()) # Convert plate code to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
    code          name          plate_code                            plate_name plate_type
0   HK.00001  CKH HOLDINGS  HK.HSI Constituent  ConstituentStocks in Hang Seng Index      OTHER
..       ...           ...                 ...                                   ...        ...
8   HK.00001  CKH HOLDINGS           HK.BK1983                                HK ADR      OTHER

[9 rows x 5 columns]
HK.00001
['HK.HSI Constituent', 'HK.GangGuTong', 'HK.BK1000', 'HK.BK1061', 'HK.BK1107', 'HK.BK1331', 'HK.BK1600', 'HK.BK1922', 'HK.BK1983']

```


## Qot\_GetOwnerPlate.proto


- **Description**

Get information about the sector of the stock

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of plate information refer to [PlateInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3203)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetOwnerPlate(QotGetOwnerPlate.Request req);`

`virtual void OnReply_GetOwnerPlate(MMAPI_Conn client, uint nSerialNo, QotGetOwnerPlate.Response rsp);`

- **Description**

Get the information of plates to which the stocks belong

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of plate information refer to [PlateInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3203)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getOwnerPlate(QotGetOwnerPlate.Request req);`

`void onReply_GetOwnerPlate(MMAPI_Conn client, int nSerialNo, QotGetOwnerPlate.Response rsp);`

- **Description**

Get the information of plates to which the stocks belong

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of plate information refer to [PlateInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3203)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo:u32_t GetOwnerPlate(const Qot_GetOwnerPlate::Request &stReq);`

`virtual void OnReply_GetOwnerPlate(moomoo::u32_t nSerialNo, const Qot_GetOwnerPlate::Response &stRsp) = 0;`

- **Description**

Get the information of plates to which the stocks belong

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of plate information refer to [PlateInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3203)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetOwnerPlate(req);`

- **Description**

Get the information of plates to which the stocks belong

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of plate information refer to [PlateInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3203)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds
- The maximum number of stocks of each request list is 200
- Only supports stocks and indices

←
[Get Capital Distribution](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-capital-distribution.html)[Get Historical Candlesticks](https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-history-kline.html)
→

## Get Plate List

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-list.html


`get_plate_list(market, plate_class)`

- **Description**

Obtain a list of stock sectors

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| market | [Market](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456) | Market identification. <br><br>Note: Shanghai and Shenzhen are not distinguished here. Entering Shanghai or Shenzhen will return to the sub-plates of the Shanghai and Shenzhen markets. |
| plate\_class | [Plate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#978) | Plate classification. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, data of the plate list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Data of the plate list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Plate code. |
    | plate\_name | str | Plate name. |
    | plate\_id | str | Plate ID. |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_plate_list(Market.HK, Plate.CONCEPT)
if ret == RET_OK:
    print(data)
    print(data['plate_name'][0]) # Take the first plate name
    print(data['plate_name'].values.tolist()) # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
    code plate_name plate_id
0   HK.BK1000      Short Collection   BK1000
..        ...        ...      ...
77  HK.BK1999      Funeral Concept    BK1999

[78 rows x 3 columns]
Short Collection
['Short Collection','Ali concept stocks','Xiongan concept stocks','Apple concept','One Belt One Road', '5G concept','Nightclub stocks','Guangdong-Hong Kong-Macao Greater Bay Area','Tes Pull concept stocks','beer','suspected financial technology stocks','sports goods','rare earth concept','renminbi appreciation concept','anti-epidemic concept','new stocks and sub-new stocks','Tencent concept', 'Cloud Office','SaaS Concept','Online Education','Auto Dealer','Norwegian Government Global Pension Fund Holding','Wuhan Local Concept Stock','Nuclear Power','Mainland Pharmaceutical Stock','Makeup and Beauty Stocks','Technology Internet Stocks','Utilities Stocks','Oil Stocks','Telecom Equipment','Power Stocks','Mobile Games Stocks','Baby and Children’s Products Stocks','Department Stocks', ' Rent collection stocks','port transportation stocks','telecommunications stocks','environmental protection','coal stocks','automotive stocks','battery stocks','logistics','mainland property management stocks','agricultural stocks', 'Golden stocks','luxury stocks','power equipment stocks','fast food chain stores','heavy machinery stocks','food stocks','insurance stocks','paper stocks','water affairs stocks' ,'Dairy products stocks','PV solar stocks','Chinese real estate stocks','Mainland education stocks','Home appliances stocks','Wind power stocks','Blue chip real estate stocks','Chinese banking stocks','Aviation stocks' ,'Petrochemical stocks','Building materials and cement stocks','Chinese brokerage stocks','High-speed rail infrastructure stocks','Gas stocks','Highway and railway stocks','Steel and metal stocks','Huawei concept','OLED Concept','Industrial hemp','Hong Kong local stocks','Hong Kong retail stocks','blockchain','pork concept','holiday concept','Funeral Concept']

```


## Qot\_GetPlateSet.proto


- **Description**

Obtain a list of stock sectors

- **Parameters**

> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For enumeration of plate set types, refer to [PlateSetType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#978)

- **Return**

> - For the structure of plate information, refer to [PlateInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3203)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetPlateSet(QotGetPlateSet.Request req);`

`virtual void OnReply_GetPlateSet(FTAPI_Conn client, uint nSerialNo, QotGetPlateSet.Response rsp);`

- **Description**

Obtain a list of stock sectors

- **Parameters**

> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For enumeration of plate set types, refer to [PlateSetType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#978)

- **Return**

> - For the structure of plate information, refer to [PlateInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3203)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getPlateSet(QotGetPlateSet.Request req);`

`void onReply_GetPlateSet(FTAPI_Conn client, int nSerialNo, QotGetPlateSet.Response rsp);`

- **Description**

Obtain a list of stock sectors

- **Parameters**

> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For enumeration of plate set types, refer to [PlateSetType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#978)

- **Return**

> - For the structure of plate information, refer to [PlateInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3203)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetPlateSet(const Qot_GetPlateSet::Request &stReq);`

`virtual void OnReply_GetPlateSet(Futu::u32_t nSerialNo, const Qot_GetPlateSet::Response &stRsp) = 0;`

- **Description**

Obtain a list of stock sectors

- **Parameters**

> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For enumeration of plate set types, refer to [PlateSetType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#978)

- **Return**

> - For the structure of plate information, refer to [PlateInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3203)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetPlateSet(req);`

- **Description**

Obtain a list of stock sectors

- **Parameters**

> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For enumeration of plate set types, refer to [PlateSetType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#978)

- **Return**

> - For the structure of plate information, refer to [PlateInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3203)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds

`get_plate_list(market, plate_class)`

- **Description**

Obtain a list of stock sectors

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| market | [Market](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456) | Market identification. <br><br>Note: Shanghai and Shenzhen are not distinguished here. Entering Shanghai or Shenzhen will return to the sub-plates of the Shanghai and Shenzhen markets. |
| plate\_class | [Plate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#978) | Plate classification. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, data of the plate list is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Data of the plate list format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Plate code. |
    | plate\_name | str | Plate name. |
    | plate\_id | str | Plate ID. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_plate_list(Market.HK, Plate.CONCEPT)
if ret == RET_OK:
    print(data)
    print(data['plate_name'][0]) # Take the first plate name
    print(data['plate_name'].values.tolist()) # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
    code plate_name plate_id
0   HK.BK1000      Short Collection   BK1000
..        ...        ...      ...
77  HK.BK1999      Funeral Concept    BK1999

[78 rows x 3 columns]
Short Collection
['Short Collection','Ali concept stocks','Xiongan concept stocks','Apple concept','One Belt One Road', '5G concept','Nightclub stocks','Guangdong-Hong Kong-Macao Greater Bay Area','Tes Pull concept stocks','beer','suspected financial technology stocks','sports goods','rare earth concept','renminbi appreciation concept','anti-epidemic concept','new stocks and sub-new stocks','Tencent concept', 'Cloud Office','SaaS Concept','Online Education','Auto Dealer','Norwegian Government Global Pension Fund Holding','Wuhan Local Concept Stock','Nuclear Power','Mainland Pharmaceutical Stock','Makeup and Beauty Stocks','Technology Internet Stocks','Utilities Stocks','Oil Stocks','Telecom Equipment','Power Stocks','Mobile Games Stocks','Baby and Children’s Products Stocks','Department Stocks', ' Rent collection stocks','port transportation stocks','telecommunications stocks','environmental protection','coal stocks','automotive stocks','battery stocks','logistics','mainland property management stocks','agricultural stocks', 'Golden stocks','luxury stocks','power equipment stocks','fast food chain stores','heavy machinery stocks','food stocks','insurance stocks','paper stocks','water affairs stocks' ,'Dairy products stocks','PV solar stocks','Chinese real estate stocks','Mainland education stocks','Home appliances stocks','Wind power stocks','Blue chip real estate stocks','Chinese banking stocks','Aviation stocks' ,'Petrochemical stocks','Building materials and cement stocks','Chinese brokerage stocks','High-speed rail infrastructure stocks','Gas stocks','Highway and railway stocks','Steel and metal stocks','Huawei concept','OLED Concept','Industrial hemp','Hong Kong local stocks','Hong Kong retail stocks','blockchain','pork concept','holiday concept','Funeral Concept']

```


## Qot\_GetPlateSet.proto


- **Description**

Obtain a list of stock sectors

- **Parameters**

> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For enumeration of plate set types, refer to [PlateSetType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#978)

- **Return**

> - For the structure of plate information, refer to [PlateInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3203)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetPlateSet(QotGetPlateSet.Request req);`

`virtual void OnReply_GetPlateSet(MMAPI_Conn client, uint nSerialNo, QotGetPlateSet.Response rsp);`

- **Description**

Obtain a list of stock sectors

- **Parameters**

> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For enumeration of plate set types, refer to [PlateSetType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#978)

- **Return**

> - For the structure of plate information, refer to [PlateInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3203)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getPlateSet(QotGetPlateSet.Request req);`

`void onReply_GetPlateSet(MMAPI_Conn client, int nSerialNo, QotGetPlateSet.Response rsp);`

- **Description**

Obtain a list of stock sectors

- **Parameters**

> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For enumeration of plate set types, refer to [PlateSetType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#978)

- **Return**

> - For the structure of plate information, refer to [PlateInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3203)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetPlateSet(const Qot_GetPlateSet::Request &stReq);`

`virtual void OnReply_GetPlateSet(moomoo::u32_t nSerialNo, const Qot_GetPlateSet::Response &stRsp) = 0;`

- **Description**

Obtain a list of stock sectors

- **Parameters**

> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For enumeration of plate set types, refer to [PlateSetType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#978)

- **Return**

> - For the structure of plate information, refer to [PlateInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3203)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetPlateSet(req);`

- **Description**

Obtain a list of stock sectors

- **Parameters**

> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For enumeration of plate set types, refer to [PlateSetType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#978)

- **Return**

> - For the structure of plate information, refer to [PlateInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3203)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds

←
[Get the List of Stocks in The Plate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-stock.html)[Get Stock Basic Information](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-static-info.html)
→

## Get the List of Stocks in The Plate

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-stock.html


`get_plate_stock(plate_code, sort_field=SortField.CODE, ascend=True)`

- **Description**

Get the list of stocks in the plate, or get the constituent stocks of the stock index

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| plate\_code | str | Plate code. <br><br>You can use [Get plate list](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-list.html) to get other plates code.<br>For example, "SH.BK0001", "SH.BK0002". |
| sort\_field | [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823) | Sort field. |
| ascend | bool | Sort direction. <br><br>True: ascending order.<br>False: descending order. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, stock data of the plate is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Stock data of the plate format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | lot\_size | int | The number of shares per lot, or contract multiplier for futures. |
    | stock\_name | str | Stock name. |
    | stock\_type | [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767) | Stock type. |
    | list\_time | str | Time of listing. <br><br>Format: yyyy-MM-dd<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | stock\_id | int | Stock ID. |
    | main\_contract | bool | Whether future main contract. <br><br>Specific field for futures. |
    | last\_trade\_time | str | Last trading time. <br><br>The field is unique to futures. Main, current month and next month futures do not have this field. |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_plate_stock('HK.BK1001')
if ret == RET_OK:
    print(data)
    print(data['stock_name'][0]) # Take the first stock name
    print(data['stock_name'].values.tolist()) # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
    code  lot_size stock_name  stock_owner  stock_child_type stock_type   list_time        stock_id  main_contract last_trade_time
0   HK.00462      4000       Natural dairy          NaN               NaN      STOCK  2005-06-10  55589761712590          False
..       ...       ...        ...          ...               ...        ...         ...             ...            ...             ...
9   HK.06186      1000           China Feihe Limited          NaN               NaN      STOCK  2019-11-13  78159814858794          False

[10 rows x 10 columns]
Natural Dairy
['Natural Dairy', 'China Modern Dairy', 'Yashili International', 'YuanShengTai Dairy Farm', 'China Shengmu Organic Milk', 'China ZhongDi Dairy Holdings', 'Lanzhou Zhuangyuan Pasture', 'Ausnutria Dairy Corporation', 'China Mengniu Dairy', 'China Feihe Limited']

```


## Qot\_GetPlateSecurity.proto


- **Description**

Get the list of stocks in the plate, or get the constituent stocks of the stock index

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For sorting type, refer to [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetPlateSecurity(QotGetPlateSecurity.Request req);`

`virtual void OnReply_GetPlateSecurity(FTAPI_Conn client, uint nSerialNo, QotGetPlateSecurity.Response rsp);`

- **Description**

Get the list of stocks in the plate, or get the constituent stocks of the stock index

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For sorting type, refer to [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getPlateSecurity(QotGetPlateSecurity.Request req);`

`void onReply_GetPlateSecurity(FTAPI_Conn client, int nSerialNo, QotGetPlateSecurity.Response rsp);`

- **Description**

Get the list of stocks in the plate, or get the constituent stocks of the stock index

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For sorting type, refer to [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetPlateSecurity(const Qot_GetPlateSecurity::Request &stReq);`

`virtual void OnReply_GetPlateSecurity(Futu::u32_t nSerialNo, const Qot_GetPlateSecurity::Response &stRsp) = 0;`

- **Description**

Get the list of stocks in the plate, or get the constituent stocks of the stock index

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For sorting type, refer to [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetPlateSecurity(req);`

- **Description**

Get the list of stocks in the plate, or get the constituent stocks of the stock index

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For sorting type, refer to [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds

Commonly used sectors and index codes

| Code | Description |
| --- | --- |
| HK.HSI Constituent Stocks | HSI constituent stocks |
| HK.HSCEI Stock | HSCEI constituent stocks |
| HK.Motherboard | Main Plate of Hong Kong Stocks |
| HK.GEM | GEM(Growth Enterprise Market) Hong Kong Stocks |
| HK.LIST1910 | All Hong Kong stocks |
| HK.LIST1911 | Main Plate H shares |
| HK.LIST1912 | GEM H shares |
| HK.Fund | ETF (Hong Kong Stock Fund) |
| HK.LIST1600 | Hot List (Hong Kong) |
| HK.LIST1921 | Listed new shares-Hong Kong stocks |
| SH.LIST3000000 | Shanghai Main Plate |
| SH.LIST0901 | Shanghai Stock Exchange B shares |
| SH.LIST0902 | Shenzhen Stock Exchange B shares |
| SH.LIST3000002 | Shanghai and Shenzhen Index |
| SH.LIST3000005 | All A-shares (Shanghai and Shenzhen) |
| SH.LIST0600 | Hot List (Shanghai and Shenzhen) |
| SH.LIST0992 | Science Innovation Plate |
| SH.LIST0921 | Listed New Shares - A-shares |
| SZ.LIST3000001 | SZSE Main Plate |
| SZ.LIST3000003 | Small and Medium Plate |
| SZ.LIST3000004 | The Growth Enterprise Market (Deep) |
| US.USAALL | All US stocks |

`get_plate_stock(plate_code, sort_field=SortField.CODE, ascend=True)`

- **Description**

Get the list of stocks in the plate, or get the constituent stocks of the stock index

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| plate\_code | str | Plate code. <br><br>You can use [Get plate list](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-list.html) to get other plates code.<br>For example, "SH.BK0001", "SH.BK0002". |
| sort\_field | [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823) | Sort field. |
| ascend | bool | Sort direction. <br><br>True: ascending order.<br>False: descending order. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, stock data of the plate is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Stock data of the plate format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | lot\_size | int | The number of shares per lot, or contract multiplier for futures. |
    | stock\_name | str | Stock name. |
    | stock\_type | [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767) | Stock type. |
    | list\_time | str | Time of listing. <br><br>Format: yyyy-MM-dd<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | stock\_id | int | Stock ID. |
    | main\_contract | bool | Whether future main contract. <br><br>Specific field for futures. |
    | last\_trade\_time | str | Last trading time. <br><br>The field is unique to futures. Main, current month and next month futures do not have this field. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_plate_stock('HK.BK1001')
if ret == RET_OK:
    print(data)
    print(data['stock_name'][0]) # Take the first stock name
    print(data['stock_name'].values.tolist()) # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
    code  lot_size stock_name  stock_owner  stock_child_type stock_type   list_time        stock_id  main_contract last_trade_time
0   HK.00462      4000       Natural dairy          NaN               NaN      STOCK  2005-06-10  55589761712590          False
..       ...       ...        ...          ...               ...        ...         ...             ...            ...             ...
9   HK.06186      1000           China Feihe Limited          NaN               NaN      STOCK  2019-11-13  78159814858794          False

[10 rows x 10 columns]
Natural Dairy
['Natural Dairy', 'China Modern Dairy', 'Yashili International', 'YuanShengTai Dairy Farm', 'China Shengmu Organic Milk', 'China ZhongDi Dairy Holdings', 'Lanzhou Zhuangyuan Pasture', 'Ausnutria Dairy Corporation', 'China Mengniu Dairy', 'China Feihe Limited']

```


## Qot\_GetPlateSecurity.proto


- **Description**

Get the list of stocks in the plate, or get the constituent stocks of the stock index

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For sorting type, refer to [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetPlateSecurity(QotGetPlateSecurity.Request req);`

`virtual void OnReply_GetPlateSecurity(MMAPI_Conn client, uint nSerialNo, QotGetPlateSecurity.Response rsp);`

- **Description**

Get the list of stocks in the plate, or get the constituent stocks of the stock index

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For sorting type, refer to [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getPlateSecurity(QotGetPlateSecurity.Request req);`

`void onReply_GetPlateSecurity(MMAPI_Conn client, int nSerialNo, QotGetPlateSecurity.Response rsp);`

- **Description**

Get the list of stocks in the plate, or get the constituent stocks of the stock index

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For sorting type, refer to [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetPlateSecurity(const Qot_GetPlateSecurity::Request &stReq);`

`virtual void OnReply_GetPlateSecurity(moomoo::u32_t nSerialNo, const Qot_GetPlateSecurity::Response &stRsp) = 0;`

- **Description**

Get the list of stocks in the plate, or get the constituent stocks of the stock index

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For sorting type, refer to [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetPlateSecurity(req);`

- **Description**

Get the list of stocks in the plate, or get the constituent stocks of the stock index

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For sorting type, refer to [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds

Commonly used sectors and index codes

| Code | Description |
| --- | --- |
| HK.HSI Constituent Stocks | HSI constituent stocks |
| HK.HSCEI Stock | HSCEI constituent stocks |
| HK.Motherboard | Main Plate of Hong Kong Stocks |
| HK.GEM | GEM(Growth Enterprise Market) Hong Kong Stocks |
| HK.LIST1910 | All Hong Kong stocks |
| HK.LIST1911 | Main Plate H shares |
| HK.LIST1912 | GEM H shares |
| HK.Fund | ETF (Hong Kong Stock Fund) |
| HK.LIST1600 | Hot List (Hong Kong) |
| HK.LIST1921 | Listed new shares-Hong Kong stocks |
| SH.LIST3000000 | Shanghai Main Plate |
| SH.LIST0901 | Shanghai Stock Exchange B shares |
| SH.LIST0902 | Shenzhen Stock Exchange B shares |
| SH.LIST3000002 | Shanghai and Shenzhen Index |
| SH.LIST3000005 | All A-shares (Shanghai and Shenzhen) |
| SH.LIST0600 | Hot List (Shanghai and Shenzhen) |
| SH.LIST0992 | Science Innovation Plate |
| SH.LIST0921 | Listed New Shares - A-shares |
| SZ.LIST3000001 | SZSE Main Plate |
| SZ.LIST3000003 | Small and Medium Plate |
| SZ.LIST3000004 | The Growth Enterprise Market (Deep) |
| US.USAALL | All US stocks |

←
[Filter Stocks by Condition](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-stock-filter.html)[Get Plate List](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-list.html)
→

## Get Price Reminder List

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-price-reminder.html


`get_price_reminder(code=None, market=None)`

- **Description**

Get a list of price reminders set for the specified stock or market

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Specified stock code. |
| market | [Market](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456) | Specified market type. <br><br>Note that either Shanghai or Shenzhen will be regarded as the A-share market. |

Note: Choose either code or market, and code takes precedence if both exist.

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, price reminder data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Price reminder data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | key | int | Identification, used to modify the price reminder. |
    | reminder\_type | [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793) | The type of price reminder. |
    | reminder\_freq | [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918) | The frequency of price reminder. |
    | value | float | Remind value. |
    | enable | bool | Whether to enable. |
    | note | str | Note. <br><br>Note supports no more than 20 Chinese characters. |
    | reminder\_session\_list | list | Price reminder session list for US stocks <br><br>The parameter type in list is [PriceReminderMarketStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6578). |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_price_reminder(code='US.AAPL')
if ret == RET_OK:
    print(data)
    print(data['key'].values.tolist())   # Convert to list
else:
    print('error:', data)
print('******************************************')
ret, data = quote_ctx.get_price_reminder(code=None, market=Market.US)
if ret == RET_OK:
    print(data)
    if data.shape[0] > 0:  # If the price remind list is not empty
        print(data['code'][0])    # Take the first stock code
        print(data['code'].values.tolist())   # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
code name                  key   reminder_type reminder_freq   value  enable note                   reminder_session_list
0  US.AAPL   APPLE  1744021708234288125    BID_PRICE_UP        ALWAYS  184.37    True  456                              [US_AFTER]
1  US.AAPL   APPLE  1744022257052794489    BID_PRICE_UP        ALWAYS  185.50    True  456  [OPEN, US_PRE, US_AFTER, US_OVERNIGHT]
2  US.AAPL   APPLE  1744021708211891867  ASK_PRICE_DOWN        ALWAYS  182.54    True  123                              [US_AFTER]
3  US.AAPL   APPLE  1744022257023211123  ASK_PRICE_DOWN        ALWAYS  183.70    True  123  [OPEN, US_PRE, US_AFTER, US_OVERNIGHT]
[1744021708234288125, 1744022257052794489, 1744021708211891867, 1744022257023211123]
******************************************
      code name                  key   reminder_type reminder_freq   value  enable note                   reminder_session_list
0  US.AAPL   APPLE  1744021708234288125    BID_PRICE_UP        ALWAYS  184.37    True  456                              [US_AFTER]
1  US.AAPL   APPLE  1744022257052794489    BID_PRICE_UP        ALWAYS  185.50    True  456  [OPEN, US_PRE, US_AFTER, US_OVERNIGHT]
2  US.AAPL   APPLE  1744021708211891867  ASK_PRICE_DOWN        ALWAYS  182.54    True  123                              [US_AFTER]
3  US.AAPL   APPLE  1744022257023211123  ASK_PRICE_DOWN        ALWAYS  183.70    True  123  [OPEN, US_PRE, US_AFTER, US_OVERNIGHT]
4  US.NVDA  NVIDIA  1739697581665326308      PRICE_DOWN        ALWAYS  102.00    True       [OPEN, US_PRE, US_AFTER, US_OVERNIGHT]
US.AAPL
['US.AAPL', 'US.AAPL', 'US.AAPL', 'US.AAPL', 'US.NVDA']

```


## Qot\_GetPriceReminder.proto


- **Description**

Get a list of price reminders set for the specified stock or market

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market types, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For enumeration of reminder frequency, refer to [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetPriceReminder(QotGetPriceReminder.Request req);`

`virtual void OnReply_GetPriceReminder(FTAPI_Conn client, uint nSerialNo, QotGetPriceReminder.Response rsp);`

- **Description**

Get a list of price reminders set for the specified stock or market

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market types, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For enumeration of reminder frequency, refer to [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getPriceReminder(QotGetPriceReminder.Request req);`

`void onReply_GetPriceReminder(FTAPI_Conn client, int nSerialNo, QotGetPriceReminder.Response rsp);`

- **Description**

Get a list of price reminders set for the specified stock or market

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market types, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For enumeration of reminder frequency, refer to [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetPriceReminder(const Qot_GetPriceReminder::Request &stReq);`

`virtual void OnReply_GetPriceReminder(Futu::u32_t nSerialNo, const Qot_GetPriceReminder::Response &stRsp) = 0;`

- **Description**

Get a list of price reminders set for the specified stock or market

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market types, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For enumeration of reminder frequency, refer to [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetPriceReminder(req);`

- **Description**

Get a list of price reminders set for the specified stock or market

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market types, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For enumeration of reminder frequency, refer to [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds

`get_price_reminder(code=None, market=None)`

- **Description**

Get a list of price reminders set for the specified stock or market

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Specified stock code. |
| market | [Market](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456) | Specified market type. <br><br>Note that either Shanghai or Shenzhen will be regarded as the A-share market. |

Note: Choose either code or market, and code takes precedence if both exist.

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, price reminder data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Price reminder data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | key | int | Identification, used to modify the price reminder. |
    | reminder\_type | [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793) | The type of price reminder. |
    | reminder\_freq | [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918) | The frequency of price reminder. |
    | value | float | Remind value. |
    | enable | bool | Whether to enable. |
    | note | str | Note. <br><br>Note supports no more than 20 Chinese characters. |
    | reminder\_session\_list | list | Price reminder session list for US stocks <br><br>The parameter type in list is [PriceReminderMarketStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6578). |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_price_reminder(code='US.AAPL')
if ret == RET_OK:
    print(data)
    print(data['key'].values.tolist())   # Convert to list
else:
    print('error:', data)
print('******************************************')
ret, data = quote_ctx.get_price_reminder(code=None, market=Market.US)
if ret == RET_OK:
    print(data)
    if data.shape[0] > 0:  # If the price remind list is not empty
        print(data['code'][0])    # Take the first stock code
        print(data['code'].values.tolist())   # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
code name                  key   reminder_type reminder_freq   value  enable note                   reminder_session_list
0  US.AAPL   APPLE  1744021708234288125    BID_PRICE_UP        ALWAYS  184.37    True  456                              [US_AFTER]
1  US.AAPL   APPLE  1744022257052794489    BID_PRICE_UP        ALWAYS  185.50    True  456  [OPEN, US_PRE, US_AFTER, US_OVERNIGHT]
2  US.AAPL   APPLE  1744021708211891867  ASK_PRICE_DOWN        ALWAYS  182.54    True  123                              [US_AFTER]
3  US.AAPL   APPLE  1744022257023211123  ASK_PRICE_DOWN        ALWAYS  183.70    True  123  [OPEN, US_PRE, US_AFTER, US_OVERNIGHT]
[1744021708234288125, 1744022257052794489, 1744021708211891867, 1744022257023211123]
******************************************
      code name                  key   reminder_type reminder_freq   value  enable note                   reminder_session_list
0  US.AAPL   APPLE  1744021708234288125    BID_PRICE_UP        ALWAYS  184.37    True  456                              [US_AFTER]
1  US.AAPL   APPLE  1744022257052794489    BID_PRICE_UP        ALWAYS  185.50    True  456  [OPEN, US_PRE, US_AFTER, US_OVERNIGHT]
2  US.AAPL   APPLE  1744021708211891867  ASK_PRICE_DOWN        ALWAYS  182.54    True  123                              [US_AFTER]
3  US.AAPL   APPLE  1744022257023211123  ASK_PRICE_DOWN        ALWAYS  183.70    True  123  [OPEN, US_PRE, US_AFTER, US_OVERNIGHT]
4  US.NVDA  NVIDIA  1739697581665326308      PRICE_DOWN        ALWAYS  102.00    True       [OPEN, US_PRE, US_AFTER, US_OVERNIGHT]
US.AAPL
['US.AAPL', 'US.AAPL', 'US.AAPL', 'US.AAPL', 'US.NVDA']

```


## Qot\_GetPriceReminder.proto


- **Description**

Get a list of price reminders set for the specified stock or market

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market types, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For enumeration of reminder frequency, refer to [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetPriceReminder(QotGetPriceReminder.Request req);`

`virtual void OnReply_GetPriceReminder(MMAPI_Conn client, uint nSerialNo, QotGetPriceReminder.Response rsp);`

- **Description**

Get a list of price reminders set for the specified stock or market

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market types, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For enumeration of reminder frequency, refer to [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getPriceReminder(QotGetPriceReminder.Request req);`

`void onReply_GetPriceReminder(MMAPI_Conn client, int nSerialNo, QotGetPriceReminder.Response rsp);`

- **Description**

Get a list of price reminders set for the specified stock or market

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market types, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For enumeration of reminder frequency, refer to [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetPriceReminder(const Qot_GetPriceReminder::Request &stReq);`

`virtual void OnReply_GetPriceReminder(moomoo::u32_t nSerialNo, const Qot_GetPriceReminder::Response &stRsp) = 0;`

- **Description**

Get a list of price reminders set for the specified stock or market

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market types, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For enumeration of reminder frequency, refer to [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetPriceReminder(req);`

- **Description**

Get a list of price reminders set for the specified stock or market

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market types, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For enumeration of reminder frequency, refer to [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds

←
[Set Price Reminder](https://openapi.moomoo.com/moomoo-api-doc/en/quote/set-price-reminder.html)[Get The Watchlist](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-user-security.html)
→

## Get Related Data of a Specific Security

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-referencestock-list.html


`get_referencestock_list(code, reference_type)`

- **Description**

Get related data of securities, such as: obtaining warrants related to underlying stocks, obtaining contracts related to futures

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Stock code. |
| reference\_type | [SecurityReferenceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8136) | Related data type to be obtained. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, related data of security is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Related data of security fotmat as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Security code. |
    | lot\_size | int | The number of shares per lot, contract multiplier for futures. |
    | stock\_type | [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767) | Security type. |
    | stock\_name | str | Security name. |
    | list\_time | str | Time of listing. <br><br>Format: yyyy-MM-dd<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | wrt\_valid | bool | Whether it is a warrant. <br><br>If it is True, the following field start with 'wrt' is valid. |
    | wrt\_type | [WrtType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421) | Warrant type. |
    | wrt\_code | str | The underlying stock. |
    | future\_valid | bool | Whether it is a future. <br><br>If it is True, the following field start with 'future' is valid. |
    | future\_main\_contract | bool | Whether the future main contract. <br><br>Special field for futures. |
    | future\_last\_trade\_time | str | Last trading time. <br><br>The field is unique to futures. <br>Main, current month and next month futures do not have this field. |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

# Get warrants related to the underlying stock
ret, data = quote_ctx.get_referencestock_list('HK.00700', SecurityReferenceType.WARRANT)
if ret == RET_OK:
    print(data)
    print(data['code'][0]) # Take the first stock code
    print(data['code'].values.tolist()) # Convert to list
else:
    print('error:', data)
print('******************************************')
# Port related contracts
ret, data = quote_ctx.get_referencestock_list('HK.A50main', SecurityReferenceType.FUTURE)
if ret == RET_OK:
    print(data)
    print(data['code'][0]) # Take the first stock code
    print(data['code'].values.tolist()) # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
        code  lot_size stock_type stock_name   list_time  wrt_valid wrt_type  wrt_code  future_valid  future_main_contract  future_last_trade_time
0     HK.24719      1000    WARRANT     TENGXUNDONGYAJIUSIGUA  2018-07-20       True      PUT  HK.00700         False                   NaN                     NaN
...        ...       ...        ...        ...         ...        ...      ...       ...           ...                   ...                     ...
1617  HK.63402     10000    WARRANT     GS#TENCTRC2108Y  2020-11-26       True     BULL  HK.00700         False                   NaN                     NaN

[1618 rows x 11 columns]
HK.24719
['HK.24719', 'HK.27886', 'HK.28621', 'HK.14339', 'HK.27952', 'HK.18693', 'HK.20306', 'HK.53635', 'HK.47269', 'HK.27227',\
...        ...       ...        ...        ...         ...        ...      ...       ...\
'HK.63402']
******************************************
        code  lot_size stock_type         stock_name list_time  wrt_valid  wrt_type  wrt_code  future_valid  future_main_contract future_last_trade_time
0  HK.A50main      5000     FUTURE      A50 Future Main(DEC0)                False       NaN       NaN          True                  True
..         ...       ...        ...                ...       ...        ...       ...       ...           ...                   ...                    ...
5  HK.A502106      5000     FUTURE      A50 JUN1                False       NaN       NaN          True                 False             2021-06-29

[6 rows x 11 columns]
HK.A50main
['HK.A50main', 'HK.A502011', 'HK.A502012', 'HK.A502101', 'HK.A502103', 'HK.A502106']

```


## Qot\_GetReference.proto


- **Description**

Get related data of securities, such as: obtaining warrants related to underlying stocks, obtaining contradts related to futures

- **Protocol ID**

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Proto ID**

`uint GetReference(QotGetReference.Request req);`

`virtual void OnReply_GetReference(FTAPI_Conn client, uint nSerialNo, QotGetReference.Response rsp);`

- **Description**

Get related data of securities, such as: obtaining warrants related to underlying stocks, obtaining contradts related to futures

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getReference(QotGetReference.Request req);`

`void onReply_GetReference(FTAPI_Conn client, int nSerialNo, QotGetReference.Response rsp);`

- **Description**

Get related data of securities, such as: obtaining warrants related to underlying stocks, obtaining contradts related to futures

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetReference(const Qot_GetReference::Request &stReq);`

`virtual void OnReply_GetReference(Futu::u32_t nSerialNo, const Qot_GetReference::Response &stRsp) = 0;`

- **Description**

Get related data of securities, such as: obtaining warrants related to underlying stocks, obtaining contradts related to futures

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetReference(req);`

- **Description**

Get related data of securities, such as: obtaining warrants related to underlying stocks, obtaining contradts related to futures

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds
- When obtaining warrants related to the underlying stock, it is not subject to the above frequency restriction

`get_referencestock_list(code, reference_type)`

- **Description**

Get related data of securities, such as: obtaining warrants related to underlying stocks, obtaining contracts related to futures

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Stock code. |
| reference\_type | [SecurityReferenceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8136) | Related data type to be obtained. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, related data of security is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Related data of security fotmat as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Security code. |
    | lot\_size | int | The number of shares per lot, contract multiplier for futures. |
    | stock\_type | [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767) | Security type. |
    | stock\_name | str | Security name. |
    | list\_time | str | Time of listing. <br><br>Format: yyyy-MM-dd<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | wrt\_valid | bool | Whether it is a warrant. <br><br>If it is True, the following field start with 'wrt' is valid. |
    | wrt\_type | [WrtType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421) | Warrant type. |
    | wrt\_code | str | The underlying stock. |
    | future\_valid | bool | Whether it is a future. <br><br>If it is True, the following field start with 'future' is valid. |
    | future\_main\_contract | bool | Whether the future main contract. <br><br>Special field for futures. |
    | future\_last\_trade\_time | str | Last trading time. <br><br>The field is unique to futures. <br>Main, current month and next month futures do not have this field. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

# Get warrants related to the underlying stock
ret, data = quote_ctx.get_referencestock_list('HK.00700', SecurityReferenceType.WARRANT)
if ret == RET_OK:
    print(data)
    print(data['code'][0]) # Take the first stock code
    print(data['code'].values.tolist()) # Convert to list
else:
    print('error:', data)
print('******************************************')
# Port related contracts
ret, data = quote_ctx.get_referencestock_list('HK.A50main', SecurityReferenceType.FUTURE)
if ret == RET_OK:
    print(data)
    print(data['code'][0]) # Take the first stock code
    print(data['code'].values.tolist()) # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
        code  lot_size stock_type stock_name   list_time  wrt_valid wrt_type  wrt_code  future_valid  future_main_contract  future_last_trade_time
0     HK.24719      1000    WARRANT     TENGXUNDONGYAJIUSIGUA  2018-07-20       True      PUT  HK.00700         False                   NaN                     NaN
...        ...       ...        ...        ...         ...        ...      ...       ...           ...                   ...                     ...
1617  HK.63402     10000    WARRANT     GS#TENCTRC2108Y  2020-11-26       True     BULL  HK.00700         False                   NaN                     NaN

[1618 rows x 11 columns]
HK.24719
['HK.24719', 'HK.27886', 'HK.28621', 'HK.14339', 'HK.27952', 'HK.18693', 'HK.20306', 'HK.53635', 'HK.47269', 'HK.27227',\
...        ...       ...        ...        ...         ...        ...      ...       ...\
'HK.63402']
******************************************
        code  lot_size stock_type         stock_name list_time  wrt_valid  wrt_type  wrt_code  future_valid  future_main_contract future_last_trade_time
0  HK.A50main      5000     FUTURE      A50 Future Main(DEC0)                False       NaN       NaN          True                  True
..         ...       ...        ...                ...       ...        ...       ...       ...           ...                   ...                    ...
5  HK.A502106      5000     FUTURE      A50 JUN1                False       NaN       NaN          True                 False             2021-06-29

[6 rows x 11 columns]
HK.A50main
['HK.A50main', 'HK.A502011', 'HK.A502012', 'HK.A502101', 'HK.A502103', 'HK.A502106']

```


## Qot\_GetReference.proto


- **Description**

Get related data of securities, such as: obtaining warrants related to underlying stocks, obtaining contradts related to futures

- **Protocol ID**

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Proto ID**

`uint GetReference(QotGetReference.Request req);`

`virtual void OnReply_GetReference(MMAPI_Conn client, uint nSerialNo, QotGetReference.Response rsp);`

- **Description**

Get related data of securities, such as: obtaining warrants related to underlying stocks, obtaining contradts related to futures

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getReference(QotGetReference.Request req);`

`void onReply_GetReference(MMAPI_Conn client, int nSerialNo, QotGetReference.Response rsp);`

- **Description**

Get related data of securities, such as: obtaining warrants related to underlying stocks, obtaining contradts related to futures

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetReference(const Qot_GetReference::Request &stReq);`

`virtual void OnReply_GetReference(moomoo::u32_t nSerialNo, const Qot_GetReference::Response &stRsp) = 0;`

- **Description**

Get related data of securities, such as: obtaining warrants related to underlying stocks, obtaining contradts related to futures

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetReference(req);`

- **Description**

Get related data of securities, such as: obtaining warrants related to underlying stocks, obtaining contradts related to futures

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds
- When obtaining warrants related to the underlying stock, it is not subject to the above frequency restriction

←
[Get Filtered Warrant](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-warrant.html)[Get Futures Contract Information](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-future-info.html)
→

## Get Adjustment Factor

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-rehab.html


`get_rehab(code)`

- **Description**

Get the stock adjustment factor

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Stock code. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, data for adjustment is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Data for adjustment format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | ex\_div\_date | str | Ex-dividend date. |
    | split\_base | float | Split numerator.<br><br>split\_ratio= split numerator / split denominator |
    | split\_ert | float | Split dominator. |
    | join\_base | float | Joint numerator.<br><br>split\_ratio= joint numerator / joint denominator |
    | join\_ert | float | Joint dominator. |
    | split\_ratio | float | Split ratio. <br><br>\- When 5 shares are joined into 1 share, the joint numerator = 5, the joint denominator = 1, split\_ratio = joint numerator / joint denominator= 5/1.<br>\- When 1 share is split into 5 shares, the split numerator =1, the split denominator =5, split\_ratio= split numerator /split denominator =1/5. |
    | per\_cash\_div | float | Dividend per share. |
    | bounce\_base | float | Bounce numerator.<br><br>per\_share\_div\_ratio= bounce numerator / bounce denominator |
    | bounce\_ert | float | Bounce dominator. |
    | per\_share\_div\_ratio | float | Bounce ratio. <br><br>\- When the company has bonus shares and 1 share gives 5 shares, the bounce numerator = 1, the bounce denominator = 5, per\_share\_div\_ratio = bounce numerator / bounce denominator = 1/5. |
    | transfer\_base | float | Conversion numerator.<br><br>per\_share\_trans\_ratio= transfer\_base / bounce denominator |
    | transfer\_ert | float | Conversion dominator. |
    | per\_share\_trans\_ratio | float | Conversion ratio. <br><br>\- When 10 share is converted into 3 shares, the conversion numerator = 10, the conversion denominator = 3, per\_share\_trans\_ratio = conversion numerator / conversion numerator = 10/3. |
    | allot\_base | float | Allotment numerator.<br><br>allotment ratio = allotment numerator / allotment denominator |
    | allot\_ert | float | Allotment dominator. |
    | allotment\_ratio | float | Allotment ratio. <br><br>\- When 5 shares are allocated to 1 share, the allotment numerator = 5, the allotment denominator = 1, allotment\_ratio = allotment numerator / allotment denominator = 5/1. |
    | allotment\_price | float | Issuance price. |
    | add\_base | float | Additional issuance numerator.<br><br>stk\_spo\_ratio = additional issuance numerator / additional issuance denominator |
    | add\_ert | float | Additional issuance dominator. |
    | stk\_spo\_ratio | float | Additional issuance ratio. <br><br>\- When 1 additional share issues 5 shares, the additional issuance numerator = 1, the additional issuance denominator = 5, stk\_spo\_ratio = additional issuance numerator / additional issuance denominator = 1/5. |
    | stk\_spo\_price | float | Additional issuance price. |
    | spin\_off\_base | float | Spin-off numerator. |
    | spin\_off\_ert | float | Spin-off dominator. |
    | spin\_off\_ratio | float | Spin-off ratio. |
    | forward\_adj\_factorA | float | Forward adjustment factor A. |
    | forward\_adj\_factorB | float | Forward adjustment factor B. |
    | backward\_adj\_factorA | float | Backward adjustment factor A. |
    | backward\_adj\_factorB | float | Backward adjustment factor B. |

    Price after forward adjustment = price before forward adjustment \* Forward adjustment factor A + Forward adjustment factor B

    Price after backward adjustment = price before backward adjustment \* Backward adjustment factor A + Backward adjustment factor B
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_rehab("HK.00700")
if ret == RET_OK:
    print(data)
    print(data['ex_div_date'][0]) # Take the first ex-dividend date
    print(data['ex_div_date'].values.tolist()) # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
    ex_div_date  split_ratio  per_cash_div  per_share_div_ratio  per_share_trans_ratio  allotment_ratio  allotment_price  stk_spo_ratio  stk_spo_price  spin_off_base     spin_off_ert     spin_off_ratio    forward_adj_factorA  forward_adj_factorB  backward_adj_factorA  backward_adj_factorB
0   2005-04-19          NaN          0.07                  NaN                    NaN              NaN              NaN            NaN            NaN          NaN      NaN        NaN        1.0                -0.07                   1.0                  0.07
..         ...          ...           ...                  ...                    ...              ...              ...            ...            ...                  ...                  ...                   ...                   ...
15  2019-05-17          NaN          1.00                  NaN                    NaN              NaN              NaN            NaN            NaN         NaN        NaN           NaN         1.0                -1.00                   1.0                  1.00

[16 rows x 16 columns]
2005-04-19
['2005-04-19', '2006-05-15', '2007-05-09', '2008-05-06', '2009-05-06', '2010-05-05', '2011-05-03', '2012-05-18', '2013-05-20', '2014-05-15', '2014-05-16', '2015-05-15', '2016-05-20', '2017-05-19', '2018-05-18', '2019-05-17']

```


## Qot\_RequestRehab.proto


- **Description**

Get the stock adjustment factor

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For adjustment struct, refer to [Rehab](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7728)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint RequestRehab(QotRequestRehab.Request req);`

`virtual void OnReply_RequestRehab(FTAPI_Conn client, uint nSerialNo, QotRequestRehab.Response rsp);`

- **Description**

Get the stock adjustment factor

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For adjustment struct, refer to [Rehab](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7728)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int requestRehab(QotRequestRehab.Request req);`

`void onReply_RequestRehab(FTAPI_Conn client, int nSerialNo, QotRequestRehab.Response rsp);`

- **Description**

Get the stock adjustment factor

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For adjustment struct, refer to [Rehab](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7728)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t RequestRehab(const Qot_RequestRehab::Request &stReq);`

`virtual void OnReply_RequestRehab(Futu::u32_t nSerialNo, const Qot_RequestRehab::Response &stRsp) = 0;`

- **Description**

Get the stock adjustment factor

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For adjustment struct, refer to [Rehab](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7728)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`RequestRehab(req);`

- **Description**

Get the stock adjustment factor

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For adjustment struct, refer to [Rehab](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7728)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 60 requests per 30 seconds

`get_rehab(code)`

- **Description**

Get the stock adjustment factor

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Stock code. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, data for adjustment is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Data for adjustment format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | ex\_div\_date | str | Ex-dividend date. |
    | split\_base | float | Split numerator.<br><br>split\_ratio= split numerator / split denominator |
    | split\_ert | float | Split dominator. |
    | join\_base | float | Joint numerator.<br><br>split\_ratio= joint numerator / joint denominator |
    | join\_ert | float | Joint dominator. |
    | split\_ratio | float | Split ratio. <br><br>\- When 5 shares are joined into 1 share, the joint numerator = 5, the joint denominator = 1, split\_ratio = joint numerator / joint denominator= 5/1.<br>\- When 1 share is split into 5 shares, the split numerator =1, the split denominator =5, split\_ratio= split numerator /split denominator =1/5. |
    | per\_cash\_div | float | Dividend per share. |
    | bounce\_base | float | Bounce numerator.<br><br>per\_share\_div\_ratio= bounce numerator / bounce denominator |
    | bounce\_ert | float | Bounce dominator. |
    | per\_share\_div\_ratio | float | Bounce ratio. <br><br>\- When the company has bonus shares and 1 share gives 5 shares, the bounce numerator = 1, the bounce denominator = 5, per\_share\_div\_ratio = bounce numerator / bounce denominator = 1/5. |
    | transfer\_base | float | Conversion numerator.<br><br>per\_share\_trans\_ratio= transfer\_base / bounce denominator |
    | transfer\_ert | float | Conversion dominator. |
    | per\_share\_trans\_ratio | float | Conversion ratio. <br><br>\- When 10 share is converted into 3 shares, the conversion numerator = 10, the conversion denominator = 3, per\_share\_trans\_ratio = conversion numerator / conversion numerator = 10/3. |
    | allot\_base | float | Allotment numerator.<br><br>allotment ratio = allotment numerator / allotment denominator |
    | allot\_ert | float | Allotment dominator. |
    | allotment\_ratio | float | Allotment ratio. <br><br>\- When 5 shares are allocated to 1 share, the allotment numerator = 5, the allotment denominator = 1, allotment\_ratio = allotment numerator / allotment denominator = 5/1. |
    | allotment\_price | float | Issuance price. |
    | add\_base | float | Additional issuance numerator.<br><br>stk\_spo\_ratio = additional issuance numerator / additional issuance denominator |
    | add\_ert | float | Additional issuance dominator. |
    | stk\_spo\_ratio | float | Additional issuance ratio. <br><br>\- When 1 additional share issues 5 shares, the additional issuance numerator = 1, the additional issuance denominator = 5, stk\_spo\_ratio = additional issuance numerator / additional issuance denominator = 1/5. |
    | stk\_spo\_price | float | Additional issuance price. |
    | spin\_off\_base | float | Spin-off numerator. |
    | spin\_off\_ert | float | Spin-off dominator. |
    | spin\_off\_ratio | float | Spin-off ratio. |
    | forward\_adj\_factorA | float | Forward adjustment factor A. |
    | forward\_adj\_factorB | float | Forward adjustment factor B. |
    | backward\_adj\_factorA | float | Backward adjustment factor A. |
    | backward\_adj\_factorB | float | Backward adjustment factor B. |

    Price after forward adjustment = price before forward adjustment \* Forward adjustment factor A + Forward adjustment factor B

    Price after backward adjustment = price before backward adjustment \* Backward adjustment factor A + Backward adjustment factor B
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_rehab("HK.00700")
if ret == RET_OK:
    print(data)
    print(data['ex_div_date'][0]) # Take the first ex-dividend date
    print(data['ex_div_date'].values.tolist()) # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
    ex_div_date  split_ratio  per_cash_div  per_share_div_ratio  per_share_trans_ratio  allotment_ratio  allotment_price  stk_spo_ratio  stk_spo_price  spin_off_base      spin_off_ert     spin_off_ratio   forward_adj_factorA  forward_adj_factorB  backward_adj_factorA  backward_adj_factorB
0   2005-04-19          NaN          0.07                  NaN                    NaN              NaN              NaN            NaN            NaN          NaN       NaN       NaN        1.0                -0.07                   1.0                  0.07
..         ...          ...           ...                  ...                    ...              ...              ...            ...            ...                  ...                  ...                   ...                   ...
15  2019-05-17          NaN          1.00                  NaN                    NaN              NaN              NaN            NaN            NaN         NaN         NaN         NaN         1.0                -1.00                   1.0                  1.00

[16 rows x 16 columns]
2005-04-19
['2005-04-19', '2006-05-15', '2007-05-09', '2008-05-06', '2009-05-06', '2010-05-05', '2011-05-03', '2012-05-18', '2013-05-20', '2014-05-15', '2014-05-16', '2015-05-15', '2016-05-20', '2017-05-19', '2018-05-18', '2019-05-17']

```


## Qot\_RequestRehab.proto


- **Description**

Get the stock adjustment factor

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For adjustment struct, refer to [Rehab](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7728)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint RequestRehab(QotRequestRehab.Request req);`

`virtual void OnReply_RequestRehab(MMAPI_Conn client, uint nSerialNo, QotRequestRehab.Response rsp);`

- **Description**

Get the stock adjustment factor

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For adjustment struct, refer to [Rehab](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7728)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int requestRehab(QotRequestRehab.Request req);`

`void onReply_RequestRehab(MMAPI_Conn client, int nSerialNo, QotRequestRehab.Response rsp);`

- **Description**

Get the stock adjustment factor

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For adjustment struct, refer to [Rehab](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7728)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t RequestRehab(const Qot_RequestRehab::Request &stReq);`

`virtual void OnReply_RequestRehab(moomoo::u32_t nSerialNo, const Qot_RequestRehab::Response &stRsp) = 0;`

- **Description**

Get the stock adjustment factor

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For adjustment struct, refer to [Rehab](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7728)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`RequestRehab(req);`

- **Description**

Get the stock adjustment factor

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For adjustment struct, refer to [Rehab](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7728)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 60 requests per 30 seconds

←
[Get Historical Candlesticks](https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-history-kline.html)[Get Option Expiration Date](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-expiration-date.html)
→

## Get Real-time Time Frame Data

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-rt.html


`get_rt_data(code)`

- **Description**

Obtain real-time tick-by-tick data for a specified stock. (Require real-time data subscription.)

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Stock code. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, Time Frame data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Time Frame data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | time | str | Time. <br><br>yyyy-MM-dd HH:mm:ss <br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | is\_blank | bool | Data status. <br><br>False: normal data.<br>True: forged data. |
    | opened\_mins | int | How many minutes have passed from 0 o'clock. |
    | cur\_price | float | Current price. |
    | last\_close | float | Yesterday's close. |
    | avg\_price | float | Average price. <br><br>For options, this field is N/A. |
    | volume | float | Volume. |
    | turnover | float | Transaction amount. |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
ret_sub, err_message = quote_ctx.subscribe(['US.AAPL'], [SubType.RT_DATA], subscribe_push=False, session=Session.ALL)
# Subscribe to the Time Frame data type first. After the subscription is successful, OpenD will continue to receive pushes from the server, False means that there is no need to push to the script temporarily
if ret_sub == RET_OK:   # Successfully subscribed
    ret, data = quote_ctx.get_rt_data('US.AAPL')   # Get Time Frame data once
    if ret == RET_OK:
        print(data)
    else:
        print('error:', data)
else:
    print('subscription failed', err_message)
quote_ctx.close()   # Close the current link, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
code  name                 time  is_blank  opened_mins  cur_price  last_close   avg_price   volume     turnover
0    US.AAPL   APPLE  2025-04-06 20:01:00     False         1201     183.00      188.38  181.643916    9463  1718896.38
..      ...    ...                  ...       ...          ...        ...         ...         ...      ...          ...
586  US.AAPL   APPLE  2025-04-07 05:47:00     False          347     181.26      188.38  180.555673     661   119859.75

[587 rows x 10 columns]

```


## Qot\_GetRT.proto


- **Description**

Obtain real-time tick-by-tick data for a specified stock. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Time Frame structure, refer to [TimeShare](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3690)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetRT(QotGetRT.Request req);`

`virtual void OnReply_GetRT(FTAPI_Conn client, uint nSerialNo, QotGetRT.Response rsp);`

- **Description**

To obtain real-time Time Frame data of subscribed stocks, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Time Frame structure, refer to [TimeShare](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3690)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getRT(QotGetRT.Request req);`

`void onReply_GetRT(FTAPI_Conn client, int nSerialNo, QotGetRT.Response rsp);`

- **Description**

Obtain real-time tick-by-tick data for a specified stock. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Time Frame structure, refer to [TimeShare](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3690)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetRT(const Qot_GetRT::Request &stReq);`

`virtual void OnReply_GetRT(Futu::u32_t nSerialNo, const Qot_GetRT::Response &stRsp) = 0;`

- **Description**

Obtain real-time tick-by-tick data for a specified stock. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Time Frame structure, refer to [TimeShare](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3690)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetRT(req);`

- **Description**

Obtain real-time tick-by-tick data for a specified stock. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Time Frame structure, refer to [TimeShare](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3690)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- This API provides the function of obtaining real-time data at one time. If you need to obtain pushed data continuously, please refer to the [Real-time Time Frame Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-rt.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).

`get_rt_data(code)`

- **Description**

Obtain real-time tick-by-tick data for a specified stock. (Require real-time data subscription.)

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Stock code. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, Time Frame data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Time Frame data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | time | str | Time. <br><br>yyyy-MM-dd HH:mm:ss <br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | is\_blank | bool | Data status. <br><br>False: normal data.<br>True: forged data. |
    | opened\_mins | int | How many minutes have passed from 0 o'clock. |
    | cur\_price | float | Current price. |
    | last\_close | float | Yesterday's close. |
    | avg\_price | float | Average price. <br><br>For options, this field is N/A. |
    | volume | float | Volume. |
    | turnover | float | Transaction amount. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
ret_sub, err_message = quote_ctx.subscribe(['US.AAPL'], [SubType.RT_DATA], subscribe_push=False, session=Session.ALL)
# Subscribe to the Time Frame data type first. After the subscription is successful, OpenD will continue to receive pushes from the server, False means that there is no need to push to the script temporarily
if ret_sub == RET_OK:   # Successfully subscribed
    ret, data = quote_ctx.get_rt_data('US.AAPL')   # Get Time Frame data once
    if ret == RET_OK:
        print(data)
    else:
        print('error:', data)
else:
    print('subscription failed', err_message)
quote_ctx.close()   # Close the current link, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
code  name                 time  is_blank  opened_mins  cur_price  last_close   avg_price   volume     turnover
0    US.AAPL   APPLE  2025-04-06 20:01:00     False         1201     183.00      188.38  181.643916    9463  1718896.38
..      ...    ...                  ...       ...          ...        ...         ...         ...      ...          ...
586  US.AAPL   APPLE  2025-04-07 05:47:00     False          347     181.26      188.38  180.555673     661   119859.75

[587 rows x 10 columns]

```


## Qot\_GetRT.proto


- **Description**

Obtain real-time tick-by-tick data for a specified stock. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Time Frame structure, refer to [TimeShare](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3690)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetRT(QotGetRT.Request req);`

`virtual void OnReply_GetRT(MMAPI_Conn client, uint nSerialNo, QotGetRT.Response rsp);`

- **Description**

To obtain real-time Time Frame data of subscribed stocks, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Time Frame structure, refer to [TimeShare](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3690)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getRT(QotGetRT.Request req);`

`void onReply_GetRT(MMAPI_Conn client, int nSerialNo, QotGetRT.Response rsp);`

- **Description**

Obtain real-time tick-by-tick data for a specified stock. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Time Frame structure, refer to [TimeShare](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3690)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetRT(const Qot_GetRT::Request &stReq);`

`virtual void OnReply_GetRT(moomoo::u32_t nSerialNo, const Qot_GetRT::Response &stRsp) = 0;`

- **Description**

Obtain real-time tick-by-tick data for a specified stock. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Time Frame structure, refer to [TimeShare](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3690)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetRT(req);`

- **Description**

Obtain real-time tick-by-tick data for a specified stock. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Time Frame structure, refer to [TimeShare](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3690)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- This API provides the function of obtaining real-time data at one time. If you need to obtain pushed data continuously, please refer to the [Real-time Time Frame Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-rt.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).

←
[Get Real-time Candlestick](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-kl.html)[Get Real-time Tick-by-Tick](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ticker.html)
→

## Get Stock Basic Information

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-static-info.html


`get_stock_basicinfo(market, stock_type=SecurityType.STOCK, code_list=None)`

- **Description**

Get Stock Basic Information

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| market | [Market](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456) | Market type. |
| stock\_type | [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767) | Stock type. It does not support SecurityType.DRVT. |
| code\_list | list | Stock list. <br><br>  - The default is None, which means to get the static information of the stocks in the whole market.<br>  - If the stock list is passed in, only the information of the specified stocks will be returned. <br>  - Data type of elements in the list is str. |

Note: when both _market_ and _code\_list_ exist, _market_ is ignored and only _code\_list_ is effective.

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, stock static data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Stock static data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | lot\_size | int | Number of shares per lot, number of shares per contract for options <br><br>Index options do not have this field.<br>, contract multipliers for futures. |
    | stock\_type | [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767) | Stock type. |
    | stock\_child\_type | [WrtType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421) | Warrant type. |
    | stock\_owner | str | The code of the underlying stock to which the warrant belongs, or the code of the underlying stock of the option. |
    | option\_type | [OptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9598) | Option type. |
    | strike\_time | str | The option exercise date. <br><br>Format: yyyy-MM-dd<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | strike\_price | float | Option strike price. |
    | suspension | bool | Whether the option is suspended. <br><br>True: suspension.<br>False: not suspended. |
    | listing\_date | str | Listing time. <br><br>This field is deprecated. <br>Format: yyyy-MM-dd |
    | stock\_id | int | Stock ID. |
    | delisting | bool | Whether is delisted or not. |
    | index\_option\_type | str | Index option type. |
    | main\_contract | bool | Whether is future main contract. |
    | last\_trade\_time | str | Last trading time. <br><br>Main, current month and next month futures etc. do not have this field. |
    | exchange\_type | [ExchType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7268) | Exchange Type. |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
ret, data = quote_ctx.get_stock_basicinfo(Market.HK, SecurityType.STOCK)
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
print('******************************************')
ret, data = quote_ctx.get_stock_basicinfo(Market.HK, SecurityType.STOCK, ['HK.06998', 'HK.00700'])
if ret == RET_OK:
    print(data)
    print(data['name'][0]) # Take the first stock name
    print(data['name'].values.tolist()) # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
        code             name  lot_size stock_type stock_child_type stock_owner option_type strike_time strike_price suspension listing_date        stock_id  delisting index_option_type  main_contract last_trade_time exchange_type
0      HK.00001     CK Hutchison       500      STOCK              N/A                                              N/A        N/A   2015-03-18   4440996184065      False               N/A          False                  HK_MAINBOARD
...         ...              ...       ...        ...              ...         ...         ...         ...          ...        ...          ...             ...        ...               ...            ...             ...
2592   HK.09979     GREENTOWN MANAGEMENT HOLDINGS COMPANY LIMITED      1000      STOCK              N/A                                              N/A        N/A   2020-07-10  79203491915515      False               N/A          False                  HK_MAINBOARD

[2593 rows x 16 columns]
******************************************
        code            name  lot_size stock_type stock_child_type stock_owner option_type strike_time strike_price suspension listing_date        stock_id  delisting index_option_type  main_contract last_trade_time exchange_type
0  HK.06998     JHBP       500      STOCK              N/A                                              N/A        N/A   2020-10-07  79572859099990      False               N/A          False                  HK_MAINBOARD
1  HK.00700     Tencent       100      STOCK              N/A                                              N/A        N/A   2004-06-16  54047868453564      False               N/A          False                  HK_MAINBOARD
JHBP
['JHBP', 'Tencent']

```


## Qot\_GetStaticInfo.proto


- **Description**

Get static data

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For stock type, refer to [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetStaticInfo(QotGetStaticInfo.Request req);`

`virtual void OnReply_GetStaticInfo(FTAPI_Conn client, uint nSerialNo, QotGetStaticInfo.Response rsp);`

- **Description**

Get Stock Basic Information

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For stock type, refer to [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getStaticInfo(QotGetStaticInfo.Request req);`

`void onReply_GetStaticInfo(FTAPI_Conn client, int nSerialNo, QotGetStaticInfo.Response rsp);`

- **Description**

Get Stock Basic Information

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For stock type, refer to [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetStaticInfo(const Qot_GetStaticInfo::Request &stReq);`

`virtual void OnReply_GetStaticInfo(Futu::u32_t nSerialNo, const Qot_GetStaticInfo::Response &stRsp) = 0;`

- **Description**

Get Stock Basic Information

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For stock type, refer to [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetStaticInfo(req);`

- **Description**

Get Stock Basic Information

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For stock type, refer to [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- When input stocks are not recognized by the program (including stocks that have been delisted a long time ago and non-existent stocks), this interface still returns stock information. The "delisted" field is used to indicate that the stock does exist or not. The unified processing is: the code is displayed normally, the stock name is displayed as "unknown stock", and the other fields are default values (The integer type defaults to 0, and the string defaults to an empty string.).
- This interface is different from other market information interfaces. When other interfaces get input stocks that the program cannot recognize, they will reject the request and return the error description "unknown stock".

`get_stock_basicinfo(market, stock_type=SecurityType.STOCK, code_list=None)`

- **Description**

Get Stock Basic Information

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| market | [Market](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456) | Market type. |
| stock\_type | [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767) | Stock type. It does not support SecurityType.DRVT. |
| code\_list | list | Stock list. <br><br>  - The default is None, which means to get the static information of the stocks in the whole market.<br>  - If the stock list is passed in, only the information of the specified stocks will be returned. <br>  - Data type of elements in the list is str. |

Note: when both _market_ and _code\_list_ exist, _market_ is ignored and only _code\_list_ is effective.

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, stock static data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Stock static data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | lot\_size | int | Number of shares per lot, number of shares per contract for options <br><br>Index options do not have this field.<br>, contract multipliers for futures. |
    | stock\_type | [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767) | Stock type. |
    | stock\_child\_type | [WrtType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421) | Warrant type. |
    | stock\_owner | str | The code of the underlying stock to which the warrant belongs, or the code of the underlying stock of the option. |
    | option\_type | [OptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9598) | Option type. |
    | strike\_time | str | The option exercise date. <br><br>Format: yyyy-MM-dd<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | strike\_price | float | Option strike price. |
    | suspension | bool | Whether the option is suspended. <br><br>True: suspension.<br>False: not suspended. |
    | listing\_date | str | Listing time. <br><br>This field is deprecated. <br>Format: yyyy-MM-dd |
    | stock\_id | int | Stock ID. |
    | delisting | bool | Whether is delisted or not. |
    | index\_option\_type | str | Index option type. |
    | main\_contract | bool | Whether is future main contract. |
    | last\_trade\_time | str | Last trading time. <br><br>Main, current month and next month futures etc. do not have this field. |
    | exchange\_type | [ExchType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7268) | Exchange Type. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
ret, data = quote_ctx.get_stock_basicinfo(Market.HK, SecurityType.STOCK)
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
print('******************************************')
ret, data = quote_ctx.get_stock_basicinfo(Market.HK, SecurityType.STOCK, ['HK.06998', 'HK.00700'])
if ret == RET_OK:
    print(data)
    print(data['name'][0]) # Take the first stock name
    print(data['name'].values.tolist()) # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
        code             name  lot_size stock_type stock_child_type stock_owner option_type strike_time strike_price suspension listing_date        stock_id  delisting index_option_type  main_contract last_trade_time exchange_type
0      HK.00001     CK Hutchison       500      STOCK              N/A                                              N/A        N/A   2015-03-18   4440996184065      False               N/A          False                  HK_MAINBOARD
...         ...              ...       ...        ...              ...         ...         ...         ...          ...        ...          ...             ...        ...               ...            ...             ...
2592   HK.09979     GREENTOWN MANAGEMENT HOLDINGS COMPANY LIMITED      1000      STOCK              N/A                                              N/A        N/A   2020-07-10  79203491915515      False               N/A          False                  HK_MAINBOARD

[2593 rows x 16 columns]
******************************************
        code            name  lot_size stock_type stock_child_type stock_owner option_type strike_time strike_price suspension listing_date        stock_id  delisting index_option_type  main_contract last_trade_time exchange_type
0  HK.06998     JHBP       500      STOCK              N/A                                              N/A        N/A   2020-10-07  79572859099990      False               N/A          False                  HK_MAINBOARD
1  HK.00700     Tencent       100      STOCK              N/A                                              N/A        N/A   2004-06-16  54047868453564      False               N/A          False                  HK_MAINBOARD
JHBP
['JHBP', 'Tencent']

```


## Qot\_GetStaticInfo.proto


- **Description**

Get static data

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For stock type, refer to [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetStaticInfo(QotGetStaticInfo.Request req);`

`virtual void OnReply_GetStaticInfo(MMAPI_Conn client, uint nSerialNo, QotGetStaticInfo.Response rsp);`

- **Description**

Get Stock Basic Information

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For stock type, refer to [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getStaticInfo(QotGetStaticInfo.Request req);`

`void onReply_GetStaticInfo(MMAPI_Conn client, int nSerialNo, QotGetStaticInfo.Response rsp);`

- **Description**

Get Stock Basic Information

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For stock type, refer to [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetStaticInfo(const Qot_GetStaticInfo::Request &stReq);`

`virtual void OnReply_GetStaticInfo(moomoo::u32_t nSerialNo, const Qot_GetStaticInfo::Response &stRsp) = 0;`

- **Description**

Get Stock Basic Information

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For stock type, refer to [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetStaticInfo(req);`

- **Description**

Get Stock Basic Information

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market type, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For stock type, refer to [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767)

- **Return**

> - For stock static information structure, refer to [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- When input stocks are not recognized by the program (including stocks that have been delisted a long time ago and non-existent stocks), this interface still returns stock information. The "delisted" field is used to indicate that the stock does exist or not. The unified processing is: the code is displayed normally, the stock name is displayed as "unknown stock", and the other fields are default values (The integer type defaults to 0, and the string defaults to an empty string.).
- This interface is different from other market information interfaces. When other interfaces get input stocks that the program cannot recognize, they will reject the request and return the error description "unknown stock".

←
[Get Plate List](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-list.html)[Get IPO Information](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ipo-list.html)
→

## Filter Stocks by Condition

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-stock-filter.html


`get_stock_filter(market, filter_list, plate_code=None, begin=0, num=200)`

- **Description**

Filter stocks by condition

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| market | [Market](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456) | Market identifier. <br><br>Does not distinguish between Shanghai and Shenzhen market, either of Shanghai or Shenzhen market will return the Shanghai and Shenzhen markets. |
| filter\_list | list | The list of filter conditions. <br><br>Data type of elements in the list is _SimpleFilter_, _AccumulateFilter_ or _FinancialFilter_, refer to the following tables. |
| plate\_code | str | Plate code. |
| begin | int | Data starting point. |
| num | int | The number of requested data. |

  - The relevant parameters of the _SimpleFilter_ object are as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | stock\_field | [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377) | Simple filter properties. |
    | filter\_min | float | The lower limit of the interval (closed interval). <br><br>Default by -∞. |
    | filter\_max | float | The upper limit of the interval (closed interval). <br><br>Default by +∞. |
    | is\_no\_filter | bool | Whether the field does not require filtering. <br><br>True: no filtering. <br>False: filtering. No filtering by default. |
    | sort | [SortDir](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9029) | Sort direction. <br><br>No sorting by default. |

  - The relevant parameters of the _AccumulateFilter_ object are as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | stock\_field | [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316) | Cumulative filter properties. |
    | filter\_min | float | The lower limit of the interval (closed interval). <br><br>Default by -∞. |
    | filter\_max | float | The upper limit of the interval (closed interval). <br><br>Default by +∞. |
    | is\_no\_filter | bool | Whether the field does not require filtering. <br><br>True: no filtering. <br>False: filtering. No filtering by default. |
    | sort | [SortDir](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9029) | Sort direction. <br><br>No sorting by default. |
    | days | int | Accumulative days of filtering data. |

  - The relevant parameters of the _FinancialFilter_ object are as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | stock\_field | [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317) | Financial filter properties. |
    | filter\_min | float | The lower limit of the interval (closed interval). <br><br>Default by -∞. |
    | filter\_max | float | The upper limit of the interval (closed interval). <br><br>Default by +∞. |
    | is\_no\_filter | bool | Whether the field does not require filtering. <br><br>True: no filtering. <br>False: filtering. No filtering by default. |
    | sort | [SortDir](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9029) | Sort direction. <br><br>No sorting by default. |
    | quarter | [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409) | Accumulation time of financial report. |

  - The relevant parameters of the _CustomIndicatorFilter_ object are as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | stock\_field1 | [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936) | Custom indicator filter properties. |
    | stock\_field1\_para | list | Custom indicator parameter. <br><br>Pass parameters according to the indicator type:<br>1\. MA：\[Average moving period\] <br>2.EMA：\[Exponential moving average period\] <br>3.RSI：\[RSI period\] <br>4.MACD：\[Fast average, Slow average, DIF value\] <br>5.BOLL：\[Average period, Offset value\] <br>6.KDJ：\[RSV period, K value period, D value period\] |
    | relative\_position | [RelativePosition](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9084) | Relative position. |
    | stock\_field2 | [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936) | Custom indicator filter properties. |
    | stock\_field2\_para | list | Custom indicator parameter. <br><br>Pass parameters according to the indicator type:<br>1\. MA：\[Average moving period\] <br>2.EMA：\[Exponential moving average period\] <br>3.RSI：\[RSI period\] <br>4.MACD：\[Fast average, Slow average, DIF value\] <br>5.BOLL：\[Average period, Offset value\] <br>6.KDJ：\[RSV period, K value period, D value period\] |
    | value | float | Custom value. <br><br>When stock\_field2 selects 'VALUE' in [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936), value is a mandatory parameter |
    | ktype | [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66) | K line type KLType (only supports K\_60M, K\_DAY, K\_WEEK, K\_MON four time periods). |
    | consecutive\_period | int | Filters data whose consecutive periods are all eligible. <br><br>Fill in the range \[1,12\]. |
    | is\_no\_filter | bool | Whether the field does not require filtering. True: no filtering, False: filtering. No filtering by default. |

  - The relevant parameters of the _PatternFilter_ object are as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | stock\_field | [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6605) | Pattern filter properties. |
    | ktype | [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66) | K line type KLType (only supports K\_60M, K\_DAY, K\_WEEK, K\_MON four time periods). |
    | consecutive\_period | int | Filters data whose consecutive periods are all eligible. <br><br>Fill in the range \[1,12\]. |
    | is\_no\_filter | bool | Whether the field does not require filtering. True: no filtering, False: filtering. No filtering by default. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, stock selection data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Stock selection data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | last\_page | bool | Is it the last page. |
    | all\_count | int | Total number of lists. |
    | stock\_list | list | Stock selection data. <br><br>Data type of elements in the list is _FilterStockData_. |

    - _FilterStockData_'s data format as follows:

      | Field | Type | Description |
      | --- | --- | --- |
      | stock\_code | str | Stock code. |
      | stock\_name | str | Stock name. |
      | cur\_price | float | Current price. |
      | cur\_price\_to\_highest\_52weeks\_ratio | float | (Current price - high in 52 weeks)/high in 52 weeks. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | cur\_price\_to\_lowest\_52weeks\_ratio | float | (Current price - low in 52 weeks)/low in 52 weeks. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | high\_price\_to\_highest\_52weeks\_ratio | float | (Today's high - high in 52 weeks)/high in 52 weeks. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | low\_price\_to\_lowest\_52weeks\_ratio | float | (Today's low - low in 52 weeks)/low in 52 weeks. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | volume\_ratio | float | Volume ratio. |
      | bid\_ask\_ratio | float | The committee. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | lot\_price | float | Price per lot. |
      | market\_val | float | Market value. |
      | pe\_annual | float | P/E ratio. |
      | pe\_ttm | float | P/E ratio TTM. |
      | pb\_rate | float | P/B ratio. |
      | change\_rate\_5min | float | Price change in five minutes. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | change\_rate\_begin\_year | float | Price change of this year. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | ps\_ttm | float | P/S rate TTM. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | pcf\_ttm | float | P/CF rate TTM. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | total\_share | float | Total number of shares. <br><br>unit: share |
      | float\_share | float | Shares outstanding. <br><br>unit: share |
      | float\_market\_val | float | Market capitalization. <br><br>unit: yuan |
      | change\_rate | float | Price change rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | amplitude | float | Amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | volume | float | Average daily volume. |
      | turnover | float | Average daily turnover. |
      | turnover\_rate | float | Turnover rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | net\_profit | float | Net profit. |
      | net\_profix\_growth | float | Net profit growth rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | sum\_of\_business | float | Operating income. |
      | sum\_of\_business\_growth | float | Year-on-year growth rate of operating income. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | net\_profit\_rate | float | Net interest rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | gross\_profit\_rate | float | Gross profit rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | debt\_asset\_rate | float | Asset-liability ratio. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | return\_on\_equity\_rate | float | Return on net assets. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | roic | float | Return on invested capital. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | roa\_ttm | float | Return on Assets TTM. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | ebit\_ttm | float | Earnings before interest and tax TTM. <br><br>unit: yuan. <br>Only applicable to annual reports. |
      | ebitda | float | Earnings before interest and tax, depreciation and amortization. <br><br>unit: yuan |
      | operating\_margin\_ttm | float | Operating profit margin TTM. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | ebit\_margin | float | EBIT profit margin. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | ebitda\_margin | float | EBITDA profit margin. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | financial\_cost\_rate | float | Financial cost rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | operating\_profit\_ttm | float | Operating profit TTM. <br><br>unit: yuan. <br>Only applicable to annual reports. |
      | shareholder\_net\_profit\_ttm | float | Net profit attributable to the parent company. <br><br>unit: yuan.<br>Only applicable to annual reports. |
      | net\_profit\_cash\_cover\_ttm | float | Proportion of cash income in profit. <br><br>This field is in percentage form, so 20 is equivalent to 20%.<br>Only applicable to annual reports. |
      | current\_ratio | float | Current ratio. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | quick\_ratio | float | Quick ratio. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | current\_asset\_ratio | float | Current asset ratio. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | current\_debt\_ratio | float | Current debt ratio. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | equity\_multiplier | float | Equity multiplier. |
      | property\_ratio | float | Property ratio. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | cash\_and\_cash\_equivalents | float | Cash and cash equivalents. <br><br>unit: yuan |
      | total\_asset\_turnover | float | Total asset turnover rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | fixed\_asset\_turnover | float | Fixed asset turnover rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | inventory\_turnover | float | Inventory turnover rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | operating\_cash\_flow\_ttm | float | Operating cash flow TTM. <br><br>unit: yuan. Only applicable to annual reports. |
      | accounts\_receivable | float | Net accounts receivable. <br><br>unit: yuan |
      | ebit\_growth\_rate | float | EBIT year-on-year growth rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | operating\_profit\_growth\_rate | float | Operating profit year-on-year growth rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | total\_assets\_growth\_rate | float | Year-on-year growth rate of total assets. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | profit\_to\_shareholders\_growth\_rate | float | Year-on-year growth rate of net profit attributable to the parent. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | profit\_before\_tax\_growth\_rate | float | Year-on-year growth rate of total profit. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | eps\_growth\_rate | float | EPS year-on-year growth rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | roe\_growth\_rate | float | ROE year-on-year growth rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | roic\_growth\_rate | float | ROIC year-on-year growth rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | nocf\_growth\_rate | float | Year-on-year growth rate of operating cash flow. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | nocf\_per\_share\_growth\_rate | float | Year-on-year growth rate of operating cash flow per share. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | operating\_revenue\_cash\_cover | float | Operating cash income ratio. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | operating\_profit\_to\_total\_profit | float | operating profit percentage. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | basic\_eps | float | Basic earnings per share. <br><br>unit: yuan |
      | diluted\_eps | float | Diluted earnings per share. <br><br>unit: yuan |
      | nocf\_per\_share | float | Net operating cash flow per share. <br><br>unit: yuan |
      | price | float | latest price |
      | ma | float | Simple moving average <br><br>Returns values based on the MA parameter. |
      | ma5 | float | 5-day simple moving average |
      | ma10 | float | 10-day simple moving average |
      | ma20 | float | 20-day simple moving average |
      | ma30 | float | 30-day simple moving average |
      | ma60 | float | 60-day simple moving average |
      | ma120 | float | 120-day simple moving average |
      | ma250 | float | 250-day simple moving average |
      | rsi | float | RSI <br><br>Returns values based on the RSI parameter. The default parameter for RSI is 12. |
      | ema | float | exponential moving average <br><br>Returns values based on the EMA parameter. |
      | ema5 | float | 5-day exponential moving average |
      | ema10 | float | 10-day exponential moving average |
      | ema20 | float | 20-day exponential moving average |
      | ema30 | float | 30-day exponential moving average |
      | ema60 | float | 60-day exponential moving average |
      | ema120 | float | 120日-day exponential moving average |
      | ema250 | float | 250日-day exponential moving average |
      | kdj\_k | float | K value of KDJ indicator <br><br>Returns values based on the KDJ parameter. The default parameter for KDJ is \[9,3,3\]. |
      | kdj\_d | float | D value of KDJ indicator <br><br>Returns values based on the KDJ parameter. The default parameter for KDJ is \[9,3,3\]. |
      | kdj\_j | float | J value of KDJ indicator <br><br>Returns values based on the KDJ parameter. The default parameter for KDJ is \[9,3,3\]. |
      | macd\_diff | float | DIFF value of MACD indicator <br><br>Returns values based on the MACD parameter. The default parameter for MACD is \[12,26,9\]. |
      | macd\_dea | float | DEA value of MACD indicator<br><br>Returns values based on the MACD parameter. The default parameter for MACD is \[12,26,9\]. |
      | macd | float | MACD value of MACD indicator <br><br>Returns values based on the MACD parameter. The default parameter for MACD is \[12,26,9\]. |
      | boll\_upper | float | UPPER value of BOLL indicator <br><br>Returns values based on the BOLL parameter. The default parameter for BOLL is \[20.2\]. |
      | boll\_middler | float | MIDDLER value of BOLL indicator <br><br>Returns values based on the BOLL parameter. The default parameter for BOLL is \[20.2\]. |
      | boll\_lower | float | LOWER value of BOLL indicator <br><br>Returns values based on the BOLL parameter. The default parameter for BOLL is \[20.2\]. |
- **Example**

```python
from futu import *
import time

quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
simple_filter = SimpleFilter()
simple_filter.filter_min = 2
simple_filter.filter_max = 1000
simple_filter.stock_field = StockField.CUR_PRICE
simple_filter.is_no_filter = False
# simple_filter.sort = SortDir.ASCEND

financial_filter = FinancialFilter()
financial_filter.filter_min = 0.5
financial_filter.filter_max = 50
financial_filter.stock_field = StockField.CURRENT_RATIO
financial_filter.is_no_filter = False
financial_filter.sort = SortDir.ASCEND
financial_filter.quarter = FinancialQuarter.ANNUAL

custom_filter = CustomIndicatorFilter()
custom_filter.ktype = KLType.K_DAY
custom_filter.stock_field1 = StockField.KDJ_K
custom_filter.stock_field1_para = [10,4,4]
custom_filter.stock_field2 = StockField.KDJ_K
custom_filter.stock_field2_para = [9,3,3]
custom_filter.relative_position = RelativePosition.MORE
custom_filter.is_no_filter = False

nBegin = 0
last_page = False
ret_list = list()
while not last_page:
    nBegin += len(ret_list)
    ret, ls = quote_ctx.get_stock_filter(market=Market.HK, filter_list=[simple_filter, financial_filter, custom_filter], begin=nBegin)  # filter with simple, financial and indicator filter for HK market
    if ret == RET_OK:
        last_page, all_count, ret_list = ls
        print('all count = ', all_count)
        for item in ret_list:
            print(item.stock_code)  # Get the stock code
            print(item.stock_name)  # Get the stock name
            print(item[simple_filter])   # Get the value of the variable corresponding to simple_filter
            print(item[financial_filter])   # Get the value of the variable corresponding to financial_filter
            print(item[custom_filter])  # Get the value of custom_filter
    else:
        print('error: ', ls)
        break
    time.sleep(3)  # Sleep for 3 seconds to avoid trigger frequency limitation

quote_ctx.close()  # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
39 39 [ stock_code:HK.08103  stock_name:hmvod Limited  cur_price:2.69  current_ratio(annual):4.413 ,  stock_code:HK.00376  stock_name:Yunfeng Financial  cur_price:2.96  current_ratio(annual):12.585 ,  stock_code:HK.09995  stock_name:RemeGen Co., Ltd.  cur_price:92.85  current_ratio(annual):16.054 ,  stock_code:HK.80737  stock_name:Shenzhen Investment Holdings Bay Area Development  cur_price:2.8  current_ratio(annual):17.249 ,  stock_code:HK.00737  stock_name:Shenzhen Investment Holdings Bay Area Development  cur_price:3.25  current_ratio(annual):17.249 ,  stock_code:HK.03939  stock_name:Wanguo International Mining  cur_price:2.22  current_ratio(annual):17.323 ,  stock_code:HK.01055  stock_name:China Southern Airlines  cur_price:5.17  current_ratio(annual):17.529 ,  stock_code:HK.02638  stock_name:HK Electric Investments and HK Electric Investments  cur_price:7.68  current_ratio(annual):21.255 ,  stock_code:HK.00670  stock_name:China Eastern Airlines Corporation  cur_price:3.53  current_ratio(annual):25.194 ,  stock_code:HK.01952  stock_name:Everest Medicines  cur_price:69.5  current_ratio(annual):26.029 ,  stock_code:HK.00089  stock_name:Tai Sang Land Development  cur_price:4.22  current_ratio(annual):26.914 ,  stock_code:HK.00728  stock_name:China Telecom Corporation  cur_price:2.84  current_ratio(annual):27.651 ,  stock_code:HK.01372  stock_name:Bisu Technology Group  cur_price:5.63  current_ratio(annual):28.303 ,  stock_code:HK.00753  stock_name:Air China Limited  cur_price:6.37  current_ratio(annual):31.828 ,  stock_code:HK.01997  stock_name:Wharf Real Estate Investment  cur_price:44.15  current_ratio(annual):33.239 ,  stock_code:HK.02158  stock_name:Yidu Tech Inc.  cur_price:38.95  current_ratio(annual):34.046 ,  stock_code:HK.02588  stock_name:BOC Aviation Ltd.  cur_price:76.85  current_ratio(annual):34.531 ,  stock_code:HK.01330  stock_name:Dynagreen Environmental Protection Group  cur_price:3.36  current_ratio(annual):35.028 ,  stock_code:HK.01525  stock_name:SHANGHAI GENCH EDUCATION GROUP LIMITED  cur_price:6.28  current_ratio(annual):36.989 ,  stock_code:HK.09908  stock_name:JiaXing Gas Group  cur_price:10.02  current_ratio(annual):37.848 ,  stock_code:HK.06078  stock_name:Hygeia Healthcare Holdings  cur_price:49.2  current_ratio(annual):39.0 ,  stock_code:HK.01071  stock_name:Huadian Power International Corporation  cur_price:2.16  current_ratio(annual):39.507 ,  stock_code:HK.00357  stock_name:Hainan Meilan International Airport  cur_price:33.65  current_ratio(annual):39.514 ,  stock_code:HK.00762  stock_name:China Unicom  cur_price:5.21  current_ratio(annual):40.74 ,  stock_code:HK.01787  stock_name:Shandong Gold Mining  cur_price:15.62  current_ratio(annual):41.604 ,  stock_code:HK.00902  stock_name:Huaneng Power International,Inc.  cur_price:2.67  current_ratio(annual):42.919 ,  stock_code:HK.00934  stock_name:Sinopec Kantons  cur_price:2.98  current_ratio(annual):43.361 ,  stock_code:HK.01117  stock_name:China Modern Dairy  cur_price:2.29  current_ratio(annual):45.037 ,  stock_code:HK.00177  stock_name:Jiangsu Expressway  cur_price:8.78  current_ratio(annual):45.93 ,  stock_code:HK.01379  stock_name:Wenling Zhejiang Measuring and Cutting Tools Trading Centre Company Limited*  cur_price:5.71  current_ratio(annual):46.774 ,  stock_code:HK.01876  stock_name:Budweiser Brewing Company APAC Limited  cur_price:22.45  current_ratio(annual):46.917 ,  stock_code:HK.01907  stock_name:China Risun  cur_price:4.38  current_ratio(annual):47.129 ,  stock_code:HK.02160  stock_name:MicroPort CardioFlow Medtech Corporation  cur_price:15.52  current_ratio(annual):47.384 ,  stock_code:HK.00293  stock_name:Cathay Pacific Airways  cur_price:7.13  current_ratio(annual):47.983 ,  stock_code:HK.00694  stock_name:Beijing Capital International Airport  cur_price:6.29  current_ratio(annual):47.985 ,  stock_code:HK.09922  stock_name:Jiumaojiu International Holdings Limited  cur_price:26.8  current_ratio(annual):48.278 ,  stock_code:HK.01083  stock_name:Towngas China  cur_price:3.38  current_ratio(annual):49.2 ,  stock_code:HK.00291  stock_name:China Resources Beer  cur_price:58.2  current_ratio(annual):49.229 ,  stock_code:HK.00306  stock_name:Kwoon Chung Bus  cur_price:2.29  current_ratio(annual):49.769 ]
HK.08103
hmvod Limited
2.69
2.69
4.413
...
HK.00306
Kwoon Chung Bus
2.29
2.29
49.769

```


## Qot\_StockFilter.proto


- **Description**

Filter stocks by condition

- **Parameters**

// Simple attribute filtering
message BaseFilter
{
    required int32 fieldName = 1; //Simple filter properties
    optional double filterMin = 2; //The lower limit of the interval (closed-interval). Default is -∞ if not passed
    optional double filterMax = 3; //The upper limit of the interval (closed-interval). Default is +∞ if not passed
    optional bool isNoFilter = 4; //Whether the field does not require filtering. True: no filtering, False: filtering. No filtering by default, if not passed
    optional int32 sortDir = 5; //Sort direction. No sorting by default, if not passed
}

// Cumulative attribute filtering
message AccumulateFilter
{
    required int32 fieldName = 1; //Cumulative filter properties
    optional double filterMin = 2; //The lower limit of the interval (closed-interval). Default is -∞ if not passed
    optional double filterMax = 3; //The upper limit of the interval (closed-interval). Default is +∞ if not passed
    optional bool isNoFilter = 4; //Whether the field does not require filtering. True: no filtering, False: filtering. No filtering by default, if not passed
    optional int32 sortDir = 5; //Sort direction. No sorting by default, if not passed
    required int32 days = 6; //Recent days, cumulative time
}

// Financial attribute filtering
message FinancialFilter
{
    required int32 fieldName = 1; //Financial filter properties
    optional double filterMin = 2; //The lower limit of the interval (closed-interval). Default is -∞ if not passed
    optional double filterMax = 3; //The upper limit of the interval (closed-interval). Default is +∞ if not passed
    optional bool isNoFilter = 4; //Whether the field does not require filtering. True: no filtering, False: filtering. No filtering by default, if not passed
    optional int32 sortDir = 5; //Sort direction. No sorting by default, if not passed
    required int32 quarter = 6; //Financial report accumulation time
}

// Pattern attribute filtering
message PatternFilter
{
	required int32 fieldName = 1; // Pattern filter properties
	required int32 klType = 2; // K line type, only supports K_60M, K_DAY, K_WEEK, K_MON four time periods
	optional bool isNoFilter = 3; // Whether the field does not require filtering. True: no filtering, False: filtering. No filtering by default, if not passed
    optional int32 consecutivePeriod = 4; // Filters data whose consecutive periods are all eligible. Fill in the range [1,12]
}

// Custom indicator attribute filtering
message CustomIndicatorFilter
{
	required int32 firstFieldName = 1; // Custom indicator filter properties
	required int32 secondFieldName = 2; // Custom indicator filter properties
	required int32 relativePosition = 3; // Relative position
	optional double fieldValue = 4; // Custom value
	required int32 klType = 5; // K line type, only supports K_60M, K_DAY, K_WEEK, K_MON four time periods
	optional bool isNoFilter = 6; // Whether the field does not require filtering. True: no filtering, False: filtering. No filtering by default, if not passed
    repeated int32 firstFieldParaList = 7; // Custom indicator parameter. Pass parameters according to the indicator type: 1. MA：[Average moving period] 2.EMA：[Exponential moving average period] 3.RSI：[RSI period] 4.MACD：[Fast average, Slow average, DIF value] 5.BOLL：[Average period, Offset value] 6.KDJ：[RSV period, K value period, D value period]
	repeated int32 secondFieldParaList = 8; // Custom indicator parameter. Pass parameters according to the indicator type: 1. MA：[Average moving period] 2.EMA：[Exponential moving average period] 3.RSI：[RSI period] 4.MACD：[Fast average, Slow average, DIF value] 5.BOLL：[Average period, Offset value] 6.KDJ：[RSV period, K value period, D value period]
	optional int32 consecutivePeriod = 9; // Filters data whose consecutive periods are all eligible. Fill in the range [1,12]
}

message C2S
{
    required int32 begin = 1; //Data starting point
    required int32 num = 2; //The number of requested data, the maximum is 200
    required int32 market= 3; //Qot_Common::QotMarket. Stock market. does not distinguish between Shanghai and Shenzhen market, either of Shanghai or Shenzhen market will represent the A-share market
    // The following are optional fields of filter conditions, leave it blank means no filter
    optional Qot_Common.Security plate = 4; //Plate
    repeated BaseFilter baseFilterList = 5; //Simple filter properties
    repeated AccumulateFilter accumulateFilterList = 6; //Cumulative filter properties The maximum number of the same filter condition for cumulative filter properties is 10
    repeated FinancialFilter financialFilterList = 7; //Financial filter properties
	repeated PatternFilter patternFilterList = 8; // Indicator pattern filter properties
	repeated CustomIndicatorFilter customIndicatorFilterList = 9; // Custom indicator filter properties
}

message Request
{
	required C2S c2s = 1;
}

// Simple attribute data
message BaseData
{
    required int32 fieldName = 1; //Simple filter properties
    required double value = 2;
}

// Cumulative attribute data
message AccumulateData
{
    required int32 fieldName = 1; //Cumulative filter properties
    required double value = 2;
    required int32 days = 3; //Recent days, cumulative time
}

// Financial attribute data
message FinancialData
{
    required int32 fieldName = 1; //Financial filter properties
    required double value = 2;
    required int32 quarter = 3; //Financial report accumulation time
}

// Custom indicator data
message CustomIndicatorData
{
	required int32 fieldName = 1; // CustomIndicatorField. Custom indicator filter properties
	required double value = 2;
	required int32 klType = 3; // Qot_Common.KLType. K line type, only supports K_60M, K_DAY, K_WEEK, K_MON four time periods
    repeated int32 fieldParaList = 4; // Custom indicator parameter. Pass parameters according to the indicator type: 1. MA：[Average moving period] 2.EMA：[Exponential moving average period] 3.RSI：[RSI period] 4.MACD：[Fast average, Slow average, DIF value] 5.BOLL：[Average period, Offset value] 6.KDJ：[RSV period, K value period, D value period]
}

// returned stock data
message StockData
{
    required Qot_Common.Security security = 1; //Security
    required string name = 2; //Security name
    repeated BaseData baseDataList = 3; //Filtered data of simple filter property
    repeated AccumulateData accumulateDataList = 4; //Filtered data of cumulative filter property
    repeated FinancialData financialDataList = 5; //Filtered data of financial filter property
    repeated CustomIndicatorData customIndicatorDataList = 6; // Filtered data of custom indicator filter property
    // The value of firstFieldName and secondFieldName field in CustomIndicatorFilter will be returned seperately
}

message S2C
{
    required bool lastPage = 1; //Is it the last page, false: It is not the last page, and some remaining warrant record has not been returned; true: It is the last page
    required int32 allCount = 2; //The number of all data requested by this condition
    repeated StockData dataList = 3; //Returned stock data list
}

message Response
{
	required int32 retType = 1 [default = -400]; // RetType, returned value
	optional string retMsg = 2;
	optional int32 errCode = 3;
	optional S2C s2c = 4;
}

```

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For simple attribute filter conditions, refer to [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377)
> - For cumulative filter properties, refer to [AccumulateField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316)
> - For financial filter properties, refer to [FinancialField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317)
> - For financial report time period, refer to [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409)
> - For custom indicator filter properties, refer to [CustomIndicatorField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936)
> - K line type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint StockFilter(QotStockFilter.Request req);`

`virtual void OnReply_StockFilter(FTAPI_Conn client, uint nSerialNo, QotStockFilter.Response rsp);`

- **Description**

Filter stocks by condition

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market types, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For simple attribute filter conditions, refer to [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377)
> - For cumulative filter properties, refer to [AccumulateField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316)
> - For financial filter properties, refer to [FinancialField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317)
> - For custom indicator filter properties, refer to [CustomIndicatorField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936)
> - For pattern filter properties, refer to [PatternField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6605)
> - For financial report time period, refer to [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409)
> - For sorting direction, refer to [SortDir](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9029)
> - Relative position, refer to [RelativePosition](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9084)
> - K line type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For simple attribute filter conditions, refer to [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377)
> - For cumulative filter properties, refer to [AccumulateField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316)
> - For financial filter properties, refer to [FinancialField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317)
> - For financial report time period, refer to [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409)
> - For custom indicator filter properties, refer to [CustomIndicatorField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936)
> - K line type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int stockFilter(QotStockFilter.Request req);`

`void onReply_StockFilter(FTAPI_Conn client, int nSerialNo, QotStockFilter.Response rsp);`

- **Description**

Filter stocks by condition

- **Parameter**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market types, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For simple attribute filter conditions, refer to [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377)
> - For cumulative filter properties, refer to [AccumulateField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316)
> - For financial filter properties, refer to [FinancialField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317)
> - For custom indicator filter properties, refer to [CustomIndicatorField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936)
> - For pattern filter properties, refer to [PatternField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6605)
> - For financial report time period, refer to [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409)
> - For sorting direction, refer to [SortDir](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9029)
> - Relative position, refer to [RelativePosition](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9084)
> - K line type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For simple attribute filter conditions, refer to [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377)
> - For cumulative filter properties, refer to [AccumulateField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316)
> - For financial filter properties, refer to [FinancialField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317)
> - For financial report time period, refer to [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409)
> - For custom indicator filter properties, refer to [CustomIndicatorField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936)
> - K line type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t StockFilter(const Qot_StockFilter::Request &stReq);`

`virtual void OnReply_StockFilter(Futu::u32_t nSerialNo, const Qot_StockFilter::Response &stRsp) = 0;`

- **Description**

Filter stocks by condition

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market types, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For simple attribute filter conditions, refer to [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377)
> - For cumulative filter properties, refer to [AccumulateField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316)
> - For financial filter properties, refer to [FinancialField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317)
> - For custom indicator filter properties, refer to [CustomIndicatorField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936)
> - For pattern filter properties, refer to [PatternField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6605)
> - For financial report time period, refer to [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409)
> - For sorting direction, refer to [SortDir](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9029)
> - Relative position, refer to [RelativePosition](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9084)
> - K line type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For simple attribute filter conditions, refer to [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377)
> - For cumulative filter properties, refer to [AccumulateField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316)
> - For financial filter properties, refer to [FinancialField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317)
> - For financial report time period, refer to [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For simple attribute filter conditions, refer to [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377)
> - For cumulative filter properties, refer to [AccumulateField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316)
> - For financial filter properties, refer to [FinancialField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317)
> - For financial report time period, refer to [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409)
> - For custom indicator filter properties, refer to [CustomIndicatorField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936)
> - K line type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)

`StockFilter(req);`

- **Description**

Filter stocks by condition

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market types, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For simple attribute filter conditions, refer to [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377)
> - For cumulative filter properties, refer to [AccumulateField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316)
> - For financial filter properties, refer to [FinancialField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317)
> - For custom indicator filter properties, refer to [CustomIndicatorField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936)
> - For pattern filter properties, refer to [PatternField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6605)
> - For financial report time period, refer to [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409)
> - For sorting direction, refer to [SortDir](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9029)
> - Relative position, refer to [RelativePosition](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9084)
> - K line type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For simple attribute filter conditions, refer to [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377)
> - For cumulative filter properties, refer to [AccumulateField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316)
> - For financial filter properties, refer to [FinancialField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317)
> - For financial report time period, refer to [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409)
> - For custom indicator filter properties, refer to [CustomIndicatorField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936)
> - K line type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- Use [Get sub-plate list function](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-list.html) to get the sub-plate code, the plates supported by conditional stock selection are respectively

1. The industry plate and concept plate of HK market.
2. Industry plate of US market.
3. Shanghai and Shenzhen's industry plate, conceptual plate and geographic plate.
- Supported plate index codes

| Code | Description |
| --- | --- |
| HK.Motherboard | Main plate of HK market |
| HK.GEM | Growth Enterprise Market of HK market |
| HK.BK1911 | Main plate of H-Share |
| HK.BK1912 | Growth Enterprise Market of H-share |
| US.NYSE | New York Stock Exchange |
| US.AMEX | American Exchange |
| US.NASDAQ | NASDAQ |
| SH.3000000 | Shanghai main plate |
| SZ.3000001 | Shenzhen main plate |
| SZ.3000004 | Shenzhen Growth Enterprise Market |

Interface Limitations

- BMP authority of HK market does not support conditional stock filteration function
- A maximum of 10 requests per 30 seconds
- At most 200 filter results are returned per page
- It is recommended that the filter conditions do not exceed 250, otherwise "business processing timeout did not return" may appear
- The maximum number of the same filter condition for cumulative filter properties is 10
- If you use dynamic data such as "current price" as the sorting field, the sorting of the data may change between multiple pages
- Non-similar indicators do not support comparison, and are limited to the establishment of comparison relationships between similar indicators, and comparisons across different types of indicators will cause errors. For example: MA5 and MA10 can establish a relationship. MA5 and EMA10 cannot establish a relationship.
- The same type of filter conditions of the custom indicator attribute exceeds the upper limit of 10
- Simple attributes, financial attributes, and morphological attributes do not support repeated designation of filter conditions for the same field
- Stock filter function currently does not support irregular trading hours (i.e.pre-market, post-market and overnight). All results are based on regular trading hours data.

`get_stock_filter(market, filter_list, plate_code=None, begin=0, num=200)`

- **Description**

Filter stocks by condition

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| market | [Market](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456) | Market identifier. <br><br>Does not distinguish between Shanghai and Shenzhen market, either of Shanghai or Shenzhen market will return the Shanghai and Shenzhen markets. |
| filter\_list | list | The list of filter conditions. <br><br>Data type of elements in the list is _SimpleFilter_, _AccumulateFilter_ or _FinancialFilter_, refer to the following tables. |
| plate\_code | str | Plate code. |
| begin | int | Data starting point. |
| num | int | The number of requested data. |

  - The relevant parameters of the _SimpleFilter_ object are as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | stock\_field | [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377) | Simple filter properties. |
    | filter\_min | float | The lower limit of the interval (closed interval). <br><br>Default by -∞. |
    | filter\_max | float | The upper limit of the interval (closed interval). <br><br>Default by +∞. |
    | is\_no\_filter | bool | Whether the field does not require filtering. <br><br>True: no filtering. <br>False: filtering. No filtering by default. |
    | sort | [SortDir](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9029) | Sort direction. <br><br>No sorting by default. |

  - The relevant parameters of the _AccumulateFilter_ object are as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | stock\_field | [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316) | Cumulative filter properties. |
    | filter\_min | float | The lower limit of the interval (closed interval). <br><br>Default by -∞. |
    | filter\_max | float | The upper limit of the interval (closed interval). <br><br>Default by +∞. |
    | is\_no\_filter | bool | Whether the field does not require filtering. <br><br>True: no filtering. <br>False: filtering. No filtering by default. |
    | sort | [SortDir](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9029) | Sort direction. <br><br>No sorting by default. |
    | days | int | Accumulative days of filtering data. |

  - The relevant parameters of the _FinancialFilter_ object are as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | stock\_field | [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317) | Financial filter properties. |
    | filter\_min | float | The lower limit of the interval (closed interval). <br><br>Default by -∞. |
    | filter\_max | float | The upper limit of the interval (closed interval). <br><br>Default by +∞. |
    | is\_no\_filter | bool | Whether the field does not require filtering. <br><br>True: no filtering. <br>False: filtering. No filtering by default. |
    | sort | [SortDir](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9029) | Sort direction. <br><br>No sorting by default. |
    | quarter | [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409) | Accumulation time of financial report. |

  - The relevant parameters of the _CustomIndicatorFilter_ object are as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | stock\_field1 | [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936) | Custom indicator filter properties. |
    | stock\_field1\_para | list | Custom indicator parameter. <br><br>Pass parameters according to the indicator type:<br>1\. MA：\[Average moving period\] <br>2.EMA：\[Exponential moving average period\] <br>3.RSI：\[RSI period\] <br>4.MACD：\[Fast average, Slow average, DIF value\] <br>5.BOLL：\[Average period, Offset value\] <br>6.KDJ：\[RSV period, K value period, D value period\] |
    | relative\_position | [RelativePosition](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9084) | Relative position. |
    | stock\_field2 | [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936) | Custom indicator filter properties. |
    | stock\_field2\_para | list | Custom indicator parameter. <br><br>Pass parameters according to the indicator type:<br>1\. MA：\[Average moving period\] <br>2.EMA：\[Exponential moving average period\] <br>3.RSI：\[RSI period\] <br>4.MACD：\[Fast average, Slow average, DIF value\] <br>5.BOLL：\[Average period, Offset value\] <br>6.KDJ：\[RSV period, K value period, D value period\] |
    | value | float | Custom value. <br><br>When stock\_field2 selects 'VALUE' in [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936), value is a mandatory parameter |
    | ktype | [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66) | K line type KLType (only supports K\_60M, K\_DAY, K\_WEEK, K\_MON four time periods). |
    | consecutive\_period | int | Filters data whose consecutive periods are all eligible. <br><br>Fill in the range \[1,12\]. |
    | is\_no\_filter | bool | Whether the field does not require filtering. True: no filtering, False: filtering. No filtering by default. |

  - The relevant parameters of the _PatternFilter_ object are as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | stock\_field | [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6605) | Pattern filter properties. |
    | ktype | [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66) | K line type KLType (only supports K\_60M, K\_DAY, K\_WEEK, K\_MON four time periods). |
    | consecutive\_period | int | Filters data whose consecutive periods are all eligible. <br><br>Fill in the range \[1,12\]. |
    | is\_no\_filter | bool | Whether the field does not require filtering. True: no filtering, False: filtering. No filtering by default. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, stock selection data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Stock selection data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | last\_page | bool | Is it the last page. |
    | all\_count | int | Total number of lists. |
    | stock\_list | list | Stock selection data. <br><br>Data type of elements in the list is _FilterStockData_. |

    - _FilterStockData_'s data format as follows:

      | Field | Type | Description |
      | --- | --- | --- |
      | stock\_code | str | Stock code. |
      | stock\_name | str | Stock name. |
      | cur\_price | float | Current price. |
      | cur\_price\_to\_highest\_52weeks\_ratio | float | (Current price - high in 52 weeks)/high in 52 weeks. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | cur\_price\_to\_lowest\_52weeks\_ratio | float | (Current price - low in 52 weeks)/low in 52 weeks. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | high\_price\_to\_highest\_52weeks\_ratio | float | (Today's high - high in 52 weeks)/high in 52 weeks. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | low\_price\_to\_lowest\_52weeks\_ratio | float | (Today's low - low in 52 weeks)/low in 52 weeks. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | volume\_ratio | float | Volume ratio. |
      | bid\_ask\_ratio | float | The committee. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | lot\_price | float | Price per lot. |
      | market\_val | float | Market value. |
      | pe\_annual | float | P/E ratio. |
      | pe\_ttm | float | P/E ratio TTM. |
      | pb\_rate | float | P/B ratio. |
      | change\_rate\_5min | float | Price change in five minutes. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | change\_rate\_begin\_year | float | Price change of this year. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | ps\_ttm | float | P/S rate TTM. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | pcf\_ttm | float | P/CF rate TTM. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | total\_share | float | Total number of shares. <br><br>unit: share |
      | float\_share | float | Shares outstanding. <br><br>unit: share |
      | float\_market\_val | float | Market capitalization. <br><br>unit: yuan |
      | change\_rate | float | Price change rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | amplitude | float | Amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | volume | float | Average daily volume. |
      | turnover | float | Average daily turnover. |
      | turnover\_rate | float | Turnover rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | net\_profit | float | Net profit. |
      | net\_profix\_growth | float | Net profit growth rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | sum\_of\_business | float | Operating income. |
      | sum\_of\_business\_growth | float | Year-on-year growth rate of operating income. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | net\_profit\_rate | float | Net interest rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | gross\_profit\_rate | float | Gross profit rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | debt\_asset\_rate | float | Asset-liability ratio. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | return\_on\_equity\_rate | float | Return on net assets. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | roic | float | Return on invested capital. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | roa\_ttm | float | Return on Assets TTM. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | ebit\_ttm | float | Earnings before interest and tax TTM. <br><br>unit: yuan. <br>Only applicable to annual reports. |
      | ebitda | float | Earnings before interest and tax, depreciation and amortization. <br><br>unit: yuan |
      | operating\_margin\_ttm | float | Operating profit margin TTM. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | ebit\_margin | float | EBIT profit margin. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | ebitda\_margin | float | EBITDA profit margin. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | financial\_cost\_rate | float | Financial cost rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | operating\_profit\_ttm | float | Operating profit TTM. <br><br>unit: yuan. <br>Only applicable to annual reports. |
      | shareholder\_net\_profit\_ttm | float | Net profit attributable to the parent company. <br><br>unit: yuan.<br>Only applicable to annual reports. |
      | net\_profit\_cash\_cover\_ttm | float | Proportion of cash income in profit. <br><br>This field is in percentage form, so 20 is equivalent to 20%.<br>Only applicable to annual reports. |
      | current\_ratio | float | Current ratio. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | quick\_ratio | float | Quick ratio. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | current\_asset\_ratio | float | Current asset ratio. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | current\_debt\_ratio | float | Current debt ratio. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | equity\_multiplier | float | Equity multiplier. |
      | property\_ratio | float | Property ratio. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | cash\_and\_cash\_equivalents | float | Cash and cash equivalents. <br><br>unit: yuan |
      | total\_asset\_turnover | float | Total asset turnover rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | fixed\_asset\_turnover | float | Fixed asset turnover rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | inventory\_turnover | float | Inventory turnover rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | operating\_cash\_flow\_ttm | float | Operating cash flow TTM. <br><br>unit: yuan. Only applicable to annual reports. |
      | accounts\_receivable | float | Net accounts receivable. <br><br>unit: yuan |
      | ebit\_growth\_rate | float | EBIT year-on-year growth rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | operating\_profit\_growth\_rate | float | Operating profit year-on-year growth rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | total\_assets\_growth\_rate | float | Year-on-year growth rate of total assets. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | profit\_to\_shareholders\_growth\_rate | float | Year-on-year growth rate of net profit attributable to the parent. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | profit\_before\_tax\_growth\_rate | float | Year-on-year growth rate of total profit. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | eps\_growth\_rate | float | EPS year-on-year growth rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | roe\_growth\_rate | float | ROE year-on-year growth rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | roic\_growth\_rate | float | ROIC year-on-year growth rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | nocf\_growth\_rate | float | Year-on-year growth rate of operating cash flow. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | nocf\_per\_share\_growth\_rate | float | Year-on-year growth rate of operating cash flow per share. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | operating\_revenue\_cash\_cover | float | Operating cash income ratio. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | operating\_profit\_to\_total\_profit | float | operating profit percentage. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | basic\_eps | float | Basic earnings per share. <br><br>unit: yuan |
      | diluted\_eps | float | Diluted earnings per share. <br><br>unit: yuan |
      | nocf\_per\_share | float | Net operating cash flow per share. <br><br>unit: yuan |
      | price | float | latest price |
      | ma | float | Simple moving average <br><br>Returns values based on the MA parameter. |
      | ma5 | float | 5-day simple moving average |
      | ma10 | float | 10-day simple moving average |
      | ma20 | float | 20-day simple moving average |
      | ma30 | float | 30-day simple moving average |
      | ma60 | float | 60-day simple moving average |
      | ma120 | float | 120-day simple moving average |
      | ma250 | float | 250-day simple moving average |
      | rsi | float | RSI <br><br>Returns values based on the RSI parameter. The default parameter for RSI is 12. |
      | ema | float | exponential moving average <br><br>Returns values based on the EMA parameter. |
      | ema5 | float | 5-day exponential moving average |
      | ema10 | float | 10-day exponential moving average |
      | ema20 | float | 20-day exponential moving average |
      | ema30 | float | 30-day exponential moving average |
      | ema60 | float | 60-day exponential moving average |
      | ema120 | float | 120日-day exponential moving average |
      | ema250 | float | 250日-day exponential moving average |
      | kdj\_k | float | K value of KDJ indicator <br><br>Returns values based on the KDJ parameter. The default parameter for KDJ is \[9,3,3\]. |
      | kdj\_d | float | D value of KDJ indicator <br><br>Returns values based on the KDJ parameter. The default parameter for KDJ is \[9,3,3\]. |
      | kdj\_j | float | J value of KDJ indicator <br><br>Returns values based on the KDJ parameter. The default parameter for KDJ is \[9,3,3\]. |
      | macd\_diff | float | DIFF value of MACD indicator <br><br>Returns values based on the MACD parameter. The default parameter for MACD is \[12,26,9\]. |
      | macd\_dea | float | DEA value of MACD indicator<br><br>Returns values based on the MACD parameter. The default parameter for MACD is \[12,26,9\]. |
      | macd | float | MACD value of MACD indicator <br><br>Returns values based on the MACD parameter. The default parameter for MACD is \[12,26,9\]. |
      | boll\_upper | float | UPPER value of BOLL indicator <br><br>Returns values based on the BOLL parameter. The default parameter for BOLL is \[20.2\]. |
      | boll\_middler | float | MIDDLER value of BOLL indicator <br><br>Returns values based on the BOLL parameter. The default parameter for BOLL is \[20.2\]. |
      | boll\_lower | float | LOWER value of BOLL indicator <br><br>Returns values based on the BOLL parameter. The default parameter for BOLL is \[20.2\]. |
- **Example**

```python
from moomoo import *
import time

quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
simple_filter = SimpleFilter()
simple_filter.filter_min = 2
simple_filter.filter_max = 1000
simple_filter.stock_field = StockField.CUR_PRICE
simple_filter.is_no_filter = False
# simple_filter.sort = SortDir.ASCEND

financial_filter = FinancialFilter()
financial_filter.filter_min = 0.5
financial_filter.filter_max = 50
financial_filter.stock_field = StockField.CURRENT_RATIO
financial_filter.is_no_filter = False
financial_filter.sort = SortDir.ASCEND
financial_filter.quarter = FinancialQuarter.ANNUAL

custom_filter = CustomIndicatorFilter()
custom_filter.ktype = KLType.K_DAY
custom_filter.stock_field1 = StockField.KDJ_K
custom_filter.stock_field1_para = [10,4,4]
custom_filter.stock_field2 = StockField.KDJ_K
custom_filter.stock_field2_para = [9,3,3]
custom_filter.relative_position = RelativePosition.MORE
custom_filter.is_no_filter = False

nBegin = 0
last_page = False
ret_list = list()
while not last_page:
    nBegin += len(ret_list)
    ret, ls = quote_ctx.get_stock_filter(market=Market.HK, filter_list=[simple_filter, financial_filter, custom_filter], begin=nBegin)  # filter with simple, financial and indicator filter for HK market
    if ret == RET_OK:
        last_page, all_count, ret_list = ls
        print('all count = ', all_count)
        for item in ret_list:
            print(item.stock_code)  # Get the stock code
            print(item.stock_name)  # Get the stock name
            print(item[simple_filter])   # Get the value of the variable corresponding to simple_filter
            print(item[financial_filter])   # Get the value of the variable corresponding to financial_filter
            print(item[custom_filter])  # Get the value of custom_filter
    else:
        print('error: ', ls)
        break
    time.sleep(3)  # Sleep for 3 seconds to avoid trigger frequency limitation

quote_ctx.close()  # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
39 39 [ stock_code:HK.08103  stock_name:hmvod Limited  cur_price:2.69  current_ratio(annual):4.413 ,  stock_code:HK.00376  stock_name:Yunfeng Financial  cur_price:2.96  current_ratio(annual):12.585 ,  stock_code:HK.09995  stock_name:RemeGen Co., Ltd.  cur_price:92.85  current_ratio(annual):16.054 ,  stock_code:HK.80737  stock_name:Shenzhen Investment Holdings Bay Area Development  cur_price:2.8  current_ratio(annual):17.249 ,  stock_code:HK.00737  stock_name:Shenzhen Investment Holdings Bay Area Development  cur_price:3.25  current_ratio(annual):17.249 ,  stock_code:HK.03939  stock_name:Wanguo International Mining  cur_price:2.22  current_ratio(annual):17.323 ,  stock_code:HK.01055  stock_name:China Southern Airlines  cur_price:5.17  current_ratio(annual):17.529 ,  stock_code:HK.02638  stock_name:HK Electric Investments and HK Electric Investments  cur_price:7.68  current_ratio(annual):21.255 ,  stock_code:HK.00670  stock_name:China Eastern Airlines Corporation  cur_price:3.53  current_ratio(annual):25.194 ,  stock_code:HK.01952  stock_name:Everest Medicines  cur_price:69.5  current_ratio(annual):26.029 ,  stock_code:HK.00089  stock_name:Tai Sang Land Development  cur_price:4.22  current_ratio(annual):26.914 ,  stock_code:HK.00728  stock_name:China Telecom Corporation  cur_price:2.84  current_ratio(annual):27.651 ,  stock_code:HK.01372  stock_name:Bisu Technology Group  cur_price:5.63  current_ratio(annual):28.303 ,  stock_code:HK.00753  stock_name:Air China Limited  cur_price:6.37  current_ratio(annual):31.828 ,  stock_code:HK.01997  stock_name:Wharf Real Estate Investment  cur_price:44.15  current_ratio(annual):33.239 ,  stock_code:HK.02158  stock_name:Yidu Tech Inc.  cur_price:38.95  current_ratio(annual):34.046 ,  stock_code:HK.02588  stock_name:BOC Aviation Ltd.  cur_price:76.85  current_ratio(annual):34.531 ,  stock_code:HK.01330  stock_name:Dynagreen Environmental Protection Group  cur_price:3.36  current_ratio(annual):35.028 ,  stock_code:HK.01525  stock_name:SHANGHAI GENCH EDUCATION GROUP LIMITED  cur_price:6.28  current_ratio(annual):36.989 ,  stock_code:HK.09908  stock_name:JiaXing Gas Group  cur_price:10.02  current_ratio(annual):37.848 ,  stock_code:HK.06078  stock_name:Hygeia Healthcare Holdings  cur_price:49.2  current_ratio(annual):39.0 ,  stock_code:HK.01071  stock_name:Huadian Power International Corporation  cur_price:2.16  current_ratio(annual):39.507 ,  stock_code:HK.00357  stock_name:Hainan Meilan International Airport  cur_price:33.65  current_ratio(annual):39.514 ,  stock_code:HK.00762  stock_name:China Unicom  cur_price:5.21  current_ratio(annual):40.74 ,  stock_code:HK.01787  stock_name:Shandong Gold Mining  cur_price:15.62  current_ratio(annual):41.604 ,  stock_code:HK.00902  stock_name:Huaneng Power International,Inc.  cur_price:2.67  current_ratio(annual):42.919 ,  stock_code:HK.00934  stock_name:Sinopec Kantons  cur_price:2.98  current_ratio(annual):43.361 ,  stock_code:HK.01117  stock_name:China Modern Dairy  cur_price:2.29  current_ratio(annual):45.037 ,  stock_code:HK.00177  stock_name:Jiangsu Expressway  cur_price:8.78  current_ratio(annual):45.93 ,  stock_code:HK.01379  stock_name:Wenling Zhejiang Measuring and Cutting Tools Trading Centre Company Limited*  cur_price:5.71  current_ratio(annual):46.774 ,  stock_code:HK.01876  stock_name:Budweiser Brewing Company APAC Limited  cur_price:22.45  current_ratio(annual):46.917 ,  stock_code:HK.01907  stock_name:China Risun  cur_price:4.38  current_ratio(annual):47.129 ,  stock_code:HK.02160  stock_name:MicroPort CardioFlow Medtech Corporation  cur_price:15.52  current_ratio(annual):47.384 ,  stock_code:HK.00293  stock_name:Cathay Pacific Airways  cur_price:7.13  current_ratio(annual):47.983 ,  stock_code:HK.00694  stock_name:Beijing Capital International Airport  cur_price:6.29  current_ratio(annual):47.985 ,  stock_code:HK.09922  stock_name:Jiumaojiu International Holdings Limited  cur_price:26.8  current_ratio(annual):48.278 ,  stock_code:HK.01083  stock_name:Towngas China  cur_price:3.38  current_ratio(annual):49.2 ,  stock_code:HK.00291  stock_name:China Resources Beer  cur_price:58.2  current_ratio(annual):49.229 ,  stock_code:HK.00306  stock_name:Kwoon Chung Bus  cur_price:2.29  current_ratio(annual):49.769 ]
HK.08103
hmvod Limited
2.69
2.69
4.413
...
HK.00306
Kwoon Chung Bus
2.29
2.29
49.769

```


## Qot\_StockFilter.proto


- **Description**

Filter stocks by condition

- **Parameters**

// Simple attribute filtering
message BaseFilter
{
    required int32 fieldName = 1; //Simple filter properties
    optional double filterMin = 2; //The lower limit of the interval (closed-interval). Default is -∞ if not passed
    optional double filterMax = 3; //The upper limit of the interval (closed-interval). Default is +∞ if not passed
    optional bool isNoFilter = 4; //Whether the field does not require filtering. True: no filtering, False: filtering. No filtering by default, if not passed
    optional int32 sortDir = 5; //Sort direction. No sorting by default, if not passed
}

// Cumulative attribute filtering
message AccumulateFilter
{
    required int32 fieldName = 1; //Cumulative filter properties
    optional double filterMin = 2; //The lower limit of the interval (closed-interval). Default is -∞ if not passed
    optional double filterMax = 3; //The upper limit of the interval (closed-interval). Default is +∞ if not passed
    optional bool isNoFilter = 4; //Whether the field does not require filtering. True: no filtering, False: filtering. No filtering by default, if not passed
    optional int32 sortDir = 5; //Sort direction. No sorting by default, if not passed
    required int32 days = 6; //Recent days, cumulative time
}

// Financial attribute filtering
message FinancialFilter
{
    required int32 fieldName = 1; //Financial filter properties
    optional double filterMin = 2; //The lower limit of the interval (closed-interval). Default is -∞ if not passed
    optional double filterMax = 3; //The upper limit of the interval (closed-interval). Default is +∞ if not passed
    optional bool isNoFilter = 4; //Whether the field does not require filtering. True: no filtering, False: filtering. No filtering by default, if not passed
    optional int32 sortDir = 5; //Sort direction. No sorting by default, if not passed
    required int32 quarter = 6; //Financial report accumulation time
}

// Pattern attribute filtering
message PatternFilter
{
	required int32 fieldName = 1; // Pattern filter properties
	required int32 klType = 2; // K line type, only supports K_60M, K_DAY, K_WEEK, K_MON four time periods
	optional bool isNoFilter = 3; // Whether the field does not require filtering. True: no filtering, False: filtering. No filtering by default, if not passed
    optional int32 consecutivePeriod = 4; // Filters data whose consecutive periods are all eligible. Fill in the range [1,12]
}

// Custom indicator attribute filtering
message CustomIndicatorFilter
{
	required int32 firstFieldName = 1; // Custom indicator filter properties
	required int32 secondFieldName = 2; // Custom indicator filter properties
	required int32 relativePosition = 3; // Relative position
	optional double fieldValue = 4; // Custom value
	required int32 klType = 5; // K line type, only supports K_60M, K_DAY, K_WEEK, K_MON four time periods
	optional bool isNoFilter = 6; // Whether the field does not require filtering. True: no filtering, False: filtering. No filtering by default, if not passed
    repeated int32 firstFieldParaList = 7; // Custom indicator parameter. Pass parameters according to the indicator type: 1. MA：[Average moving period] 2.EMA：[Exponential moving average period] 3.RSI：[RSI period] 4.MACD：[Fast average, Slow average, DIF value] 5.BOLL：[Average period, Offset value] 6.KDJ：[RSV period, K value period, D value period]
	repeated int32 secondFieldParaList = 8; // Custom indicator parameter. Pass parameters according to the indicator type: 1. MA：[Average moving period] 2.EMA：[Exponential moving average period] 3.RSI：[RSI period] 4.MACD：[Fast average, Slow average, DIF value] 5.BOLL：[Average period, Offset value] 6.KDJ：[RSV period, K value period, D value period]
	optional int32 consecutivePeriod = 9; // Filters data whose consecutive periods are all eligible. Fill in the range [1,12]
}

message C2S
{
    required int32 begin = 1; //Data starting point
    required int32 num = 2; //The number of requested data, the maximum is 200
    required int32 market= 3; //Qot_Common::QotMarket. Stock market. does not distinguish between Shanghai and Shenzhen market, either of Shanghai or Shenzhen market will represent the A-share market
    // The following are optional fields of filter conditions, leave it blank means no filter
    optional Qot_Common.Security plate = 4; //Plate
    repeated BaseFilter baseFilterList = 5; //Simple filter properties
    repeated AccumulateFilter accumulateFilterList = 6; //Cumulative filter properties The maximum number of the same filter condition for cumulative filter properties is 10
    repeated FinancialFilter financialFilterList = 7; //Financial filter properties
	repeated PatternFilter patternFilterList = 8; // Indicator pattern filter properties
	repeated CustomIndicatorFilter customIndicatorFilterList = 9; // Custom indicator filter properties
}

message Request
{
	required C2S c2s = 1;
}

// Simple attribute data
message BaseData
{
    required int32 fieldName = 1; //Simple filter properties
    required double value = 2;
}

// Cumulative attribute data
message AccumulateData
{
    required int32 fieldName = 1; //Cumulative filter properties
    required double value = 2;
    required int32 days = 3; //Recent days, cumulative time
}

// Financial attribute data
message FinancialData
{
    required int32 fieldName = 1; //Financial filter properties
    required double value = 2;
    required int32 quarter = 3; //Financial report accumulation time
}

// Custom indicator data
message CustomIndicatorData
{
	required int32 fieldName = 1; // CustomIndicatorField. Custom indicator filter properties
	required double value = 2;
	required int32 klType = 3; // Qot_Common.KLType. K line type, only supports K_60M, K_DAY, K_WEEK, K_MON four time periods
    repeated int32 fieldParaList = 4; // Custom indicator parameter. Pass parameters according to the indicator type: 1. MA：[Average moving period] 2.EMA：[Exponential moving average period] 3.RSI：[RSI period] 4.MACD：[Fast average, Slow average, DIF value] 5.BOLL：[Average period, Offset value] 6.KDJ：[RSV period, K value period, D value period]
}

// returned stock data
message StockData
{
    required Qot_Common.Security security = 1; //Security
    required string name = 2; //Security name
    repeated BaseData baseDataList = 3; //Filtered data of simple filter property
    repeated AccumulateData accumulateDataList = 4; //Filtered data of cumulative filter property
    repeated FinancialData financialDataList = 5; //Filtered data of financial filter property
    repeated CustomIndicatorData customIndicatorDataList = 6; // Filtered data of custom indicator filter property
    // The value of firstFieldName and secondFieldName field in CustomIndicatorFilter will be returned seperately
}

message S2C
{
    required bool lastPage = 1; //Is it the last page, false: It is not the last page, and some remaining warrant record has not been returned; true: It is the last page
    required int32 allCount = 2; //The number of all data requested by this condition
    repeated StockData dataList = 3; //Returned stock data list
}

message Response
{
	required int32 retType = 1 [default = -400]; // RetType, returned value
	optional string retMsg = 2;
	optional int32 errCode = 3;
	optional S2C s2c = 4;
}

```

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For simple attribute filter conditions, refer to [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377)
> - For cumulative filter properties, refer to [AccumulateField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316)
> - For financial filter properties, refer to [FinancialField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317)
> - For financial report time period, refer to [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409)
> - For custom indicator filter properties, refer to [CustomIndicatorField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936)
> - K line type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint StockFilter(QotStockFilter.Request req);`

`virtual void OnReply_StockFilter(MMAPI_Conn client, uint nSerialNo, QotStockFilter.Response rsp);`

- **Description**

Filter stocks by condition

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market types, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For simple attribute filter conditions, refer to [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377)
> - For cumulative filter properties, refer to [AccumulateField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316)
> - For financial filter properties, refer to [FinancialField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317)
> - For custom indicator filter properties, refer to [CustomIndicatorField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936)
> - For pattern filter properties, refer to [PatternField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6605)
> - For financial report time period, refer to [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409)
> - For sorting direction, refer to [SortDir](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9029)
> - Relative position, refer to [RelativePosition](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9084)
> - K line type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For simple attribute filter conditions, refer to [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377)
> - For cumulative filter properties, refer to [AccumulateField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316)
> - For financial filter properties, refer to [FinancialField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317)
> - For financial report time period, refer to [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409)
> - For custom indicator filter properties, refer to [CustomIndicatorField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936)
> - K line type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int stockFilter(QotStockFilter.Request req);`

`void onReply_StockFilter(MMAPI_Conn client, int nSerialNo, QotStockFilter.Response rsp);`

- **Description**

Filter stocks by condition

- **Parameter**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market types, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For simple attribute filter conditions, refer to [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377)
> - For cumulative filter properties, refer to [AccumulateField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316)
> - For financial filter properties, refer to [FinancialField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317)
> - For custom indicator filter properties, refer to [CustomIndicatorField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936)
> - For pattern filter properties, refer to [PatternField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6605)
> - For financial report time period, refer to [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409)
> - For sorting direction, refer to [SortDir](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9029)
> - Relative position, refer to [RelativePosition](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9084)
> - K line type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For simple attribute filter conditions, refer to [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377)
> - For cumulative filter properties, refer to [AccumulateField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316)
> - For financial filter properties, refer to [FinancialField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317)
> - For financial report time period, refer to [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409)
> - For custom indicator filter properties, refer to [CustomIndicatorField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936)
> - K line type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t StockFilter(const Qot_StockFilter::Request &stReq);`

`virtual void OnReply_StockFilter(moomoo::u32_t nSerialNo, const Qot_StockFilter::Response &stRsp) = 0;`

- **Description**

Filter stocks by condition

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market types, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For simple attribute filter conditions, refer to [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377)
> - For cumulative filter properties, refer to [AccumulateField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316)
> - For financial filter properties, refer to [FinancialField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317)
> - For custom indicator filter properties, refer to [CustomIndicatorField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936)
> - For pattern filter properties, refer to [PatternField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6605)
> - For financial report time period, refer to [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409)
> - For sorting direction, refer to [SortDir](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9029)
> - Relative position, refer to [RelativePosition](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9084)
> - K line type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For simple attribute filter conditions, refer to [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377)
> - For cumulative filter properties, refer to [AccumulateField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316)
> - For financial filter properties, refer to [FinancialField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317)
> - For financial report time period, refer to [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For simple attribute filter conditions, refer to [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377)
> - For cumulative filter properties, refer to [AccumulateField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316)
> - For financial filter properties, refer to [FinancialField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317)
> - For financial report time period, refer to [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409)
> - For custom indicator filter properties, refer to [CustomIndicatorField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936)
> - K line type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)

`StockFilter(req);`

- **Description**

Filter stocks by condition

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For market types, refer to [QotMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#456)
> - For simple attribute filter conditions, refer to [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377)
> - For cumulative filter properties, refer to [AccumulateField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316)
> - For financial filter properties, refer to [FinancialField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317)
> - For custom indicator filter properties, refer to [CustomIndicatorField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936)
> - For pattern filter properties, refer to [PatternField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6605)
> - For financial report time period, refer to [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409)
> - For sorting direction, refer to [SortDir](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9029)
> - Relative position, refer to [RelativePosition](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9084)
> - K line type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For simple attribute filter conditions, refer to [StockField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9377)
> - For cumulative filter properties, refer to [AccumulateField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8316)
> - For financial filter properties, refer to [FinancialField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2317)
> - For financial report time period, refer to [FinancialQuarter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8409)
> - For custom indicator filter properties, refer to [CustomIndicatorField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3936)
> - K line type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- Use [Get sub-plate list function](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-list.html) to get the sub-plate code, the plates supported by conditional stock selection are respectively

1. The industry plate and concept plate of HK market.
2. Industry plate of US market.
3. Shanghai and Shenzhen's industry plate, conceptual plate and geographic plate.
- Supported plate index codes

| Code | Description |
| --- | --- |
| HK.Motherboard | Main plate of HK market |
| HK.GEM | Growth Enterprise Market of HK market |
| HK.BK1911 | Main plate of H-Share |
| HK.BK1912 | Growth Enterprise Market of H-share |
| US.NYSE | New York Stock Exchange |
| US.AMEX | American Exchange |
| US.NASDAQ | NASDAQ |
| SH.3000000 | Shanghai main plate |
| SZ.3000001 | Shenzhen main plate |
| SZ.3000004 | Shenzhen Growth Enterprise Market |

Interface Limitations

- A maximum of 10 requests per 30 seconds
- At most 200 filter results are returned per page
- It is recommended that the filter conditions do not exceed 250, otherwise "business processing timeout did not return" may appear
- The maximum number of the same filter condition for cumulative filter properties is 10
- If you use dynamic data such as "current price" as the sorting field, the sorting of the data may change between multiple pages
- Non-similar indicators do not support comparison, and are limited to the establishment of comparison relationships between similar indicators, and comparisons across different types of indicators will cause errors. For example: MA5 and MA10 can establish a relationship. MA5 and EMA10 cannot establish a relationship.
- The same type of filter conditions of the custom indicator attribute exceeds the upper limit of 10
- Simple attributes, financial attributes, and morphological attributes do not support repeated designation of filter conditions for the same field
- Stock filter function currently does not support irregular trading hours (i.e.pre-market, post-market and overnight). All results are based on regular trading hours data.

←
[Get Futures Contract Information](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-future-info.html)[Get the List of Stocks in The Plate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-stock.html)
→

## Get Real-time Quote

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-stock-quote.html


`get_stock_quote(code_list)`

- **Description**

To get real-time quotes of subscribed securities, you must subscribe first.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code\_list | list | Stock list. Data type of elements in the list is str. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, quotation data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - quotation data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | data\_date | str | Date. |
    | data\_time | str | Time of latest price. <br><br>Format: yyyy-MM-dd HH:mm:ss<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | last\_price | float | Latest price. |
    | open\_price | float | Open. |
    | high\_price | float | High. |
    | low\_price | float | Low. |
    | prev\_close\_price | float | Yesterday's close. |
    | volume | int | Volume. |
    | turnover | float | Turnover. |
    | turnover\_rate | float | Turnover rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | amplitude | int | Amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | suspension | bool | Whether trading is suspended. <br><br>True: suspension |
    | listing\_date | str | Listing date. <br><br>yyyy-MM-dd |
    | price\_spread | float | Spread. |
    | dark\_status | [DarkStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6341) | Grey market transaction status. |
    | sec\_status | [SecurityStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#4415) | Stock status. |
    | strike\_price | float | Strike price. |
    | contract\_size | float | Contract size. |
    | open\_interest | int | Number of open positions. |
    | implied\_volatility | float | Implied volatility. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | premium | float | Premium. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | delta | float | Greek value Delta. |
    | gamma | float | Greek value Gamma. |
    | vega | float | Greek value Vega. |
    | theta | float | Greek value Theta. |
    | rho | float | Greek value Rho. |
    | index\_option\_type | [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866) | Index option type. |
    | net\_open\_interest | int | Net open contract number. <br><br>Only HK options support this field. |
    | expiry\_date\_distance | int | The number of days from the expiry date. <br><br>a negative number means it has expired. |
    | contract\_nominal\_value | float | Contract nominal amount. <br><br>Only HK options support this field. |
    | owner\_lot\_multiplier | float | Equal number of underlying stocks. <br><br>Index options do not have this field , only HK options support this field. |
    | option\_area\_type | [OptionAreaType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3628) | Option type (by exercise time). |
    | contract\_multiplier | float | Contract multiplier. |
    | pre\_price | float | Pre-market price. |
    | pre\_high\_price | float | Pre-market high. |
    | pre\_low\_price | float | Pre-market low. |
    | pre\_volume | int | Pre-market volume. |
    | pre\_turnover | float | Pre-market turnover. |
    | pre\_change\_val | float | Pre-market change. |
    | pre\_change\_rate | float | Pre-market change rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | pre\_amplitude | float | Pre-market amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | after\_price | float | After-hours price. |
    | after\_high\_price | float | After-hours high. |
    | after\_low\_price | float | After-hours low. |
    | after\_volume | int | After-hours volume. <br><br>The Sci-tech Innovation Board supports this data. |
    | After\_turnover | float | After-hours turnover. <br><br>The Sci-tech Innovation Board supports this data. |
    | after\_change\_val | float | After-hours change. |
    | after\_change\_rate | float | After-hours change rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | after\_amplitude | float | After-hours amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | overnight\_price | float | Overnight price. |
    | overnight\_high\_price | float | Overnight high. |
    | overnight\_low\_price | float | Overnight low. |
    | overnight\_volume | int | Overnight volume. |
    | overnight\_turnover | float | Overnight turnover. |
    | overnight\_change\_val | float | Overnight change. |
    | overnight\_change\_rate | float | Overnight change rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | overnight\_amplitude | float | Overnight amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | last\_settle\_price | float | Yesterday's close. <br><br>Specific field for futures. |
    | position | float | Holding position. <br><br>Specific field for futures. |
    | position\_change | float | Daily position change. <br><br>Specific field for futures. |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret_sub, err_message = quote_ctx.subscribe(['US.AAPL'], [SubType.QUOTE], subscribe_push=False)
# Subscribe to the K line type first. After the subscription is successful, OpenD will continue to receive pushes from the server, False means that there is no need to push to the script temporarily
if ret_sub == RET_OK: # Subscription successful
     ret, data = quote_ctx.get_stock_quote(['US.AAPL']) # Get real-time data of subscription stock quotes
     if ret == RET_OK:
         print(data)
         print(data['code'][0]) # Take the first stock code
         print(data['code'].values.tolist()) # Convert to list
     else:
         print('error:', data)
else:
     print('subscription failed', err_message)
quote_ctx.close() # Close the current connection, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
code name   data_date     data_time  last_price  open_price  high_price  low_price  prev_close_price     volume      turnover  turnover_rate  amplitude  suspension listing_date  price_spread dark_status sec_status strike_price contract_size open_interest implied_volatility premium delta gamma vega theta  rho net_open_interest expiry_date_distance contract_nominal_value owner_lot_multiplier option_area_type contract_multiplier last_settle_price position position_change index_option_type  pre_price  pre_high_price  pre_low_price  pre_volume  pre_turnover  pre_change_val  pre_change_rate  pre_amplitude  after_price  after_high_price  after_low_price  after_volume  after_turnover  after_change_val  after_change_rate  after_amplitude  overnight_price  overnight_high_price  overnight_low_price  overnight_volume  overnight_turnover  overnight_change_val  overnight_change_rate  overnight_amplitude
0  US.AAPL   APPLE  2025-04-07  05:37:21.794      188.38      193.89      199.88     187.34            203.19  125910913  2.424473e+10          0.838      6.172       False   1980-12-12          0.01         N/A     NORMAL          N/A           N/A           N/A                N/A     N/A   N/A   N/A  N/A   N/A  N/A               N/A                  N/A                    N/A                  N/A              N/A                 N/A               N/A      N/A             N/A               N/A     181.43          181.98         177.47      288853   52132735.18           -6.95           -3.689          2.394        186.6           188.639           186.44       3151311    5.930968e+08             -1.78             -0.944           1.1673           176.94                 186.5                174.4            533115         94944250.56                -11.44                 -6.072               6.4231
US.AAPL
['US.AAPL']

```


## Qot\_GetBasicQot.proto


- **Description**

To get real-time quotes of subscribed securities, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For basic quotation structure, refer to [BasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetBasicQot(QotGetBasicQot.Request req);`

`virtual void OnReply_GetBasicQot(FTAPI_Conn client, uint nSerialNo, QotGetBasicQot.Response rsp);`

- **Description**

To get real-time quotes of subscribed securities, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For basic quotation structure, refer to [BasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getBasicQot(QotGetBasicQot.Request req);`

`void onReply_GetBasicQot(FTAPI_Conn client, int nSerialNo, QotGetBasicQot.Response rsp);`

- **Description**

To get real-time quotes of subscribed securities, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For basic quotation structure, refer to [BasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetBasicQot(const Qot_GetBasicQot::Request &stReq);`

`virtual void OnReply_GetBasicQot(Futu::u32_t nSerialNo, const Qot_GetBasicQot::Response &stRsp) = 0;`

- **Description**

To get real-time quotes of subscribed securities, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For basic quotation structure, refer to [BasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetBasicQot(req);`

- **Description**

To get real-time quotes of subscribed securities, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For basic quotation structure, refer to [BasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- This API provides the function to obtain real-time data at one time. If you need to obtain pushed data continuously, please refer to the [Real-time Quote Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-stock-quote.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).

`get_stock_quote(code_list)`

- **Description**

To get real-time quotes of subscribed securities, you must subscribe first.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code\_list | list | Stock list. Data type of elements in the list is str. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, quotation data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - quotation data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | data\_date | str | Date. |
    | data\_time | str | Time of latest price. <br><br>Format: yyyy-MM-dd HH:mm:ss<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | last\_price | float | Latest price. |
    | open\_price | float | Open. |
    | high\_price | float | High. |
    | low\_price | float | Low. |
    | prev\_close\_price | float | Yesterday's close. |
    | volume | int | Volume. |
    | turnover | float | Turnover. |
    | turnover\_rate | float | Turnover rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | amplitude | int | Amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | suspension | bool | Whether trading is suspended. <br><br>True: suspension |
    | listing\_date | str | Listing date. <br><br>yyyy-MM-dd |
    | price\_spread | float | Spread. |
    | dark\_status | [DarkStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6341) | Grey market transaction status. |
    | sec\_status | [SecurityStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#4415) | Stock status. |
    | strike\_price | float | Strike price. |
    | contract\_size | float | Contract size. |
    | open\_interest | int | Number of open positions. |
    | implied\_volatility | float | Implied volatility. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | premium | float | Premium. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | delta | float | Greek value Delta. |
    | gamma | float | Greek value Gamma. |
    | vega | float | Greek value Vega. |
    | theta | float | Greek value Theta. |
    | rho | float | Greek value Rho. |
    | index\_option\_type | [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866) | Index option type. |
    | net\_open\_interest | int | Net open contract number. <br><br>Only HK options support this field. |
    | expiry\_date\_distance | int | The number of days from the expiry date. <br><br>a negative number means it has expired. |
    | contract\_nominal\_value | float | Contract nominal amount. <br><br>Only HK options support this field. |
    | owner\_lot\_multiplier | float | Equal number of underlying stocks. <br><br>Index options do not have this field , only HK options support this field. |
    | option\_area\_type | [OptionAreaType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3628) | Option type (by exercise time). |
    | contract\_multiplier | float | Contract multiplier. |
    | pre\_price | float | Pre-market price. |
    | pre\_high\_price | float | Pre-market high. |
    | pre\_low\_price | float | Pre-market low. |
    | pre\_volume | int | Pre-market volume. |
    | pre\_turnover | float | Pre-market turnover. |
    | pre\_change\_val | float | Pre-market change. |
    | pre\_change\_rate | float | Pre-market change rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | pre\_amplitude | float | Pre-market amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | after\_price | float | After-hours price. |
    | after\_high\_price | float | After-hours high. |
    | after\_low\_price | float | After-hours low. |
    | after\_volume | int | After-hours volume. <br><br>The Sci-tech Innovation Board supports this data. |
    | After\_turnover | float | After-hours turnover. <br><br>The Sci-tech Innovation Board supports this data. |
    | after\_change\_val | float | After-hours change. |
    | after\_change\_rate | float | After-hours change rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | after\_amplitude | float | After-hours amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | overnight\_price | float | Overnight price. |
    | overnight\_high\_price | float | Overnight high. |
    | overnight\_low\_price | float | Overnight low. |
    | overnight\_volume | int | Overnight volume. |
    | overnight\_turnover | float | Overnight turnover. |
    | overnight\_change\_val | float | Overnight change. |
    | overnight\_change\_rate | float | Overnight change rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | overnight\_amplitude | float | Overnight amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | last\_settle\_price | float | Yesterday's close. <br><br>Specific field for futures. |
    | position | float | Holding position. <br><br>Specific field for futures. |
    | position\_change | float | Daily position change. <br><br>Specific field for futures. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret_sub, err_message = quote_ctx.subscribe(['US.AAPLE'], [SubType.QUOTE], subscribe_push=False)
# Subscribe to the K line type first. After the subscription is successful, OpenD will continue to receive pushes from the server, False means that there is no need to push to the script temporarily
if ret_sub == RET_OK: # Subscription successful
     ret, data = quote_ctx.get_stock_quote(['US.AAPL']) # Get real-time data of subscription stock quotes
     if ret == RET_OK:
         print(data)
         print(data['code'][0]) # Take the first stock code
         print(data['code'].values.tolist()) # Convert to list
     else:
         print('error:', data)
else:
     print('subscription failed', err_message)
quote_ctx.close() # Close the current connection, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
code name   data_date     data_time  last_price  open_price  high_price  low_price  prev_close_price     volume      turnover  turnover_rate  amplitude  suspension listing_date  price_spread dark_status sec_status strike_price contract_size open_interest implied_volatility premium delta gamma vega theta  rho net_open_interest expiry_date_distance contract_nominal_value owner_lot_multiplier option_area_type contract_multiplier last_settle_price position position_change index_option_type  pre_price  pre_high_price  pre_low_price  pre_volume  pre_turnover  pre_change_val  pre_change_rate  pre_amplitude  after_price  after_high_price  after_low_price  after_volume  after_turnover  after_change_val  after_change_rate  after_amplitude  overnight_price  overnight_high_price  overnight_low_price  overnight_volume  overnight_turnover  overnight_change_val  overnight_change_rate  overnight_amplitude
0  US.AAPL   APPLE  2025-04-07  05:37:21.794      188.38      193.89      199.88     187.34            203.19  125910913  2.424473e+10          0.838      6.172       False   1980-12-12          0.01         N/A     NORMAL          N/A           N/A           N/A                N/A     N/A   N/A   N/A  N/A   N/A  N/A               N/A                  N/A                    N/A                  N/A              N/A                 N/A               N/A      N/A             N/A               N/A     181.43          181.98         177.47      288853   52132735.18           -6.95           -3.689          2.394        186.6           188.639           186.44       3151311    5.930968e+08             -1.78             -0.944           1.1673           176.94                 186.5                174.4            533115         94944250.56                -11.44                 -6.072               6.4231
US.AAPL
['US.AAPL']

```


## Qot\_GetBasicQot.proto


- **Description**

To get real-time quotes of subscribed securities, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For basic quotation structure, refer to [BasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetBasicQot(QotGetBasicQot.Request req);`

`virtual void OnReply_GetBasicQot(MMAPI_Conn client, uint nSerialNo, QotGetBasicQot.Response rsp);`

- **Description**

To get real-time quotes of subscribed securities, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For basic quotation structure, refer to [BasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getBasicQot(QotGetBasicQot.Request req);`

`void onReply_GetBasicQot(MMAPI_Conn client, int nSerialNo, QotGetBasicQot.Response rsp);`

- **Description**

To get real-time quotes of subscribed securities, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For basic quotation structure, refer to [BasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetBasicQot(const Qot_GetBasicQot::Request &stReq);`

`virtual void OnReply_GetBasicQot(moomoo::u32_t nSerialNo, const Qot_GetBasicQot::Response &stRsp) = 0;`

- **Description**

To get real-time quotes of subscribed securities, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For basic quotation structure, refer to [BasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetBasicQot(req);`

- **Description**

To get real-time quotes of subscribed securities, you must subscribe first.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For basic quotation structure, refer to [BasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- This API provides the function to obtain real-time data at one time. If you need to obtain pushed data continuously, please refer to the [Real-time Quote Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-stock-quote.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).

←
[Get Market Snapshot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-snapshot.html)[Get Real-time Order Book](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-order-book.html)
→

## Get Real-time Tick-by-Tick

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ticker.html


`get_rt_ticker(code, num=500)`

- **Description**

To get real-time tick-by-tick of subscribed stocks. (Require real-time data subscription.)

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Stock code. |
| num | int | Number of recent tick-by-tick. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, tick-by-tick data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Tick-by-tick data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | sequence | int | Sequence number. |
    | time | str | Transaction time. <br><br>Format: yyyy-MM-dd HH:mm:ss:xxx<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | price | float | Transaction price. |
    | volume | int | Volume. <br><br>shares |
    | turnover | float | Transaction amount. |
    | ticker\_direction | [TickerDirect](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#832) | Tick-By-Tick direction. |
    | type | [TickerType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9844) | Tick-By-Tick type. |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret_sub, err_message = quote_ctx.subscribe(['US.AAPL'], [SubType.TICKER], subscribe_push=False, session=Session.ALL)
# First subscribe to each type. After the subscription is successful, OpenD will continue to receive pushes from the server, False means that there is no need to push to the script temporarily
if ret_sub == RET_OK: # Subscription successful
     ret, data = quote_ctx.get_rt_ticker('US.AAPL', 2) # Get the last 2 transactions of Hong Kong stocks 00700
     if ret == RET_OK:
         print(data)
         print(data['turnover'][0]) # Take the first transaction amount
         print(data['turnover'].values.tolist()) # Convert to list
     else:
         print('error:', data)
else:
     print('subscription failed', err_message)
quote_ctx.close() # Close the current link, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
code name                     time   price  volume  turnover ticker_direction             sequence     type
0  US.AAPL   APPLE  2025-04-07 05:50:23.745  181.70       2    363.40          NEUTRAL  7490506385373790208  ODD_LOT
1  US.AAPL   APPLE  2025-04-07 05:50:24.170  181.73       1    181.73          NEUTRAL  7490506389668757504  ODD_LOT
363.4
[363.4, 181.73]

```


## Qot\_GetTicker.proto


- **Description**

To get real-time tick-by-tick of subscribed stocks. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of each transaction, refer to [Ticker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2975)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetTicker(QotGetTicker.Request req);`

`virtual void OnReply_GetTicker(FTAPI_Conn client, uint nSerialNo, QotGetTicker.Response rsp);`

- **Description**

To get real-time tick-by-tick of subscribed stocks. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of each transaction, refer to [Ticker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2975)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getTicker(QotGetTicker.Request req);`

`void onReply_GetTicker(FTAPI_Conn client, int nSerialNo, QotGetTicker.Response rsp);`

- **Description**

To get real-time tick-by-tick of subscribed stocks. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of each transaction, refer to [Ticker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2975)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetTicker(const Qot_GetTicker::Request &stReq);`

`virtual void OnReply_GetTicker(Futu::u32_t nSerialNo, const Qot_GetTicker::Response &stRsp) = 0;`

- **Description**

To get real-time tick-by-tick of subscribed stocks. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of each transaction, refer to [Ticker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2975)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetTicker(req);`

- **Description**

To get real-time tick-by-tick of subscribed stocks. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of each transaction, refer to [Ticker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2975)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- You can get up to the latest 1000 tick-by-tick data, more historical tick-by-tick data is not yet available
- Under the authority of LV1 HK futures and options market, tick-by-tick data is not available

Tips

- This API provides the function of obtaining real-time data at one time. If you need to obtain pushed data continuously, please refer to the [Real-time Tick-By-Tick Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-ticker.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).

`get_rt_ticker(code, num=500)`

- **Description**

To get real-time tick-by-tick of subscribed stocks. (Require real-time data subscription.)

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Stock code. |
| num | int | Number of recent tick-by-tick. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, tick-by-tick data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Tick-by-tick data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | sequence | int | Sequence number. |
    | time | str | Transaction time. <br><br>Format: yyyy-MM-dd HH:mm:ss<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | price | float | Transaction price. |
    | volume | int | Volume. <br><br>shares |
    | turnover | float | Transaction amount. |
    | ticker\_direction | [TickerDirect](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#832) | Tick-By-Tick direction. |
    | type | [TickerType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9844) | Tick-By-Tick type. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret_sub, err_message = quote_ctx.subscribe(['US.AAPL'], [SubType.TICKER], subscribe_push=False, session=Session.ALL)
# First subscribe to each type. After the subscription is successful, OpenD will continue to receive pushes from the server, False means that there is no need to push to the script temporarily
if ret_sub == RET_OK: # Subscription successful
     ret, data = quote_ctx.get_rt_ticker('US.AAPL', 2) # Get the last 2 transactions of Hong Kong stocks 00700
     if ret == RET_OK:
         print(data)
         print(data['turnover'][0]) # Take the first transaction amount
         print(data['turnover'].values.tolist()) # Convert to list
     else:
         print('error:', data)
else:
     print('subscription failed', err_message)
quote_ctx.close() # Close the current link, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
code name                     time   price  volume  turnover ticker_direction             sequence     type
0  US.AAPL   APPLE  2025-04-07 05:50:23.745  181.70       2    363.40          NEUTRAL  7490506385373790208  ODD_LOT
1  US.AAPL   APPLE  2025-04-07 05:50:24.170  181.73       1    181.73          NEUTRAL  7490506389668757504  ODD_LOT
363.4
[363.4, 181.73]

```


## Qot\_GetTicker.proto


- **Description**

To get real-time tick-by-tick of subscribed stocks. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of each transaction, refer to [Ticker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2975)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetTicker(QotGetTicker.Request req);`

`virtual void OnReply_GetTicker(MMAPI_Conn client, uint nSerialNo, QotGetTicker.Response rsp);`

- **Description**

To get real-time tick-by-tick of subscribed stocks. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of each transaction, refer to [Ticker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2975)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getTicker(QotGetTicker.Request req);`

`void onReply_GetTicker(MMAPI_Conn client, int nSerialNo, QotGetTicker.Response rsp);`

- **Description**

To get real-time tick-by-tick of subscribed stocks. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of each transaction, refer to [Ticker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2975)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetTicker(const Qot_GetTicker::Request &stReq);`

`virtual void OnReply_GetTicker(moomoo::u32_t nSerialNo, const Qot_GetTicker::Response &stRsp) = 0;`

- **Description**

To get real-time tick-by-tick of subscribed stocks. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of each transaction, refer to [Ticker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2975)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetTicker(req);`

- **Description**

To get real-time tick-by-tick of subscribed stocks. (Require real-time data subscription.)

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of each transaction, refer to [Ticker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2975)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- You can get up to the latest 1000 tick-by-tick data, more historical tick-by-tick data is not yet available
- Under the authority of LV1 HK futures and options market, tick-by-tick data is not available

Tips

- This API provides the function of obtaining real-time data at one time. If you need to obtain pushed data continuously, please refer to the [Real-time Tick-By-Tick Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-ticker.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).

←
[Get Real-time Time Frame Data](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-rt.html)[Get Real-time Broker Queue](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-broker.html)
→

## Get Groups From Watchlist

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-user-security-group.html


`get_user_security_group(group_type = UserSecurityGroupType.ALL)`

- **Description**

Get a list of groups from the user watchlist

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| group\_type | [UserSecurityGroupType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8561) | Group type. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, group data of watchlist is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Group data of watchlist format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | group\_name | str | Group name. |
    | group\_type | [UserSecurityGroupType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8561) | Group type. |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_user_security_group(group_type = UserSecurityGroupType.ALL)
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
        group_name group_type
0          Options     SYSTEM
..         ...        ...
12          C     CUSTOM

[13 rows x 2 columns]

```


## Qot\_GetUserSecurityGroup.proto


- **Description**

Get a list of groups from the user watchlist

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetUserSecurityGroup(QotGetUserSecurityGroup.Request req);`

`virtual void OnReply_GetUserSecurityGroup(FTAPI_Conn client, uint nSerialNo, QotGetUserSecurityGroup.Response rsp);`

- **Description**

Get a list of groups from the user watchlist

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getUserSecurityGroup(QotGetUserSecurityGroup.Request req);`

`void onReply_GetUserSecurityGroup(FTAPI_Conn client, int nSerialNo, QotGetUserSecurityGroup.Response rsp);`

- **Description**

Get a list of groups from the user watchlist

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetUserSecurityGroup(const Qot_GetUserSecurityGroup::Request &stReq);`

`virtual void OnReply_GetUserSecurityGroup(Futu::u32_t nSerialNo, const Qot_GetUserSecurityGroup::Response &stRsp) = 0;`

- **Description**

Get a list of groups from the user watchlist

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetUserSecurityGroup(req);`

- **Description**

Get a list of groups from the user watchlist

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds

`get_user_security_group(group_type = UserSecurityGroupType.ALL)`

- **Description**

Get a list of groups from the user watchlist

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| group\_type | [UserSecurityGroupType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8561) | Group type. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, group data of watchlist is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Group data of watchlist format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | group\_name | str | Group name. |
    | group\_type | [UserSecurityGroupType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8561) | Group type. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_user_security_group(group_type = UserSecurityGroupType.ALL)
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
        group_name group_type
0          Options     SYSTEM
..         ...        ...
12          C     CUSTOM

[13 rows x 2 columns]

```


## Qot\_GetUserSecurityGroup.proto


- **Description**

Get a list of groups from the user watchlist

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetUserSecurityGroup(QotGetUserSecurityGroup.Request req);`

`virtual void OnReply_GetUserSecurityGroup(MMAPI_Conn client, uint nSerialNo, QotGetUserSecurityGroup.Response rsp);`

- **Description**

Get a list of groups from the user watchlist

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getUserSecurityGroup(QotGetUserSecurityGroup.Request req);`

`void onReply_GetUserSecurityGroup(MMAPI_Conn client, int nSerialNo, QotGetUserSecurityGroup.Response rsp);`

- **Description**

Get a list of groups from the user watchlist

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetUserSecurityGroup(const Qot_GetUserSecurityGroup::Request &stReq);`

`virtual void OnReply_GetUserSecurityGroup(moomoo::u32_t nSerialNo, const Qot_GetUserSecurityGroup::Response &stRsp) = 0;`

- **Description**

Get a list of groups from the user watchlist

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetUserSecurityGroup(req);`

- **Description**

Get a list of groups from the user watchlist

- **Parameters**

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds

←
[Get The Watchlist](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-user-security.html)[Modify the Watchlist](https://openapi.moomoo.com/moomoo-api-doc/en/quote/modify-user-security.html)
→

## Get The Watchlist

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-user-security.html


`get_user_security(group_name)`

- **Description**

Get a list of a specified group from watchlist

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| group\_name | str | The name of the specified group from watchlist. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, watchlist is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Watchlist data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | lot\_size | int | Number of shares per lot, number of shares per contract for options, contract multiplier for futures. |
    | stock\_type | [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767) | Stock type. |
    | stock\_child\_type | [WrtType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421) | Warrant type. |
    | stock\_owner | str | The code of the underlying stock to which the warrant belongs, or the code of the underlying stock of the option. |
    | option\_type | [OptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9598) | Option type. |
    | strike\_time | str | The option exercise date. <br><br>Format: yyyy-MM-dd<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | strike\_price | float | Option strike price. |
    | suspension | bool | Whether the option is suspended. <br><br>True: suspension |
    | listing\_date | str | Listing date. <br><br>Format: yyyy-MM-dd |
    | stock\_id | int | Stock ID. |
    | delisting | bool | Whether is delisted. |
    | main\_contract | bool | Whether is future main contract. |
    | last\_trade\_time | str | Last trading time. <br><br>Main, current month and next month futures do not have this field. |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_user_security("A")
if ret == RET_OK:
    print(data)
    if data.shape[0] > 0:  # If the user security list is not empty
        print(data['code'][0]) # Take the first stock code
        print(data['code'].values.tolist()) # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
    code    name  lot_size stock_type stock_child_type stock_owner option_type strike_time strike_price suspension listing_date        stock_id  delisting  main_contract last_trade_time
0  HK.HSImain  HSI Future Main(NOV0)        50     FUTURE              N/A                                              N/A        N/A                     71000662      False           True
1  HK.00700    Tencent Holdings       100      STOCK              N/A                                              N/A        N/A   2004-06-16  54047868453564      False          False
HK.HSImain
['HK.HSImain', 'HK.00700']

```


## Qot\_GetUserSecurity.proto


- **Description**

Get a list of a specified group from watchlist

- **Parameters**

- **Return**

> - See for stock static information structure [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetUserSecurity(QotGetUserSecurity.Request req);`

`virtual void OnReply_GetUserSecurity(FTAPI_Conn client, uint nSerialNo, QotGetUserSecurity.Response rsp);`

- **Description**

Get a list of a specified group from watchlist

- **Parameters**

- **Return**

> - See for stock static information structure [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getUserSecurity(QotGetUserSecurity.Request req);`

`void onReply_GetUserSecurity(FTAPI_Conn client, int nSerialNo, QotGetUserSecurity.Response rsp);`

- **Description**

Get a list of a specified group from watchlist

- **Parameters**

- **Return**

> - See for stock static information structure [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetUserSecurity(const Qot_GetUserSecurity::Request &stReq);`

`virtual void OnReply_GetUserSecurity(Futu::u32_t nSerialNo, const Qot_GetUserSecurity::Response &stRsp) = 0;`

- **Description**

Get a list of a specified group from watchlist

- **Parameters**

- **Return**

> - See for stock static information structure [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetUserSecurity(req);`

- **Description**

Get a list of a specified group from watchlist

- **Parameters**

- **Return**

> - See for stock static information structure [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

The corresponding Chinese and English names of the system group are as follows

| Chinese | English |
| --- | --- |
| 全部 | All |
| 沪深 | CN |
| 港股 | HK |
| 美股 | US |
| 期权 | Options |
| 港股期权 | HK options |
| 美股期权 | US options |
| 特别关注 | Starred |
| 期货 | Futures |

Interface Limitations

- A maximum of 10 requests per 30 seconds
- Does not support position (Positions), fund treasure (Mutual Fund), foreign exchange (Forex) group query

`get_user_security(group_name)`

- **Description**

Get a list of a specified group from watchlist

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| group\_name | str | The name of the specified group from watchlist. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, watchlist is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Watchlist data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | lot\_size | int | Number of shares per lot, number of shares per contract for options, contract multiplier for futures. |
    | stock\_type | [SecurityType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9767) | Stock type. |
    | stock\_child\_type | [WrtType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421) | Warrant type. |
    | stock\_owner | str | The code of the underlying stock to which the warrant belongs, or the code of the underlying stock of the option. |
    | option\_type | [OptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9598) | Option type. |
    | strike\_time | str | The option exercise date. <br><br>Format: yyyy-MM-dd<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | strike\_price | float | Option strike price. |
    | suspension | bool | Whether the option is suspended. <br><br>True: suspension |
    | listing\_date | str | Listing date. <br><br>Format: yyyy-MM-dd |
    | stock\_id | int | Stock ID. |
    | delisting | bool | Whether is delisted. |
    | main\_contract | bool | Whether is future main contract. |
    | last\_trade\_time | str | Last trading time. <br><br>Main, current month and next month futures do not have this field. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.get_user_security("A")
if ret == RET_OK:
    print(data)
    if data.shape[0] > 0:  # If the user security list is not empty
        print(data['code'][0]) # Take the first stock code
        print(data['code'].values.tolist()) # Convert to list
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
    code    name  lot_size stock_type stock_child_type stock_owner option_type strike_time strike_price suspension listing_date        stock_id  delisting  main_contract last_trade_time
0  HK.HSImain  HSI Future Main(NOV0)        50     FUTURE              N/A                                              N/A        N/A                     71000662      False           True
1  HK.00700    Tencent Holdings       100      STOCK              N/A                                              N/A        N/A   2004-06-16  54047868453564      False          False
HK.HSImain
['HK.HSImain', 'HK.00700']

```


## Qot\_GetUserSecurity.proto


- **Description**

Get a list of a specified group from watchlist

- **Parameters**

- **Return**

> - See for stock static information structure [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetUserSecurity(QotGetUserSecurity.Request req);`

`virtual void OnReply_GetUserSecurity(MMAPI_Conn client, uint nSerialNo, QotGetUserSecurity.Response rsp);`

- **Description**

Get a list of a specified group from watchlist

- **Parameters**

- **Return**

> - See for stock static information structure [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getUserSecurity(QotGetUserSecurity.Request req);`

`void onReply_GetUserSecurity(MMAPI_Conn client, int nSerialNo, QotGetUserSecurity.Response rsp);`

- **Description**

Get a list of a specified group from watchlist

- **Parameters**

- **Return**

> - See for stock static information structure [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetUserSecurity(const Qot_GetUserSecurity::Request &stReq);`

`virtual void OnReply_GetUserSecurity(moomoo::u32_t nSerialNo, const Qot_GetUserSecurity::Response &stRsp) = 0;`

- **Description**

Get a list of a specified group from watchlist

- **Parameters**

- **Return**

> - See for stock static information structure [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetUserSecurity(req);`

- **Description**

Get a list of a specified group from watchlist

- **Parameters**

- **Return**

> - See for stock static information structure [SecurityStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5588)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

The corresponding Chinese and English names of the system group are as follows

| Chinese | English |
| --- | --- |
| 全部 | All |
| 沪深 | CN |
| 港股 | HK |
| 美股 | US |
| 期权 | Options |
| 港股期权 | HK options |
| 美股期权 | US options |
| 特别关注 | Starred |
| 期货 | Futures |

Interface Limitations

- A maximum of 10 requests per 30 seconds
- Does not support position (Positions), fund treasure (Mutual Fund), foreign exchange (Forex) group query

←
[Get Price Reminder List](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-price-reminder.html)[Get Groups From Watchlist](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-user-security-group.html)
→

## Get Filtered Warrant

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-warrant.html


`get_warrant(stock_owner='', req=None)`

- **Description**

Get Filtered Warrant (only warrants, CBBCs and Inline Warrants of HK market are surpported)

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| stock\_owner | str | Code of the underlying stock. |
| req | _WarrantRequest_ | Filter parameter combination. |

  - _WarrantRequest_'s details as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | begin | int | Data start point |
    | num | int | The number of requested data. <br><br>The maximum is 200. |
    | sort\_field | [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823) | According to which field to sort. |
    | ascend | bool | The sort direction. <br><br>True: ascending order. <br>False: descending order. |
    | type\_list | list | Warrant Type Filter List. <br><br>Data type of elements in the list is [WrtType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421). |
    | issuer\_list | list | Issuer filter list. <br><br>Data type of elements in the list is [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122). |
    | maturity\_time\_min | str | The start time of the maturity date filter range. |
    | maturity\_time\_max | str | The end time of the maturity date filter range. |
    | ipo\_period | [IpoPeriod](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2961) | Listing period. |
    | price\_type | [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794) | In/out of the money. <br><br>The Inline Warrant is not currently supported. |
    | status | [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892) | Warrant Status. |
    | cur\_price\_min | float | The filter lower limit (closed interval) of the latest price. <br><br>If not passed, the lower limit is -∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | cur\_price\_max | float | The filter upper limit (closed interval) of the latest price. <br><br>If not passed, the upper limit is +∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | strike\_price\_min | float | The lower filter limit (closed interval) of the strike price. <br><br>If not passed, the lower limit is -∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | strike\_price\_max | float | The upper filter limit (closed interval) of the strike price. <br><br>If not passed, the upper limit is +∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | street\_min | float | The lower limit (closed interval) of Outstanding percentage. <br><br>If not passed, the lower limit is -∞.<br>This field is in percentage form, so 20 is equivalent to 20%.<br>3 decimal place accuracy, the excess part is discarded. |
    | street\_max | float | The upper limit (closed interval) of Outstanding percentage. <br><br>If not passed, the upper limit is +∞.<br>This field is in percentage form, so 20 is equivalent to 20%.<br>3 decimal place accuracy, the excess part is discarded. |
    | conversion\_min | float | The lower filter limit (closed interval) of the conversion ratio. <br><br>If not passed, the lower limit is -∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | conversion\_max | float | The upper filter limit (closed interval) of the conversion ratio. <br><br>If not passed, the upper limit is +∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | vol\_min | int | The lower filter limit (closed interval) of the volume. <br><br>If not passed, the lower limit is -∞. |
    | vol\_max | int | The upper filter limit (closed interval) of the volume. <br><br>If not passed, the upper limit is +∞. |
    | premium\_min | float | The lower filter limit (closed interval) of premium value. <br><br>If not passed, the lower limit is -∞.<br>This field is in percentage form, so 20 is equivalent to 20%.<br>3 decimal place accuracy, the excess part is discarded. |
    | premium\_max | float | The upper filter limit (closed interval) of premium value. <br><br>If not passed, the upper limit is +∞.<br>This field is in percentage form, so 20 is equivalent to 20%.<br>3 decimal place accuracy, the excess part is discarded. |
    | leverage\_ratio\_min | float | The lower filter limit (closed interval) of the leverage ratio. <br><br>If not passed, the lower limit is -∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | leverage\_ratio\_max | float | The upper filter limit (closed interval) of the leverage ratio. <br><br>If not passed, the upper limit is +∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | delta\_min | float | The lower filter limit (closed interval) of the hedge value Delta. <br><br>If not passed, the lower limit is -∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | delta\_max | float | The upper filter limit (closed interval) of the hedge value Delta. <br><br>If not passed, the upper limit is +∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | implied\_min | float | The lower filter limit (closed interval) of the implied volatility. <br><br>Only calls and puts support this filtering field. <br>If not passed, the lower limit is -∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | implied\_max | float | The upper filter limit (closed interval) of the implied volatility. <br><br>Only calls and puts support this filtering field. <br>If not passed, the upper limit is +∞(3 decimal place accuracy, the excess part is discarded. |
    | recovery\_price\_min | float | The lower filter limit (closed interval) of the recovery price. <br><br>Only CBBCs support this field to filter. <br>If not passed, the lower limit is -∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | recovery\_price\_max | float | The upper filter limit (closed interval) of the recovery price. <br><br>Only CBBCs support this field to filter. <br>If not passed, the upper limit is +∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | price\_recovery\_ratio\_min | float | The lower filter limit (closed interval) of the price recovery ratio. <br><br>Only CBBCs support this field. <br>If not passed, the lower limit is -∞.<br>This field is in percentage form, so 20 is equivalent to 20%.<br>3 decimal place accuracy, the excess part is discarded. |
    | price\_recovery\_ratio\_max | float | The upper filter limit (closed interval) of the price recovery ratio. <br><br>Only CBBCs support this field. <br>If not passed, the upper limit is +∞.<br>This field is in percentage form, so 20 is equivalent to 20%.<br>3 decimal place accuracy, the excess part is discarded. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, warrant data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Warrant data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | warrant\_data\_list | pd.DataFrame | Warrant data after filtering. |
    | last\_page | bool | Weather is the last page. <br><br>True: the last page. <br>False: not the last page. |
    | all\_count | int | The total number of warrants in the filtered result. |

    - Warrant\_data\_list's detail as follows:

      | Field | Type | Description |
      | --- | --- | --- |
      | stock | str | Warrant code. |
      | stock\_owner | str | Underlying stock. |
      | type | [WrtType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421) | Warrant type. |
      | issuer | [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122) | Issuer. |
      | maturity\_time | str | Maturity date. <br><br>Format: yyyy-MM-dd |
      | list\_time | str | Listing time. <br><br>Format: yyyy-MM-dd |
      | last\_trade\_time | str | Last trading day. <br><br>Format: yyyy-MM-dd |
      | recovery\_price | float | Recovery price. <br><br>Only CBBCs support this field. |
      | conversion\_ratio | float | Conversion ratio. |
      | lot\_size | int | Quantity per lot. |
      | strike\_price | float | Strike price. |
      | last\_close\_price | float | Yesterday's close. |
      | name | str | Name. |
      | cur\_price | float | Current price. |
      | price\_change\_val | float | Price change. |
      | status | [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892) | Warrant status. |
      | bid\_price | float | Bid price. |
      | ask\_price | float | Ask price. |
      | bid\_vol | int | Bid volume. |
      | ask\_vol | int | Ask volume. |
      | volume | unsigned int | Volume. |
      | turnover | float | Turnover. |
      | score | float | Comprehensive score. |
      | premium | float | Premium. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | break\_even\_point | float | Breakeven point. |
      | leverage | float | Leverage ratio. |
      | ipop | float | In/out of the money. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | price\_recovery\_ratio | float | Price recovery ratio. <br><br>Only CBBC supports this field.<br>This field is in percentage form, so 20 is equivalent to 20%. |
      | conversion\_price | float | Conversion price. |
      | street\_rate | float | Outstanding percentage. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | street\_vol | int | Outstanding quantity. |
      | amplitude | float | Amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | issue\_size | int | Issue size. |
      | high\_price | float | High. |
      | low\_price | float | Low. |
      | implied\_volatility | float | Implied volatility. <br><br>Only calls and puts support this field. |
      | delta | float | Hedging value. <br><br>Only calls and puts support this field. |
      | effective\_leverage | float | Effective leverage.<br><br>Only calls and puts support this field. |
      | upper\_strike\_price | float | Upper bound price. <br><br>Only Inline Warrants support this field. |
      | lower\_strike\_price | float | Lower bound price. <br><br>Only Inline Warrants support this field. |
      | inline\_price\_status | [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794) | In/out of bounds. <br><br>Only Inline Warrants support this field. |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

req = WarrantRequest()
req.sort_field = SortField.TURNOVER
req.type_list = WrtType.CALL
req.cur_price_min = 0.1
req.cur_price_max = 0.2
ret, ls = quote_ctx.get_warrant("HK.00700", req)
if ret == RET_OK: # First judge whether the interface return is normal, and then fetch the data
    warrant_data_list, last_page, all_count = ls
    print(len(warrant_data_list), all_count, warrant_data_list)
    print(warrant_data_list['stock'][0]) # Take the first warrant code
    print(warrant_data_list['stock'].values.tolist()) # Convert to list
else:
    print('error: ', ls)

req = WarrantRequest()
req.sort_field = SortField.TURNOVER
req.issuer_list = ['UB','CS','BI']
ret, ls = quote_ctx.get_warrant(Market.HK, req)
if ret == RET_OK:
    warrant_data_list, last_page, all_count = ls
    print(len(warrant_data_list), all_count, warrant_data_list)
else:
    print('error: ', ls)

quote_ctx.close()  # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
2 2
    stock        name stock_owner  type issuer maturity_time   list_time last_trade_time  recovery_price  conversion_ratio  lot_size  strike_price  last_close_price  cur_price  price_change_val  change_rate  status  bid_price  ask_price   bid_vol  ask_vol    volume   turnover   score  premium  break_even_point  leverage    ipop  price_recovery_ratio  conversion_price  street_rate  street_vol  amplitude  issue_size  high_price  low_price  implied_volatility  delta  effective_leverage  list_timestamp  last_trade_timestamp  maturity_timestamp  upper_strike_price  lower_strike_price  inline_price_status
0   HK.20306  MBTENCT@EC2012A    HK.00700  CALL     MB    2020-12-01  2019-06-27      2020-11-25             NaN              50.0      5000        588.88             0.188      0.188             0.000     0.000000  NORMAL      0.000      0.188         0     10000           0          0.0   0.196    1.921            598.28    62.446  -0.319                   NaN              9.40        4.400     1584000      0.000    36000000       0.000      0.000              32.487  0.473              29.536    1.561565e+09          1.606234e+09        1.606752e+09                 NaN                 NaN                  NaN
1   HK.16545  SGTENCT@EC2102B    HK.00700  CALL     SG    2021-02-26  2020-07-14      2021-02-22             NaN             100.0     10000        700.00             0.147      0.143            -0.004    -2.721088  NORMAL      0.141      0.143  28000000  28000000           0          0.0  82.011   21.686            714.30    41.048 -16.142                   NaN             14.30        1.420     2130000      0.000   150000000       0.000      0.000              40.657  0.225               9.235    1.594656e+09          1.613923e+09        1.614269e+09                 NaN                 NaN                  NaN
HK.20306
['HK.20306', 'HK.16545']

200 358
    stock        name stock_owner    type issuer maturity_time   list_time last_trade_time  recovery_price  conversion_ratio  lot_size  strike_price  last_close_price  cur_price  price_change_val  change_rate      status  bid_price  ask_price   bid_vol   ask_vol  volume  turnover   score  premium  break_even_point  leverage     ipop  price_recovery_ratio  conversion_price  street_rate  street_vol  amplitude  issue_size  high_price  low_price  implied_volatility  delta  effective_leverage  list_timestamp  last_trade_timestamp  maturity_timestamp  upper_strike_price  lower_strike_price inline_price_status
0    HK.19839   PINGANRUIYINLINGYIGOUAC    HK.02318    CALL     UB    2020-12-31  2017-12-11      2020-12-24             NaN             100.0     50000         83.88             0.057      0.046            -0.011   -19.298246      NORMAL      0.043      0.046  30000000  30000000       0       0.0  39.585    1.642            88.480    18.923    3.779                   NaN             4.600         1.25     6250000        0.0   500000000         0.0        0.0              25.129  0.692              13.094    1.512922e+09          1.608739e+09        1.609344e+09                 NaN                 NaN                 NaN
1    HK.20084   PINGANZHONGYINLINGYIGOUAC    HK.02318    CALL     BI    2020-12-31  2017-12-19      2020-12-24             NaN             100.0     50000         83.88             0.059      0.050            -0.009   -15.254237      NORMAL      0.044      0.050  10000000  10000000       0       0.0   0.064    2.102            88.880    17.410    3.779                   NaN             5.000         0.07      350000        0.0   500000000         0.0        0.0              29.510  0.668              11.629    1.513613e+09          1.608739e+09        1.609344e+09                 NaN                 NaN                 NaN
......
198  HK.56886   UB#HSI  RC2301F   HK.800000    BULL     UB    2023-01-30  2020-03-24      2023-01-27         21200.0           20000.0     10000      21100.00             0.230      0.232             0.002     0.869565      NORMAL      0.232      0.233  30000000  30000000       0       0.0  46.619   -2.916         25740.000     5.714   25.655             25.062689          4640.000         0.01       40000        0.0   400000000         0.0        0.0                 NaN    NaN               5.714    1.584979e+09          1.674749e+09        1.675008e+09                 NaN                 NaN                 NaN
199  HK.56895   UB#XIAMIRC2012D    HK.01810    BULL     UB    2020-12-30  2020-03-24      2020-12-29             8.0              10.0      2000          7.60             2.010      1.930            -0.080    -3.980100      NORMAL      1.910      1.930   6000000   6000000       0       0.0   0.040    1.127            26.900     1.378  250.000            232.500000            19.300         0.10       60000        0.0    60000000         0.0        0.0                 NaN    NaN               1.378    1.584979e+09          1.609171e+09        1.609258e+09                 NaN                 NaN                 NaN

```


## Qot\_GetWarrant.proto


- **Description**

Get Filtered Warrant (for HK market only)

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For sorting type, refer to [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823)
> - For the warrant types, refer to [WarrantType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421)
> - For the issuer filter list, refer to [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122)
> - For IPO period, refer to [IpoPeriod](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2961)
> - For in/out of bound, refer to [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794)
> - For warrant status, refer to [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892)

- **Return**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the warrant types, refer to [WarrantType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421)
> - For the issuer filter list, refer to [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122)
> - For in/out of bound, refer to [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794)
> - For warrant status, refer to [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetWarrant(QotGetWarrant.Request req);`

`virtual void OnReply_GetWarrant(FTAPI_Conn client, uint nSerialNo, QotGetWarrant.Response rsp);`

- **Description**

Get Filtered Warrant (for HK market only)

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For sorting type, refer to [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823)
> - For the warrant types, refer to [WarrantType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421)
> - For the issuer filter list, refer to [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122)
> - For IPO period, refer to [IpoPeriod](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2961)
> - For in/out of bound, refer to [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794)
> - For warrant status, refer to [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892)

- **Return**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the warrant types, refer to [WarrantType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421)
> - For the issuer filter list, refer to [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122)
> - For in/out of bound, refer to [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794)
> - For warrant status, refer to [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getWarrant(QotGetWarrant.Request req);`

`void onReply_GetWarrant(FTAPI_Conn client, int nSerialNo, QotGetWarrant.Response rsp);`

- **Description**

Get Filtered Warrant (for HK market only)

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For sorting type, refer to [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823)
> - For the warrant types, refer to [WarrantType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421)
> - For the issuer filter list, refer to [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122)
> - For IPO period, refer to [IpoPeriod](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2961)
> - For in/out of bound, refer to [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794)
> - For warrant status, refer to [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892)

- **Return**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the warrant types, refer to [WarrantType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421)
> - For the issuer filter list, refer to [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122)
> - For in/out of bound, refer to [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794)
> - For warrant status, refer to [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetWarrant(const Qot_GetWarrant::Request &stReq);`

`virtual void OnReply_GetWarrant(Futu::u32_t nSerialNo, const Qot_GetWarrant::Response &stRsp) = 0;`

- **Description**

Get Filtered Warrant (for HK market only)

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For sorting type, refer to [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823)
> - For the warrant types, refer to [WarrantType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421)
> - For the issuer filter list, refer to [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122)
> - For IPO period, refer to [IpoPeriod](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2961)
> - For in/out of bound, refer to [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794)
> - For warrant status, refer to [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892)

- **Return**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the warrant types, refer to [WarrantType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421)
> - For the issuer filter list, refer to [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122)
> - For in/out of bound, refer to [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794)
> - For warrant status, refer to [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetWarrant(req);`

- **Description**

Get Filtered Warrant (for HK market only)

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For sorting type, refer to [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823)
> - For the warrant types, refer to [WarrantType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421)
> - For the issuer filter list, refer to [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122)
> - For IPO period, refer to [IpoPeriod](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2961)
> - For in/out of bound, refer to [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794)
> - For warrant status, refer to [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892)

- **Return**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the warrant types, refer to [WarrantType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421)
> - For the issuer filter list, refer to [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122)
> - For in/out of bound, refer to [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794)
> - For warrant status, refer to [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- Hong Kong stock BMP permission does not support calling this API
- A maximum of 60 requests per 30 seconds
- The maximum number of data per request is 200

`get_warrant(stock_owner='', req=None)`

- **Description**

Get Filtered Warrant (only warrants, CBBCs and Inline Warrants of HK market are surpported)

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| stock\_owner | str | Code of the underlying stock. |
| req | _WarrantRequest_ | Filter parameter combination. |

  - _WarrantRequest_'s details as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | begin | int | Data start point |
    | num | int | The number of requested data. <br><br>The maximum is 200. |
    | sort\_field | [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823) | According to which field to sort. |
    | ascend | bool | The sort direction. <br><br>True: ascending order. <br>False: descending order. |
    | type\_list | list | Warrant Type Filter List. <br><br>Data type of elements in the list is [WrtType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421). |
    | issuer\_list | list | Issuer filter list. <br><br>Data type of elements in the list is [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122). |
    | maturity\_time\_min | str | The start time of the maturity date filter range. |
    | maturity\_time\_max | str | The end time of the maturity date filter range. |
    | ipo\_period | [IpoPeriod](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2961) | Listing period. |
    | price\_type | [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794) | In/out of the money. <br><br>The Inline Warrant is not currently supported. |
    | status | [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892) | Warrant Status. |
    | cur\_price\_min | float | The filter lower limit (closed interval) of the latest price. <br><br>If not passed, the lower limit is -∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | cur\_price\_max | float | The filter upper limit (closed interval) of the latest price. <br><br>If not passed, the upper limit is +∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | strike\_price\_min | float | The lower filter limit (closed interval) of the strike price. <br><br>If not passed, the lower limit is -∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | strike\_price\_max | float | The upper filter limit (closed interval) of the strike price. <br><br>If not passed, the upper limit is +∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | street\_min | float | The lower limit (closed interval) of Outstanding percentage. <br><br>If not passed, the lower limit is -∞.<br>This field is in percentage form, so 20 is equivalent to 20%.<br>3 decimal place accuracy, the excess part is discarded. |
    | street\_max | float | The upper limit (closed interval) of Outstanding percentage. <br><br>If not passed, the upper limit is +∞.<br>This field is in percentage form, so 20 is equivalent to 20%.<br>3 decimal place accuracy, the excess part is discarded. |
    | conversion\_min | float | The lower filter limit (closed interval) of the conversion ratio. <br><br>If not passed, the lower limit is -∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | conversion\_max | float | The upper filter limit (closed interval) of the conversion ratio. <br><br>If not passed, the upper limit is +∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | vol\_min | int | The lower filter limit (closed interval) of the volume. <br><br>If not passed, the lower limit is -∞. |
    | vol\_max | int | The upper filter limit (closed interval) of the volume. <br><br>If not passed, the upper limit is +∞. |
    | premium\_min | float | The lower filter limit (closed interval) of premium value. <br><br>If not passed, the lower limit is -∞.<br>This field is in percentage form, so 20 is equivalent to 20%.<br>3 decimal place accuracy, the excess part is discarded. |
    | premium\_max | float | The upper filter limit (closed interval) of premium value. <br><br>If not passed, the upper limit is +∞.<br>This field is in percentage form, so 20 is equivalent to 20%.<br>3 decimal place accuracy, the excess part is discarded. |
    | leverage\_ratio\_min | float | The lower filter limit (closed interval) of the leverage ratio. <br><br>If not passed, the lower limit is -∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | leverage\_ratio\_max | float | The upper filter limit (closed interval) of the leverage ratio. <br><br>If not passed, the upper limit is +∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | delta\_min | float | The lower filter limit (closed interval) of the hedge value Delta. <br><br>If not passed, the lower limit is -∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | delta\_max | float | The upper filter limit (closed interval) of the hedge value Delta. <br><br>If not passed, the upper limit is +∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | implied\_min | float | The lower filter limit (closed interval) of the implied volatility. <br><br>Only calls and puts support this filtering field. <br>If not passed, the lower limit is -∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | implied\_max | float | The upper filter limit (closed interval) of the implied volatility. <br><br>Only calls and puts support this filtering field. <br>If not passed, the upper limit is +∞(3 decimal place accuracy, the excess part is discarded. |
    | recovery\_price\_min | float | The lower filter limit (closed interval) of the recovery price. <br><br>Only CBBCs support this field to filter. <br>If not passed, the lower limit is -∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | recovery\_price\_max | float | The upper filter limit (closed interval) of the recovery price. <br><br>Only CBBCs support this field to filter. <br>If not passed, the upper limit is +∞.<br>3 decimal place accuracy, the excess part is discarded. |
    | price\_recovery\_ratio\_min | float | The lower filter limit (closed interval) of the price recovery ratio. <br><br>Only CBBCs support this field. <br>If not passed, the lower limit is -∞.<br>This field is in percentage form, so 20 is equivalent to 20%.<br>3 decimal place accuracy, the excess part is discarded. |
    | price\_recovery\_ratio\_max | float | The upper filter limit (closed interval) of the price recovery ratio. <br><br>Only CBBCs support this field. <br>If not passed, the upper limit is +∞.<br>This field is in percentage form, so 20 is equivalent to 20%.<br>3 decimal place accuracy, the excess part is discarded. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, warrant data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Warrant data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | warrant\_data\_list | pd.DataFrame | Warrant data after filtering. |
    | last\_page | bool | Weather is the last page. <br><br>True: the last page. <br>False: not the last page. |
    | all\_count | int | The total number of warrants in the filtered result. |

    - Warrant\_data\_list's detail as follows:

      | Field | Type | Description |
      | --- | --- | --- |
      | stock | str | Warrant code. |
      | stock\_owner | str | Underlying stock. |
      | type | [WrtType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421) | Warrant type. |
      | issuer | [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122) | Issuer. |
      | maturity\_time | str | Maturity date. <br><br>Format: yyyy-MM-dd |
      | list\_time | str | Listing time. <br><br>Format: yyyy-MM-dd |
      | last\_trade\_time | str | Last trading day. <br><br>Format: yyyy-MM-dd |
      | recovery\_price | float | Recovery price. <br><br>Only CBBCs support this field. |
      | conversion\_ratio | float | Conversion ratio. |
      | lot\_size | int | Quantity per lot. |
      | strike\_price | float | Strike price. |
      | last\_close\_price | float | Yesterday's close. |
      | name | str | Name. |
      | cur\_price | float | Current price. |
      | price\_change\_val | float | Price change. |
      | status | [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892) | Warrant status. |
      | bid\_price | float | Bid price. |
      | ask\_price | float | Ask price. |
      | bid\_vol | int | Bid volume. |
      | ask\_vol | int | Ask volume. |
      | volume | unsigned int | Volume. |
      | turnover | float | Turnover. |
      | score | float | Comprehensive score. |
      | premium | float | Premium. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | break\_even\_point | float | Breakeven point. |
      | leverage | float | Leverage ratio. |
      | ipop | float | In/out of the money. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | price\_recovery\_ratio | float | Price recovery ratio. <br><br>Only CBBC supports this field.<br>This field is in percentage form, so 20 is equivalent to 20%. |
      | conversion\_price | float | Conversion price. |
      | street\_rate | float | Outstanding percentage. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | street\_vol | int | Outstanding quantity. |
      | amplitude | float | Amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
      | issue\_size | int | Issue size. |
      | high\_price | float | High. |
      | low\_price | float | Low. |
      | implied\_volatility | float | Implied volatility. <br><br>Only calls and puts support this field. |
      | delta | float | Hedging value. <br><br>Only calls and puts support this field. |
      | effective\_leverage | float | Effective leverage. |
      | upper\_strike\_price | float | Upper bound price. <br><br>Only Inline Warrants support this field. |
      | lower\_strike\_price | float | Lower bound price. <br><br>Only Inline Warrants support this field. |
      | inline\_price\_status | [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794) | In/out of bounds. <br><br>Only Inline Warrants support this field. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

req = WarrantRequest()
req.sort_field = SortField.TURNOVER
req.type_list = WrtType.CALL
req.cur_price_min = 0.1
req.cur_price_max = 0.2
ret, ls = quote_ctx.get_warrant("HK.00700", req)
if ret == RET_OK: # First judge whether the interface return is normal, and then fetch the data
    warrant_data_list, last_page, all_count = ls
    print(len(warrant_data_list), all_count, warrant_data_list)
    print(warrant_data_list['stock'][0]) # Take the first warrant code
    print(warrant_data_list['stock'].values.tolist()) # Convert to list
else:
    print('error: ', ls)

req = WarrantRequest()
req.sort_field = SortField.TURNOVER
req.issuer_list = ['UB','CS','BI']
ret, ls = quote_ctx.get_warrant(Market.HK, req)
if ret == RET_OK:
    warrant_data_list, last_page, all_count = ls
    print(len(warrant_data_list), all_count, warrant_data_list)
else:
    print('error: ', ls)

quote_ctx.close()  # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
2 2
    stock        name stock_owner  type issuer maturity_time   list_time last_trade_time  recovery_price  conversion_ratio  lot_size  strike_price  last_close_price  cur_price  price_change_val  change_rate  status  bid_price  ask_price   bid_vol  ask_vol    volume   turnover   score  premium  break_even_point  leverage    ipop  price_recovery_ratio  conversion_price  street_rate  street_vol  amplitude  issue_size  high_price  low_price  implied_volatility  delta  effective_leverage  list_timestamp  last_trade_timestamp  maturity_timestamp  upper_strike_price  lower_strike_price  inline_price_status
0   HK.20306  MBTENCT@EC2012A    HK.00700  CALL     MB    2020-12-01  2019-06-27      2020-11-25             NaN              50.0      5000        588.88             0.188      0.188             0.000     0.000000  NORMAL      0.000      0.188         0     10000           0          0.0   0.196    1.921            598.28    62.446  -0.319                   NaN              9.40        4.400     1584000      0.000    36000000       0.000      0.000              32.487  0.473              29.536    1.561565e+09          1.606234e+09        1.606752e+09                 NaN                 NaN                  NaN
1   HK.16545  SGTENCT@EC2102B    HK.00700  CALL     SG    2021-02-26  2020-07-14      2021-02-22             NaN             100.0     10000        700.00             0.147      0.143            -0.004    -2.721088  NORMAL      0.141      0.143  28000000  28000000           0          0.0  82.011   21.686            714.30    41.048 -16.142                   NaN             14.30        1.420     2130000      0.000   150000000       0.000      0.000              40.657  0.225               9.235    1.594656e+09          1.613923e+09        1.614269e+09                 NaN                 NaN                  NaN
HK.20306
['HK.20306', 'HK.16545']

200 358
    stock        name stock_owner    type issuer maturity_time   list_time last_trade_time  recovery_price  conversion_ratio  lot_size  strike_price  last_close_price  cur_price  price_change_val  change_rate      status  bid_price  ask_price   bid_vol   ask_vol  volume  turnover   score  premium  break_even_point  leverage     ipop  price_recovery_ratio  conversion_price  street_rate  street_vol  amplitude  issue_size  high_price  low_price  implied_volatility  delta  effective_leverage  list_timestamp  last_trade_timestamp  maturity_timestamp  upper_strike_price  lower_strike_price inline_price_status
0    HK.19839   PINGANRUIYINLINGYIGOUAC    HK.02318    CALL     UB    2020-12-31  2017-12-11      2020-12-24             NaN             100.0     50000         83.88             0.057      0.046            -0.011   -19.298246      NORMAL      0.043      0.046  30000000  30000000       0       0.0  39.585    1.642            88.480    18.923    3.779                   NaN             4.600         1.25     6250000        0.0   500000000         0.0        0.0              25.129  0.692              13.094    1.512922e+09          1.608739e+09        1.609344e+09                 NaN                 NaN                 NaN
1    HK.20084   PINGANZHONGYINLINGYIGOUAC    HK.02318    CALL     BI    2020-12-31  2017-12-19      2020-12-24             NaN             100.0     50000         83.88             0.059      0.050            -0.009   -15.254237      NORMAL      0.044      0.050  10000000  10000000       0       0.0   0.064    2.102            88.880    17.410    3.779                   NaN             5.000         0.07      350000        0.0   500000000         0.0        0.0              29.510  0.668              11.629    1.513613e+09          1.608739e+09        1.609344e+09                 NaN                 NaN                 NaN
......
198  HK.56886   UB#HSI  RC2301F   HK.800000    BULL     UB    2023-01-30  2020-03-24      2023-01-27         21200.0           20000.0     10000      21100.00             0.230      0.232             0.002     0.869565      NORMAL      0.232      0.233  30000000  30000000       0       0.0  46.619   -2.916         25740.000     5.714   25.655             25.062689          4640.000         0.01       40000        0.0   400000000         0.0        0.0                 NaN    NaN               5.714    1.584979e+09          1.674749e+09        1.675008e+09                 NaN                 NaN                 NaN
199  HK.56895   UB#XIAMIRC2012D    HK.01810    BULL     UB    2020-12-30  2020-03-24      2020-12-29             8.0              10.0      2000          7.60             2.010      1.930            -0.080    -3.980100      NORMAL      1.910      1.930   6000000   6000000       0       0.0   0.040    1.127            26.900     1.378  250.000            232.500000            19.300         0.10       60000        0.0    60000000         0.0        0.0                 NaN    NaN               1.378    1.584979e+09          1.609171e+09        1.609258e+09                 NaN                 NaN                 NaN

```


## Qot\_GetWarrant.proto


- **Description**

Get Filtered Warrant (for HK market only)

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For sorting type, refer to [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823)
> - For the warrant types, refer to [WarrantType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421)
> - For the issuer filter list, refer to [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122)
> - For IPO period, refer to [IpoPeriod](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2961)
> - For in/out of bound, refer to [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794)
> - For warrant status, refer to [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892)

- **Return**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the warrant types, refer to [WarrantType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421)
> - For the issuer filter list, refer to [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122)
> - For in/out of bound, refer to [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794)
> - For warrant status, refer to [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetWarrant(QotGetWarrant.Request req);`

`virtual void OnReply_GetWarrant(MMAPI_Conn client, uint nSerialNo, QotGetWarrant.Response rsp);`

- **Description**

Get Filtered Warrant (for HK market only)

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For sorting type, refer to [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823)
> - For the warrant types, refer to [WarrantType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421)
> - For the issuer filter list, refer to [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122)
> - For IPO period, refer to [IpoPeriod](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2961)
> - For in/out of bound, refer to [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794)
> - For warrant status, refer to [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892)

- **Return**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the warrant types, refer to [WarrantType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421)
> - For the issuer filter list, refer to [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122)
> - For in/out of bound, refer to [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794)
> - For warrant status, refer to [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getWarrant(QotGetWarrant.Request req);`

`void onReply_GetWarrant(MMAPI_Conn client, int nSerialNo, QotGetWarrant.Response rsp);`

- **Description**

Get Filtered Warrant (for HK market only)

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For sorting type, refer to [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823)
> - For the warrant types, refer to [WarrantType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421)
> - For the issuer filter list, refer to [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122)
> - For IPO period, refer to [IpoPeriod](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2961)
> - For in/out of bound, refer to [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794)
> - For warrant status, refer to [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892)

- **Return**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the warrant types, refer to [WarrantType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421)
> - For the issuer filter list, refer to [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122)
> - For in/out of bound, refer to [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794)
> - For warrant status, refer to [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetWarrant(const Qot_GetWarrant::Request &stReq);`

`virtual void OnReply_GetWarrant(moomoo::u32_t nSerialNo, const Qot_GetWarrant::Response &stRsp) = 0;`

- **Description**

Get Filtered Warrant (for HK market only)

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For sorting type, refer to [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823)
> - For the warrant types, refer to [WarrantType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421)
> - For the issuer filter list, refer to [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122)
> - For IPO period, refer to [IpoPeriod](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2961)
> - For in/out of bound, refer to [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794)
> - For warrant status, refer to [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892)

- **Return**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the warrant types, refer to [WarrantType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421)
> - For the issuer filter list, refer to [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122)
> - For in/out of bound, refer to [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794)
> - For warrant status, refer to [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetWarrant(req);`

- **Description**

Get Filtered Warrant (for HK market only)

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For sorting type, refer to [SortField](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5823)
> - For the warrant types, refer to [WarrantType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421)
> - For the issuer filter list, refer to [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122)
> - For IPO period, refer to [IpoPeriod](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2961)
> - For in/out of bound, refer to [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794)
> - For warrant status, refer to [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892)

- **Return**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the warrant types, refer to [WarrantType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2421)
> - For the issuer filter list, refer to [Issuer](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5122)
> - For in/out of bound, refer to [PriceType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9794)
> - For warrant status, refer to [WarrantStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5892)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- Hong Kong stock BMP permission does not support calling this API
- A maximum of 60 requests per 30 seconds
- The maximum number of data per request is 200

←
[Get Option Chain](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-chain.html)[Get Related Data of a Specific Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-referencestock-list.html)
→

## Modify the Watchlist

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/modify-user-security.html


`modify_user_security(group_name, op, code_list)`

- **Description**

Modify the specific group from the watchlist (you cannot modify the system group)

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| group\_name | str | The name of the group from the watchlist that needs to be modified. |
| op | [ModifyUserSecurityOp](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5843) | Operation type. |
| code\_list | list | Stock list. <br><br>Data type of elements in the list is str. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| msg | str | If ret == RET\_OK, "success" is returned. |
| If ret != RET\_OK, error description is returned. |

- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.modify_user_security("A", ModifyUserSecurityOp.ADD, ['HK.00700'])
if ret == RET_OK:
    print(data) # Return success
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
success

```


## Qot\_ModifyUserSecurity.proto


- **Description**

Modify the specific group from the watchlist (you cannot modify the system group)

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint ModifyUserSecurity(QotModifyUserSecurity.Request req);`

`virtual void OnReply_ModifyUserSecurity(FTAPI_Conn client, uint nSerialNo, QotModifyUserSecurity.Response rsp);`

- **Description**

Modify the specific group from the watchlist (you cannot modify the system group)

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int modifyUserSecurity(QotModifyUserSecurity.Request req);`

`void onReply_ModifyUserSecurity(FTAPI_Conn client, int nSerialNo, QotModifyUserSecurity.Response rsp);`

- **Description**

Modify the specific group from the watchlist (you cannot modify the system group)

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t ModifyUserSecurity(const Qot_ModifyUserSecurity::Request &stReq);`

`virtual void OnReply_ModifyUserSecurity(Futu::u32_t nSerialNo, const Qot_ModifyUserSecurity::Response &stRsp) = 0;`

- **Description**

Modify the specific group from the watchlist (you cannot modify the system group)

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`ModifyUserSecurity(req);`

- **Description**

Modify the specific group from the watchlist (you cannot modify the system group)

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds
- You can only modify custom groups, not the system group
- There is an upper limit on the number of "all" watchlist: 500 for untraded customers and 2000 for traded clients (when adding stocks to other groups, the "all" watchlist will also increase synchronously)
- If there are multiple groups with a same name, the first group will be operated

`modify_user_security(group_name, op, code_list)`

- **Description**

Modify the specific group from the watchlist (you cannot modify the system group)

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| group\_name | str | The name of the group from the watchlist that needs to be modified. |
| op | [ModifyUserSecurityOp](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5843) | Operation type. |
| code\_list | list | Stock list. <br><br>Data type of elements in the list is str. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| msg | str | If ret == RET\_OK, "success" is returned. |
| If ret != RET\_OK, error description is returned. |

- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.modify_user_security("A", ModifyUserSecurityOp.ADD, ['HK.00700'])
if ret == RET_OK:
    print(data) # Return success
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
success

```


## Qot\_ModifyUserSecurity.proto


- **Description**

Modify the specific group from the watchlist (you cannot modify the system group)

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint ModifyUserSecurity(QotModifyUserSecurity.Request req);`

`virtual void OnReply_ModifyUserSecurity(MMAPI_Conn client, uint nSerialNo, QotModifyUserSecurity.Response rsp);`

- **Description**

Modify the specific group from the watchlist (you cannot modify the system group)

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int modifyUserSecurity(QotModifyUserSecurity.Request req);`

`void onReply_ModifyUserSecurity(MMAPI_Conn client, int nSerialNo, QotModifyUserSecurity.Response rsp);`

- **Description**

Modify the specific group from the watchlist (you cannot modify the system group)

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t ModifyUserSecurity(const Qot_ModifyUserSecurity::Request &stReq);`

`virtual void OnReply_ModifyUserSecurity(moomoo::u32_t nSerialNo, const Qot_ModifyUserSecurity::Response &stRsp) = 0;`

- **Description**

Modify the specific group from the watchlist (you cannot modify the system group)

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`ModifyUserSecurity(req);`

- **Description**

Modify the specific group from the watchlist (you cannot modify the system group)

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 10 requests per 30 seconds
- You can only modify custom groups, not the system group
- There is an upper limit on the number of "all" watchlist: 500 for untraded customers and 2000 for traded clients (when adding stocks to other groups, the "all" watchlist will also increase synchronously)
- If there are multiple groups with a same name, the first group will be operated

←
[Get Groups From Watchlist](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-user-security-group.html)[Price Reminder Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-price-reminder.html)
→

## Overview

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/overview.html


- 裸协议

| Module | Interface Name | Function Description |
| --- | --- | --- |
| Real-time Data | Subscription | [subscribe](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html#5009) | Subscribe real-time market data |
| [unsubscribe](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html#1052) | Unsubscribe subscriptions |
| [unsubscribe\_all](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html#771) | Unsubscribe all subscriptions |
| [query\_subscription](https://openapi.moomoo.com/moomoo-api-doc/en/quote/query-subscription.html) | Get subscription information |
| Push and Callback | [StockQuoteHandlerBase](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-stock-quote.html) | Real-time quote callback |
| [OrderBookHandlerBase](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-order-book.html) | Real-time order book callback |
| [CurKlineHandlerBase](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-kl.html) | Real-time candlestick callback |
| [TickerHandlerBase](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-ticker.html) | Real-time tick-by-tick callback |
| [RTDataHandlerBase](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-rt.html) | Real-time time frame callback |
| [BrokerHandlerBase](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-broker.html) | Real-time broker queue callback |
| Get | [get\_market\_snapshot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-snapshot.html) | Get market snapshot |
| [get\_stock\_quote](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-stock-quote.html) | Get real-time quote |
| [get\_order\_book](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-order-book.html) | Get real-time order book |
| [get\_cur\_kline](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-kl.html) | Get real-time candlestick |
| [get\_rt\_data](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-rt.html) | Get real-time time frame data |
| [get\_rt\_ticker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ticker.html) | Get real-time tick-by-tick |
| [get\_broker\_queue](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-broker.html) | Get real-time broker queue |
| Basic Data | [get\_market\_state](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-state.html) | Get market status of securities |
| [get\_capital\_flow](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-capital-flow.html) | Get capital flow |
| [get\_capital\_distribution](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-capital-distribution.html) | Get capital distribution |
| [get\_owner\_plate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-owner-plate.html) | Get the stock ownership plate |
| [request\_history\_kline](https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-history-kline.html) | Get historical candlesticks |
| [get\_rehab](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-rehab.html) | Get the stock adjustment factor |
| Related Derivatives | [get\_option\_expiration\_date](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-expiration-date.html) | Query all expiration dates of option chains through the underlying stock. |
| [get\_option\_chain](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-chain.html) | Get the option chain from an underlying stock |
| [get\_warrant](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-warrant.html) | Get filtered warrant (for HK market only) |
| [get\_referencestock\_list](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-referencestock-list.html) | Get related data of securities |
| [get\_future\_info](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-future-info.html) | Get futures contract information |
| Market Filter | [get\_stock\_filter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-stock-filter.html) | Filter stocks by condition |
| [get\_plate\_stock](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-stock.html) | Get the list of stocks in the plate |
| [get\_plate\_list](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-list.html) | Get plate list |
| [get\_stock\_basicinfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-static-info.html) | Get stock basic information |
| [get\_ipo\_list](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ipo-list.html) | Get IPO information of a specific market |
| [get\_global\_state](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-global-state.html) | Get global status |
| [request\_trading\_days](https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-trading-days.html) | Get trading calendar |
| Customization | [get\_history\_kl\_quota](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-history-kl-quota.html) | Get usage details of historical candlestick quota |
| [set\_price\_reminder](https://openapi.moomoo.com/moomoo-api-doc/en/quote/set-price-reminder.html) | Add, delete, modify, enable, and disable price reminders for specified stocks |
| [get\_price\_reminder](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-price-reminder.html) | Get a list of price reminders set for the specified stock or market |
| [get\_user\_security\_group](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-user-security-group.html) | Get a list of groups from the user watchlist |
| [get\_user\_security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-user-security.html) | Get a list of a specified group from watchlist |
| [modify\_user\_security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/modify-user-security.html) | Modify the specific group from the watchlist |
| [PriceReminderHandlerBase](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-price-reminder.html) | The price reminder notification callback |

| Module | Interface Name | Function Description |
| --- | --- | --- |
| Real-time Data | Subscription | [Sub](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html) | Subscribe or unsubscribe real-time market data |
| [GetSubInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/query-subscription.html) | Get subscription information |
| Push and Callback | [UpdateBasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-stock-quote.html) | Real-time quote callback |
| [UpdateOrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-order-book.html) | Real-time order book callback |
| [UpdateKL](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-kl.html) | Real-time candlestick callback |
| [UpdateTicker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-ticker.html) | Real-time tick-by-tick callback |
| [UpdateRT](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-rt.html) | Real-time time frame callback |
| [UpdateBroker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-broker.html) | Real-time broker queue callback |
| Get | [GetSecuritySnapshot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-snapshot.html) | Get market snapshot |
| [GetBasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-stock-quote.html) | Get real-time quote |
| [GetOrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-order-book.html) | Get real-time order book |
| [GetKL](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-kl.html) | Get real-time candlestick |
| [GetRT](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-rt.html) | Get real-time time frame data |
| [GetTicker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ticker.html) | Get real-time tick-by-tick |
| [GetBroker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-broker.html) | Get real-time broker queue |
| Basic Data | [GetMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-state.html) | Get market status of securities |
| [GetCapitalFlow](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-capital-flow.html) | Get capital flow |
| [GetCapitalDistribution](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-capital-distribution.html) | Get capital distribution |
| [GetOwnerPlate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-owner-plate.html) | Get the stock ownership plate |
| [RequestHistoryKL](https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-history-kline.html) | Get historical candlesticks |
| [RequestRehab](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-rehab.html) | Get the stock adjustment factor |
| Related Derivatives | [GetOptionExpirationDate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-expiration-date.html) | Query all expiration dates of option chains through the underlying stock. |
| [GetOptionChain](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-chain.html) | Get the option chain from an underlying stock |
| [GetWarrant](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-warrant.html) | Get filtered warrant (for HK market only) |
| [GetReference](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-referencestock-list.html) | Get related data of securities |
| [GetFutureInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-future-info.html) | Get futures contract information |
| Market Filter | [StockFilter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-stock-filter.html) | Filter stocks by condition |
| [GetPlateSecurity](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-stock.html) | Get the list of stocks in the plate |
| [GetPlateSet](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-list.html) | Get plate list |
| [GetStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-static-info.html) | Get stock basic information |
| [GetIpoList](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ipo-list.html) | Get IPO information of a specific market |
| [GetGlobalState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-global-state.html) | Get global status |
| [RequestTradeDate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-trading-days.html) | Get trading calendar |
| Customization | [RequestHistoryKLQuota](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-history-kl-quota.html) | Get usage details of historical candlestick quota |
| [SetPriceReminder](https://openapi.moomoo.com/moomoo-api-doc/en/quote/set-price-reminder.html) | Add, delete, modify, enable, and disable price reminders for specified stocks |
| [GetPriceReminder](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-price-reminder.html) | Get a list of price reminders set for the specified stock or market |
| [GetUserSecurityGroup](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-user-security-group.html) | Get a list of groups from the user watchlist |
| [GetUserSecurity](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-user-security.html) | Get a list of a specified group from watchlist |
| [ModifyUserSecurity](https://openapi.moomoo.com/moomoo-api-doc/en/quote/modify-user-security.html) | Modify the specific group from the watchlist |
| [UpdatePriceReminder](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-price-reminder.html) | The price reminder notification callback |

| Module | Interface Name | Function Description |
| --- | --- | --- |
| Real-time Data | Subscription | [sub](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html) | Subscribe or unsubscribe real-time market data |
| [getSubInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/query-subscription.html) | Get subscription information |
| Push and Callback | [updateBasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-stock-quote.html) | Real-time quote callback |
| [updateOrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-order-book.html) | Real-time order book callback |
| [updateKL](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-kl.html) | Real-time candlestick callback |
| [updateTicker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-ticker.html) | Real-time tick-by-tick callback |
| [updateRT](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-rt.html) | Real-time time frame callback |
| [updateBroker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-broker.html) | Real-time broker queue callback |
| Get | [getSecuritySnapshot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-snapshot.html) | Get market snapshot |
| [getBasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-stock-quote.html) | Get real-time quote |
| [getOrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-order-book.html) | Get real-time order book |
| [getKL](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-kl.html) | Get real-time candlestick |
| [getRT](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-rt.html) | Get real-time time frame data |
| [getTicker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ticker.html) | Get real-time tick-by-tick |
| [getBroker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-broker.html) | Get real-time broker queue |
| Basic Data | [getMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-state.html) | Get market status of securities |
| [getCapitalFlow](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-capital-flow.html) | Get capital flow |
| [getCapitalDistribution](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-capital-distribution.html) | Get capital distribution |
| [getOwnerPlate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-owner-plate.html) | Get the stock ownership plate |
| [requestHistoryKL](https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-history-kline.html) | Get historical candlesticks |
| [requestRehab](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-rehab.html) | Get the stock adjustment factor |
| Related Derivatives | [getOptionExpirationDate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-expiration-date.html) | Query all expiration dates of option chains through the underlying stock. |
| [getOptionChain](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-chain.html) | Get the option chain from an underlying stock |
| [getWarrant](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-warrant.html) | Get filtered warrant (for HK market only) |
| [getReference](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-referencestock-list.html) | Get related data of securities |
| [getFutureInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-future-info.html) | Get futures contract information |
| Market Filter | [stockFilter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-stock-filter.html) | Filter stocks by condition |
| [getPlateSecurity](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-stock.html) | Get the list of stocks in the plate |
| [getPlateSet](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-list.html) | Get plate list |
| [getStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-static-info.html) | Get stock basic information |
| [getIpoList](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ipo-list.html) | Get IPO information of a specific market |
| [getGlobalState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-global-state.html) | Get global status |
| [requestTradeDate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-trading-days.html) | Get trading calendar |
| Customization | [requestHistoryKLQuota](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-history-kl-quota.html) | Get usage details of historical candlestick quota |
| [setPriceReminder](https://openapi.moomoo.com/moomoo-api-doc/en/quote/set-price-reminder.html) | Add, delete, modify, enable, and disable price reminders for specified stocks |
| [getPriceReminder](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-price-reminder.html) | Get a list of price reminders set for the specified stock or market |
| [getUserSecurityGroup](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-user-security-group.html) | Get a list of groups from the user watchlist |
| [getUserSecurity](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-user-security.html) | Get a list of a specified group from watchlist |
| [modifyUserSecurity](https://openapi.moomoo.com/moomoo-api-doc/en/quote/modify-user-security.html) | Modify the specific group from the watchlist |
| [updatePriceReminder](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-price-reminder.html) | The price reminder notification callback |

| Module | Interface Name | Function Description |
| --- | --- | --- |
| Real-time Data | Subscription | [Sub](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html) | Subscribe or unsubscribe real-time market data |
| [GetSubInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/query-subscription.html) | Get subscription information |
| Push and Callback | [UpdateBasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-stock-quote.html) | Real-time quote callback |
| [UpdateOrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-order-book.html) | Real-time order book callback |
| [UpdateKL](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-kl.html) | Real-time candlestick callback |
| [UpdateTicker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-ticker.html) | Real-time tick-by-tick callback |
| [UpdateRT](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-rt.html) | Real-time time frame callback |
| [UpdateBroker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-broker.html) | Real-time broker queue callback |
| Get | [GetSecuritySnapshot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-snapshot.html) | Get market snapshot |
| [GetBasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-stock-quote.html) | Get real-time quote |
| [GetOrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-order-book.html) | Get real-time order book |
| [GetKL](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-kl.html) | Get real-time candlestick |
| [GetRT](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-rt.html) | Get real-time time frame data |
| [GetTicker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ticker.html) | Get real-time tick-by-tick |
| [GetBroker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-broker.html) | Get real-time broker queue |
| Basic Data | [GetMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-state.html) | Get market status of securities |
| [GetCapitalFlow](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-capital-flow.html) | Get capital flow |
| [GetCapitalDistribution](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-capital-distribution.html) | Get capital distribution |
| [GetOwnerPlate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-owner-plate.html) | Get the stock ownership plate |
| [RequestHistoryKL](https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-history-kline.html) | Get historical candlesticks |
| [RequestRehab](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-rehab.html) | Get the stock adjustment factor |
| Related Derivatives | [GetOptionExpirationDate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-expiration-date.html) | Query all expiration dates of option chains through the underlying stock. |
| [GetOptionChain](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-chain.html) | Get the option chain from an underlying stock |
| [GetWarrant](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-warrant.html) | Get filtered warrant (for HK market only) |
| [GetReference](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-referencestock-list.html) | Get related data of securities |
| [GetFutureInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-future-info.html) | Get futures contract information |
| Market Filter | [StockFilter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-stock-filter.html) | Filter stocks by condition |
| [GetPlateSecurity](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-stock.html) | Get the list of stocks in the plate |
| [GetPlateSet](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-list.html) | Get plate list |
| [GetStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-static-info.html) | Get stock basic information |
| [GetIpoList](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ipo-list.html) | Get IPO information of a specific market |
| [GetGlobalState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-global-state.html) | Get global status |
| [RequestTradeDate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-trading-days.html) | Get trading calendar |
| Customization | [RequestHistoryKLQuota](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-history-kl-quota.html) | Get usage details of historical candlestick quota |
| [SetPriceReminder](https://openapi.moomoo.com/moomoo-api-doc/en/quote/set-price-reminder.html) | Add, delete, modify, enable, and disable price reminders for specified stocks |
| [GetPriceReminder](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-price-reminder.html) | Get a list of price reminders set for the specified stock or market |
| [GetUserSecurityGroup](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-user-security-group.html) | Get a list of groups from the user watchlist |
| [GetUserSecurity](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-user-security.html) | Get a list of a specified group from watchlist |
| [ModifyUserSecurity](https://openapi.moomoo.com/moomoo-api-doc/en/quote/modify-user-security.html) | Modify the specific group from the watchlist |
| [UpdatePriceReminder](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-price-reminder.html) | The price reminder notification callback |

| Module | Interface Name | Function Description |
| --- | --- | --- |
| Real-time Data | Subscription | [Sub](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html) | Subscribe or unsubscribe real-time market data |
| [GetSubInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/query-subscription.html) | Get subscription information |
| Push and Callback | [UpdateBasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-stock-quote.html) | Real-time quote callback |
| [UpdateOrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-order-book.html) | Real-time order book callback |
| [UpdateKL](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-kl.html) | Real-time candlestick callback |
| [UpdateTicker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-ticker.html) | Real-time tick-by-tick callback |
| [UpdateRT](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-rt.html) | Real-time time frame callback |
| [UpdateBroker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-broker.html) | Real-time broker queue callback |
| Get | [GetSecuritySnapshot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-snapshot.html) | Get market snapshot |
| [GetBasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-stock-quote.html) | Get real-time quote |
| [GetOrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-order-book.html) | Get real-time order book |
| [GetKL](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-kl.html) | Get real-time candlestick |
| [GetRT](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-rt.html) | Get real-time time frame data |
| [GetTicker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ticker.html) | Get real-time tick-by-tick |
| [GetBroker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-broker.html) | Get real-time broker queue |
| Basic Data | [GetMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-state.html) | Get market status of securities |
| [GetCapitalFlow](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-capital-flow.html) | Get capital flow |
| [GetCapitalDistribution](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-capital-distribution.html) | Get capital distribution |
| [GetOwnerPlate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-owner-plate.html) | Get the stock ownership plate |
| [RequestHistoryKL](https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-history-kline.html) | Get historical candlesticks |
| [RequestRehab](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-rehab.html) | Get the stock adjustment factor |
| Related Derivatives | [GetOptionExpirationDate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-expiration-date.html) | Query all expiration dates of option chains through the underlying stock. |
| [GetOptionChain](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-chain.html) | Get the option chain from an underlying stock |
| [GetWarrant](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-warrant.html) | Get filtered warrant (for HK market only) |
| [GetReference](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-referencestock-list.html) | Get related data of securities |
| [GetFutureInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-future-info.html) | Get futures contract information |
| Market Filter | [StockFilter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-stock-filter.html) | Filter stocks by condition |
| [GetPlateSecurity](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-stock.html) | Get the list of stocks in the plate |
| [GetPlateSet](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-list.html) | Get plate list |
| [GetStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-static-info.html) | Get stock basic information |
| [GetIpoList](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ipo-list.html) | Get IPO information of a specific market |
| [GetGlobalState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-global-state.html) | Get global status |
| [RequestTradeDate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-trading-days.html) | Get trading calendar |
| Customization | [RequestHistoryKLQuota](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-history-kl-quota.html) | Get usage details of historical candlestick quota |
| [SetPriceReminder](https://openapi.moomoo.com/moomoo-api-doc/en/quote/set-price-reminder.html) | Add, delete, modify, enable, and disable price reminders for specified stocks |
| [GetPriceReminder](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-price-reminder.html) | Get a list of price reminders set for the specified stock or market |
| [GetUserSecurityGroup](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-user-security-group.html) | Get a list of groups from the user watchlist |
| [GetUserSecurity](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-user-security.html) | Get a list of a specified group from watchlist |
| [ModifyUserSecurity](https://openapi.moomoo.com/moomoo-api-doc/en/quote/modify-user-security.html) | Modify the specific group from the watchlist |
| [UpdatePriceReminder](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-price-reminder.html) | The price reminder notification callback |

| Module | Protocol ID | Protobuf File | Description |
| --- | --- | --- | --- |
| Real-Time Data | Subscription | 3001 | [Qot\_Sub](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html) | Subscribe or unsubscribe real-time market data |
| 3003 | [Qot\_GetSubInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/query-subscription.html) | Get subscription information |
| Push and Callback | 3005 | [Qot\_UpdateBasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-stock-quote.html) | Real-time quote callback |
| 3013 | [Qot\_UpdateOrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-order-book.html) | Real-time order book callback |
| 3007 | [Qot\_UpdateKL](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-kl.html) | Real-time candlestick callback |
| 3009 | [Qot\_UpdateRT](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-rt.html) | Real-time time frame callback |
| 3011 | [Qot\_UpdateTicker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-ticker.html) | Real-time tick-by-tick callback |
| 3015 | [Qot\_UpdateBroker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-broker.html) | Real-time broker queue callback |
| Get | 3203 | [Qot\_GetSecuritySnapshot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-snapshot.html) | Get market snapshot |
| 3004 | [Qot\_GetBasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-stock-quote.html) | Get basic stock quote |
| 3012 | [Qot\_GetOrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-order-book.html) | Get real-time order book |
| 3006 | [Qot\_GetKL](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-kl.html) | Get real-time candlestick |
| 3008 | [Qot\_GetRT](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-rt.html) | Get real-time time frame data |
| 3010 | [Qot\_GetTicker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ticker.html) | Get real-time tick-by-tick |
| 3014 | [Qot\_GetBroker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-broker.html) | Get real-time broker queue |
| Basic Data | 3223 | [Qot\_GetMarketState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-state.html) | Get market status of securities |
| 3211 | [Qot\_GetCapitalFlow](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-capital-flow.html) | Get capital flow |
| 3212 | [Qot\_GetCapitalDistribution](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-capital-distribution.html) | Get capital distribution |
| 3207 | [Qot\_GetOwnerPlate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-owner-plate.html) | Get the stock ownership plate |
| 3103 | [Qot\_RequestHistoryKL](https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-history-kline.html) | Get historical candlesticks |
| 3105 | [Qot\_RequestRehab](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-rehab.html) | Get the stock adjustment factor |
| Related Derivatives | 3224 | [Qot\_GetOptionExpirationDate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-expiration-date.html) | Query all expiration dates of option chains through the underlying stock |
| 3209 | [Qot\_GetOptionChain](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-option-chain.html) | Get option chain |
| 3210 | [Qot\_GetWarrant](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-warrant.html) | Get warrant |
| 3206 | [Qot\_GetReference](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-referencestock-list.html) | Get the reference of stock |
| 3218 | [Qot\_GetFutureInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-future-info.html) | Get futures contract information |
| Market Filter | 3215 | [Qot\_StockFilter](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-stock-filter.html) | Get conditional stock selection |
| 3205 | [Qot\_GetPlateSecurity](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-stock.html) | Get stocks under the plate |
| 3204 | [Qot\_GetPlateSet](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-plate-list.html) | Get plate list |
| 3202 | [Qot\_GetStaticInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-static-info.html) | Get stock basic information |
| 3217 | [Qot\_GetIpoList](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ipo-list.html) | Get IPO information of a specific market |
| 1002 | [GetGlobalState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-global-state.html) | Get global market status |
| 3219 | [Qot\_RequestTradeDate](https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-trading-days.html) | Get trading calendar |
| Customization | 3104 | [Qot\_RequestHistoryKLQuota](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-history-kl-quota.html) | Get historical candlestick quota |
| 3220 | [Qot\_SetPriceReminder](https://openapi.moomoo.com/moomoo-api-doc/en/quote/set-price-reminder.html) | Set price reminder |
| 3221 | [Qot\_GetPriceReminder](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-price-reminder.html) | Get price reminder |
| 3213 | [Qot\_GetUserSecurity](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-user-security.html) | Get the stock under the watchlists |
| 3222 | [Qot\_GetUserSecurityGroup](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-user-security-group.html) | Get a list of watchlists |
| 3214 | [Qot\_ModifyUserSecurity](https://openapi.moomoo.com/moomoo-api-doc/en/quote/modify-user-security.html) | Modify the stock under the watchlists |
| 3019 | [Qot\_UpdatePriceReminder](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-price-reminder.html) | Price reminder callback |

←
[Operation Command](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-operate.html)[Quote Object](https://openapi.moomoo.com/moomoo-api-doc/en/quote/base.html)
→

## Get Subscription Status

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/query-subscription.html


`query_subscription(is_all_conn=True)`

- **Description**

Get subscription information

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| is\_all\_conn | bool | Whether to return the subscription status of all connections. <br><br>True: return the subscription status of all connections.<br>False: return only the status of the current connection. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | dict | If ret == RET\_OK, subscription information data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - subscription information data format as follows:

    ```
      {
          'total_used': subscription quota used by all connections,
          'own_used': The subscription quota used by the current connection,
          'remain': remaining subscription quota,
          'sub_list': The stock list corresponding to each subscription type,
          {
              'Subscription type': A list of all subscribed stocks under this subscription type,
              …
          }
      }

    ```
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

quote_ctx.subscribe(['HK.00700'], [SubType.QUOTE])
ret, data = quote_ctx.query_subscription()
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
{'total_used': 1, 'remain': 999, 'own_used': 1, 'sub_list': {'QUOTE': ['HK.00700']}}

```


## Qot\_GetSubInfo.proto


- **Description**

Get subscription information

- **Parameters**

- **Return**

> - For the structure of subscription information, refer to [ConnSubInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3216)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetSubInfo(QotGetSubInfo.Request req);`

`virtual void OnReply_GetSubInfo(FTAPI_Conn client, uint nSerialNo, QotGetSubInfo.Response rsp);`

- **Description**

Get subscription information

- **Parameters**

- **Return**

> - For the structure of subscription information, refer to [ConnSubInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3216)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getSubInfo(QotGetSubInfo.Request req);`

`void onReply_GetSubInfo(FTAPI_Conn client, int nSerialNo, QotGetSubInfo.Response rsp);`

- **Description**

Get subscription information

- **Parameters**

- **Return**

> - For the structure of subscription information, refer to [ConnSubInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3216)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t GetSubInfo(const Qot_GetSubInfo::Request &stReq);`

`virtual void OnReply_GetSubInfo(Futu::u32_t nSerialNo, const Qot_GetSubInfo::Response &stRsp) = 0;`

- **Description**

Get subscription information

- **Parameters**

- **Return**

> - For the structure of subscription information, refer to [ConnSubInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3216)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetSubInfo(req);`

- **Description**

Get subscription information

- **Parameters**

- **Return**

> - For the structure of subscription information, refer to [ConnSubInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3216)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`query_subscription(is_all_conn=True)`

- **Description**

Get subscription information

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| is\_all\_conn | bool | Whether to return the subscription status of all connections. <br><br>True: return the subscription status of all connections.<br>False: return only the status of the current connection. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | dict | If ret == RET\_OK, subscription information data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - subscription information data format as follows:

    ```
      {
          'total_used': subscription quota used by all connections,
          'own_used': The subscription quota used by the current connection,
          'remain': remaining subscription quota,
          'sub_list': The stock list corresponding to each subscription type,
          {
              'Subscription type': A list of all subscribed stocks under this subscription type,
              …
          }
      }

    ```
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

quote_ctx.subscribe(['HK.00700'], [SubType.QUOTE])
ret, data = quote_ctx.query_subscription()
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
{'total_used': 1, 'remain': 999, 'own_used': 1, 'sub_list': {'QUOTE': ['HK.00700']}}

```


## Qot\_GetSubInfo.proto


- **Description**

Get subscription information

- **Parameters**

- **Return**

> - For the structure of subscription information, refer to [ConnSubInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3216)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint GetSubInfo(QotGetSubInfo.Request req);`

`virtual void OnReply_GetSubInfo(MMAPI_Conn client, uint nSerialNo, QotGetSubInfo.Response rsp);`

- **Description**

Get subscription information

- **Parameters**

- **Return**

> - For the structure of subscription information, refer to [ConnSubInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3216)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int getSubInfo(QotGetSubInfo.Request req);`

`void onReply_GetSubInfo(MMAPI_Conn client, int nSerialNo, QotGetSubInfo.Response rsp);`

- **Description**

Get subscription information

- **Parameters**

- **Return**

> - For the structure of subscription information, refer to [ConnSubInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3216)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t GetSubInfo(const Qot_GetSubInfo::Request &stReq);`

`virtual void OnReply_GetSubInfo(moomoo::u32_t nSerialNo, const Qot_GetSubInfo::Response &stRsp) = 0;`

- **Description**

Get subscription information

- **Parameters**

- **Return**

> - For the structure of subscription information, refer to [ConnSubInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3216)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`GetSubInfo(req);`

- **Description**

Get subscription information

- **Parameters**

- **Return**

> - For the structure of subscription information, refer to [ConnSubInfo](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3216)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

←
[Subscribe and Unsubscribe](https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html)[Real-time Quote Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-stock-quote.html)
→

## Quotation Definitions

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html



## Cumulative Filter Properties


> **StockField**

- `NONE`

unknown

- `CHANGE_RATE`

Yield

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[-10.2, 20.4\]

- `AMPLITUDE`

Amplitude

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[0.5, 20.6\]

- `VOLUME`

Average daily trading volume

  - 0 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[2000, 70000\]

- `TURNOVER`

Average daily turnover

  - 3 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[1400, 890000\]

- `TURNOVER_RATE`

Turnover rate

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[2, 30\]

**AccumulateField**

**AccumulateField**

**AccumulateField**

**AccumulateField**

**AccumulateField**


## Asset Types


> **AssetClass**

- `UNKNOW`

Unknown

- `STOCK`

Stocks

- `BOND`

Bonds

- `COMMODITY`

Commodities

- `CURRENCY_MARKET`

Currency markets

- `FUTURE`

Futures

- `SWAP`

Swaps

**AssetClass**

**AssetClass**

**AssetClass**

**AssetClass**

**AssetClass**


## Corporate Action


**CompanyAct**

**CompanyAct**

**CompanyAct**

**CompanyAct**

**CompanyAct**


## Dark Disk Status


> **DarkStatus**

- `NONE`

No grey market trading

- `TRADING`

Ongoing grey market trading

- `END`

Grey market trading finished

**DarkStatus**

**DarkStatus**

**DarkStatus**

**DarkStatus**

**DarkStatus**


## Financial Filter Properties


> **StockField**

- `NONE`

unknown

- `NET_PROFIT`

Net profit

  - 3 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[100000000, 2500000000\]

- `NET_PROFIX_GROWTH`

Net profit growth rate

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[-10, 300\]

- `SUM_OF_BUSINESS`

Operating income

  - 3 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[100000000, 6400000000\]

- `SUM_OF_BUSINESS_GROWTH`

Year-on-year growth rate of operating income

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[-5, 200\]

- `NET_PROFIT_RATE`

Net profit rate

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[10, 113\]

- `GROSS_PROFIT_RATE`

Gross profit margin

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[4, 65\]

- `DEBT_ASSET_RATE`

Asset-liability ratio

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[5, 470\]

- `RETURN_ON_EQUITY_RATE`

Return on equity

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[20, 230\]

- `ROIC`

Return on invested capital

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[1.0, 10.0\]

- `ROA_TTM`

Return on assets TTM

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[1.0, 10.0\]

- `EBIT_TTM`

Earnings before interest and tax TTM

  - unit: yuan.
  - Only applicable to annual reports.
  - 3 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[1000000000, 1000000000\]

- `EBITDA`

Earnings before interest, tax, depreciation and amortization

  - unit: yuan.
  - 3 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[1000000000, 1000000000\]

- `OPERATING_MARGIN_TTM`

Operating profit margin TTM

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[1.0, 10.0\]

- `EBIT_MARGIN`

EBIT margin

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[1.0, 10.0\]

- `EBITDA_MARGIN`

EBITDA margin

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[1.0, 10.0\]

- `FINANCIAL_COST_RATE`

Financial cost rate

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[1.0, 10.0\]

- `OPERATING_PROFIT_TTM`

Operating profit TTM

  - unit: yuan.
  - Only applicable to annual reports.
  - 3 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[1000000000, 1000000000\]

- `SHAREHOLDER_NET_PROFIT_TTM`

Net profit attributable to the parent company

  - unit: yuan.
  - Only applicable to annual reports.
  - 3 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[1000000000, 1000000000\]

- `NET_PROFIT_CASH_COVER_TTM`

The proportion of cash income in profit

  - This field is in percentage form, so 20 is equivalent to 20%.
  - Only applicable to annual reports.
  - 3 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[1.0, 60.0\]

- `CURRENT_RATIO`

Current ratio

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[100, 250\]

- `QUICK_RATIO`

Quick ratio

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[100, 250\]

- `CURRENT_ASSET_RATIO`

Liquidity rate

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[10, 100\]

- `CURRENT_DEBT_RATIO`

Current debt ratio

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[10, 100\]

- `EQUITY_MULTIPLIER`

Equity multiplier

  - 3 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[100, 180\]

- `PROPERTY_RATIO`

Equity ratio

  - 3 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[50, 100\]

- `CASH_AND_CASH_EQUIVALENTS`

Cash and cash equivalent

  - unit: yuan.
  - 3 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[1000000000, 1000000000\]

- `TOTAL_ASSET_TURNOVER`

Total asset turnover rate

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[50, 100\]

- `FIXED_ASSET_TURNOVER`

Fixed asset turnover rate

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[50, 100\]

- `INVENTORY_TURNOVER`

Inventory turnover rate

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[50, 100\]

- `OPERATING_CASH_FLOW_TTM`

Operating cash flow TTM

  - unit: yuan.
  - Only applicable to annual reports.
  - 3 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[1000000000, 1000000000\]

- `ACCOUNTS_RECEIVABLE`

Net accounts receivable

  - unit: yuan.
  - 3 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[1000000000, 1000000000\]

- `EBIT_GROWTH_RATE`

Year-on-year growth rate of EBIT

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[1.0, 10.0\]

- `OPERATING_PROFIT_GROWTH_RATE`

Year-on-year growth rate of operating profit

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[1.0, 10.0\]

- `TOTAL_ASSETS_GROWTH_RATE`

Year-on-year growth rate of total assets

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[1.0, 10.0\]

- `PROFIT_TO_SHAREHOLDERS_GROWTH_RATE`

Year-on-year growth rate of net profit attributed to parent company owner

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[1.0, 10.0\]

- `PROFIT_BEFORE_TAX_GROWTH_RATE`

Year-on-year growth rate of total profit

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[1.0, 10.0\]

- `EPS_GROWTH_RATE`

Year-on-year growth rate of EPS

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[1.0, 10.0\]

- `ROE_GROWTH_RATE`

Year-on-year growth rate of ROE

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[1.0, 10.0\]

- `ROIC_GROWTH_RATE`

Year-on-year growth rate of ROIC

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[1.0, 10.0\]

- `NOCF_GROWTH_RATE`

Year-on-year growth rate of operating cash flow

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[1.0, 10.0\]

- `NOCF_PER_SHARE_GROWTH_RATE`

Year-on-year growth rate of operating cash flow per share

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[1.0, 10.0\]

- `OPERATING_REVENUE_CASH_COVER`

Operating cash cover ratio

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[10, 100\]

- `OPERATING_PROFIT_TO_TOTAL_PROFIT`

Operating profit ratio

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[10, 100\]

- `BASIC_EPS`

Basic earnings per share

  - 3 decimal place accuracy, the excess part is discarded.
  - unit: yuan.
  - For example, a range of \[0.1, 10\]

- `DILUTED_EPS`

Diluted earnings per share

  - 3 decimal place accuracy, the excess part is discarded.
  - unit: yuan.
  - For example, a range of \[0.1, 10\]

- `NOCF_PER_SHARE`

Net operating cash flow per share

  - 3 decimal place accuracy, the excess part is discarded.
  - unit: yuan.
  - For example, a range of \[0.1, 10\]

**FinancialField**

**FinancialField**

**FinancialField**

**FinancialField**

**FinancialField**


## Financial Filter Properties Period


> **FinancialQuarter**

- `NONE`

unknown

- `ANNUAL`

annual report

- `FIRST_QUARTER`

First quarter report

- `INTERIM`

Interim report

- `THIRD_QUARTER`

Third quarter report

- `MOST_RECENT_QUARTER`

Latest quarter report

**FinancialQuarter**

**FinancialQuarter**

**FinancialQuarter**

**FinancialQuarter**

**FinancialQuarter**


## Custom indicator attributes


> **StockField**

- `NONE`

Unknown

- `PRICE`

latest price

- `MA5`

Simple moving average

- `MA5`

5-day simple moving average (Not recommended)

- `MA10`

10-day simple moving average (Not recommended)

- `MA20`

20-day simple moving average (Not recommended)

- `MA30`

30-day simple moving average (Not recommended)

- `MA60`

60-day simple moving average (Not recommended)

- `MA120`

120-day simple moving average (Not recommended)

- `MA250`

250-day simple moving average (Not recommended)

- `RSI`

RSI

The default value of the indicator parameter is \[12\].

- `EMA`

Exponential moving average

- `EMA5`

5-day exponential moving average (Not recommended)

- `EMA10`

10-day exponential moving average (Not recommended)

- `EMA20`

20-day exponential moving average (Not recommended)

- `EMA30`

30-day exponential moving average (Not recommended)

- `EMA60`

60-day exponential moving average (Not recommended)

- `EMA120`

120-day exponential moving average (Not recommended)

- `EMA250`

250-day exponential moving average (Not recommended)

- `KDJ_K`

K value of KDJ indicator

Indicator parameters need to be passed according to KDJ. If not passed, the default value is \[9,3,3\].

- `KDJ_D`

D value of KDJ indicator

Indicator parameters need to be passed according to KDJ. If not passed, the default value is \[9,3,3\].

- `KDJ_J`

J value of KDJ indicator

Indicator parameters need to be passed according to KDJ. If not passed, the default value is \[9,3,3\].

- `MACD_DIFF`

DIFF value of MACD indicator

Indicator parameters need to be passed according to MACD. If not passed, the default value is \[12,26,9\].

- `MACD_DEA`

DEA value of MACD indicator

Indicator parameters need to be passed according to MACD. If not passed, the default value is \[12,26,9\].

- `MACD`

MACD value of MACD indicator

Indicator parameters need to be passed according to MACD. If not passed, the default value is \[12,26,9\].

- `BOLL_UPPER`

UPPER value of BOLL indicator

Indicator parameters need to be passed according to BOLL. If not passed, the default value is \[20,2\].

- `BOLL_MIDDLER`

MIDDLER value of BOLL indicator

Indicator parameters need to be passed according to BOLL. If not passed, the default value is \[20,2\].

- `BOLL_LOWER`

LOWER value of BOLL indicator

Indicator parameters need to be passed according to BOLL. If not passed, the default value is \[20,2\].

- `VALUE`

Custom value (stock\_field1 does not support this field)

**CustomIndicatorField**

**CustomIndicatorField**

**CustomIndicatorField**

**CustomIndicatorField**

**CustomIndicatorField**


## Relative position


> **RelativePosition**

- `NONE`

Unknown

- `MORE`

Stock\_field1 is greater than stock\_field2

- `LESS`

Stock\_field1 is less than stock\_field2

- `CROSS_UP`

Stock\_field1 cross over stock\_field2

- `CROSS_DOWN`

Stock\_field1 cross below stock\_field2

**RelativePosition**

**RelativePosition**

**RelativePosition**

**RelativePosition**

**RelativePosition**


## Pattern attributes


> **PatternField**

- `NONE`

未知

- `MA_ALIGNMENT_LONG`

MA bullish alignment (MA5 > MA10 > MA20 > MA30 > MA60 for two consecutive days, and the closing price of the day is greater than the closing price of the previous day)

- `MA_ALIGNMENT_SHORT`

MA bearish alignment (MA5 < MA10 < MA20 < MA30 < MA60 for two consecutive days, and the closing price of the day is less than the closing price of the previous day)

- `EMA_ALIGNMENT_LONG`

EMA bullish alignment (EMA5 > EMA10 > EMA20 > EMA30 > EMA60 for two consecutive days, and the closing price of the day is greater than the closing price of the previous day)

- `EMA_ALIGNMENT_SHORT`

EMA bearish alignment (EMA5 < EMA10 < EMA20 < EMA30 < MA60 for two consecutive days, and the closing price of the day is less than the closing price of the previous day)

- `RSI_GOLD_CROSS_LOW`

RSI low golden cross (short-term RSI crosses over long-term RSI below 50 (short-term RSI of the previous day is less than long-term RSI, short-term RSI of the current day is greater than long-term RSI))

- `RSI_DEATH_CROSS_HIGH`

RSI high dead cross (short-term RSI crosses below long-term RSI above 50 (short-term RSI of the previous day is greater than long-term RSI, short-term RSI of the current day is less than long-term RSI))

- `RSI_TOP_DIVERGENCE`

RSI top divergence (two adjacent candlestick peaks, the CLOSE of the later peak > the CLOSE of the earlier peak, the RSI12 value of the later peak < the RSI12 value of the earlier peak)

- `RSI_BOTTOM_DIVERGENCE`

RSI bottom divergence (two adjacent candlestick troughs, the CLOSE of the later trough < the CLOSE of the earlier trough, the RSI12 value of the later trough > the RSI12 value of the earlier trough)

- `KDJ_GOLD_CROSS_LOW`

KDJ low golden cross (D value is less than or equal to 30, and the K value of the previous day is less than the D value, and the K value of the day is greater than the D value)

- `KDJ_DEATH_CROSS_HIGH`

KDJ high death cross (D value is greater than or equal to 70, and the K value of the previous day is greater than the D value, and the K value of the day is less than the D value)

- `KDJ_TOP_DIVERGENCE`

KDJ top divergence (two adjacent candlestick peaks, the CLOSE of the later peak > the CLOSE of the earlier peak, the J value of the later peak < the J value of the earlier peak)

- `KDJ_BOTTOM_DIVERGENCE`

KDJ bottom divergence (two adjacent candlestick troughs, the CLOSE of the later trough < the CLOSE of the earlier trough, the J value of the later trough > the J value of the earlier trough)

- `MACD_GOLD_CROSS_LOW`

MACD golden cross (DIFF crosses over DEA ​​(DIFF is less than DEA of the previous day, and DIFF is greater than DEA of the current day))

- `MACD_DEATH_CROSS_HIGH`

MACD dead cross (DIFF crosses below DEA (DIFF is greater than DEA of the previous day, and DIFF is less than DEA of the current day))

- `MACD_TOP_DIVERGENCE`

MACD top divergence (two adjacent candlestick peaks, the CLOSE of the later peak > the CLOSE of the earlier peak, the MACD value of the later peak < the MACD value of the earlier peak)

- `MACD_BOTTOM_DIVERGENCE`

MACD bottom deviation (two adjacent candlestick troughs, the CLOSE of the later trough < the CLOSE of the earlier trough, the MACD value of the later trough > the MACD value of the earlier trough)

- `BOLL_BREAK_UPPER`

Break up bollinger upper bound (the stock price of the previous day was lower than the upper bound, and the stock price of the current day is greater than the upper bound)

- `BOLL_BREAK_LOWER`

Break up bollinger lower bound (the stock price of the previous day was greater than the lower bound, and the stock price of the current day is less than the lower bound)

- `BOLL_CROSS_MIDDLE_UP`

Cross over bollinger mid line (the stock price of the previous day was lower than the mid line, and the stock price of the current day is greater than the mid line)

- `BOLL_CROSS_MIDDLE_DOWN`

Cross below bollinger mid line (the stock price of the previous day was greater than the mid line, and the stock price of the current day is less than the mid line)

**PatternField**

**PatternField**

**PatternField**

**PatternField**

**PatternField**


## Watchlist Group Type


> **UserSecurityGroupType**

- `NONE`

unknown

- `CUSTOM`

Custom groups

- `SYSTEM`

System groups

- `ALL`

All groups

**GroupType**

**GroupType**

**GroupType**

**GroupType**

**GroupType**


## Index Option Category


> **IndexOptionType**

- `NONE`

unknown

- `NORMAL`

Ordinary index option

- `SMALL`

Small Index Options

**IndexOptionType**

**IndexOptionType**

**IndexOptionType**

**IndexOptionType**

**IndexOptionType**


## Listing Time


> **IpoPeriod**

- `NONE`

unknown

- `TODAY`

Listed today

- `TOMORROW`

To be listed tomorrow

- `NEXTWEEK`

To be listed next week

- `LASTWEEK`

Has been listed last week

- `LASTMONTH`

Has been listed last month

**IpoPeriod**

**IpoPeriod**

**IpoPeriod**

**IpoPeriod**

**IpoPeriod**


## Warrant Issuer


> **Issuer**

- `UNKNOW`

unknown

- `SG`

Societe Generale

- `BP`

BNP Paribas

- `CS`

Credit Suisse

- `CT`

Citi Bank

- `EA`

The Bank of East Aisa

- `GS`

Goldman Sachs

- `HS`

HSBC

- `JP`

JPMorgan Chase

- `MB`

Macquarie Bank

- `SC`

Standard Chartered Bank

- `UB`

Union Bank of Switzerland

- `BI`

Bank of China

- `DB`

Deutsche Bank

- `DC`

Daiwa Bank

- `ML`

Merrill Lynch

- `NM`

Nomura Bank

- `RB`

Rabobank

- `RS`

The Royal Bank of Scotland

- `BC`

Barclays

- `HT`

Haitong Bank

- `VT`

Bank Vontobel

- `KC`

KBC Bank

- `MS`

Morgan Stanley

- `GJ`

Guotai Junan

- `XZ`

DBS Bank

- `HU`

Huatai

- `KS`

Korea Investment

- `CI`

CITIC Securities

**Issuer**

**Issuer**

**Issuer**

**Issuer**

**Issuer**


## Candlestick Field


> **KL\_FIELD**

- `ALL`

All

- `DATE_TIME`

Time

- `HIGH`

High

- `OPEN`

Open

- `LOW`

Low

- `CLOSE`

Close

- `LAST_CLOSE`

Close yesterday

- `TRADE_VOL`

Volume

- `TRADE_VAL`

Turnover

- `TURNOVER_RATE`

Turnover rate

- `PE_RATIO`

P/E ratio

- `CHANGE_RATE`

Yield

**KLFields**

**KLFields**

**KLFields**

**KLFields**

**KLFields**


## Candlestick Type


> **KLType**

- `NONE`

unknown

- `K_1M`

1 minute candlestick

- `K_DAY`

1 day candlestick

- `K_WEEK`

1 week candlestick

Option is not supported

- `K_MON`

1 month candlestick

Option is not supported

- `K_YEAR`

1 year candlestick

Option is not supported

- `K_5M`

5 minutes candlestick

- `K_15M`

15 minutes candlestick

- `K_30M`

30 minutes candlestick

Option is not supported

- `K_60M`

60 minutes candlestick

- `K_3M`

3 minutes candlestick

Option is not supported

- `K_QUARTER`

1 quarter candlestick

Option is not supported

**KLType**

**KLType**

**KLType**

**KLType**

**KLType**


## Period Type


> **PeriodType**

- `INTRADAY`

Intraday

- `DAY`

Day

- `WEEK`

Week

- `MONTH`

Month

**PeriodType**

**PeriodType**

**PeriodType**

**PeriodType**

**PeriodType**


## Price Reminder Market Status


> **PriceReminderMarketStatus**

- `UNKNOW`

unknown

- `OPEN`

Market opens

- `US_PRE`

Pre-market of US stocks

- `US_AFTER`

After-hours of US stocks

- `US_OVERNIGHT`

Overnight trading session of US stocks

**MarketStatus**

**MarketStatus**

**MarketStatus**

**MarketStatus**

**MarketStatus**


## Watchlist Operation


> **ModifyUserSecurityOp**

- `NONE`

Unknown

- `ADD`

Add

- `DEL`

Delete

- `MOVE_OUT`

Remove from group

**ModifyUserSecurityOp**

**ModifyUserSecurityOp**

**ModifyUserSecurityOp**

**ModifyUserSecurityOp**

**ModifyUserSecurityOp**


## Option Type (by Exercise Time)


> **OptionAreaType**

- `NONE`

unknown

- `AMERICAN`

American Option

- `EUROPEAN`

European Option

- `BERMUDA`

Bermuda Option

**OptionAreaType**

**OptionAreaType**

**OptionAreaType**

**OptionAreaType**

**OptionAreaType**


## Option in/out of The Money


> **OptionCondType**

- `ALL`

All

- `WITHIN`

In the money

- `OUTSIDE`

Out of the money

**OptionCondType**

**OptionCondType**

**OptionCondType**

**OptionCondType**

**OptionCondType**


## Option Type (by Direction)


> **OptionType**

- `ALL`

all

- `CALL`

Call option

- `PUT`

Put option

**OptionType**

**OptionType**

**OptionType**

**OptionType**

**OptionType**


## Plate Set Type


> **Plate**

- `ALL`

All plates

- `INDUSTRY`

Industry plate

- `REGION`

Regional plate

The regional plate of the Hong Kong and US stock markets are temporarily empty.

- `CONCEPT`

Concept plate

- `OTHER`

Other plates

Only used for the return of the [Get plates of stocks](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-owner-plate.html) interface and cannot be used as a request parameter of other interfaces.

**PlateSetType**

**PlateSetType**

**PlateSetType**

**PlateSetType**

**PlateSetType**


## Price Reminder Frequency


> **PriceReminderFreq**

- `NONE`

Unknown

- `ALWAYS`

Keep reminding

- `ONCE_A_DAY`

Once a day

- `ONCE`

Only remind once

**PriceReminderFreq**

**PriceReminderFreq**

**PriceReminderFreq**

**PriceReminderFreq**

**PriceReminderFreq**


## Price Reminder Type


> **PriceReminderType**

- `NONE`

Unknown

- `PRICE_UP`

Price rise to

- `PRICE_DOWN`

Price fall to

- `CHANGE_RATE_UP`

Daily increase rate exceeds

This field is in percentage form, so 20 is equivalent to 20%.

- `CHANGE_RATE_DOWN`

Daily decline rate exceeds

This field is in percentage form, so 20 is equivalent to 20%.

- `FIVE_MIN_CHANGE_RATE_UP`

Increate rate in 5 minutes exceeds

This field is in percentage form, so 20 is equivalent to 20%.

- `FIVE_MIN_CHANGE_RATE_DOWN`

Decline rate in 5 minutes exceeds

This field is in percentage form, so 20 is equivalent to 20%.

- `VOLUME_UP`

Volume exceeds

- `TURNOVER_UP`

Turnover exceeds

- `TURNOVER_RATE_UP`

Turnover rate exceeds

This field is in percentage form, so 20 is equivalent to 20%.

- `BID_PRICE_UP`

Bid price higher than

- `ASK_PRICE_DOWN`

Ask price lower than

- `BID_VOL_UP`

Bid volume higher than

- `ASK_VOL_UP`

Ask volume higher than

- `THREE_MIN_CHANGE_RATE_UP`

Increate rate in 3 minutes exceeds

This field is in percentage form, so 20 is equivalent to 20%.

- `THREE_MIN_CHANGE_RATE_DOWN`

Decline rate in 3 minutes exceeds

This field is in percentage form, so 20 is equivalent to 20%.

**PriceReminderType**

**PriceReminderType**

**PriceReminderType**

**PriceReminderType**

**PriceReminderType**


## Warrant in/out of the Money


> **PriceType**

- `UNKNOW`

Unknown

- `OUTSIDE`

Out of the money

- `WITH_IN`

In the money

**PriceType**

**PriceType**

**PriceType**

**PriceType**

**PriceType**


## Quote Push Type


> **PushDataType**

- `UNKNOW`

Unknown

- `REALTIME`

Real-time data

- `BYDISCONN`

Pull supplementary data (up to 50) during disconnection from Futu server

- `CACHE`

Non-real-time non-supplementary data

**PushDataType**

**PushDataType**

**PushDataType**

**PushDataType**

**PushDataType**


## Quote Market


> **Market**

- `NONE`

Unknown market

- `HK`

HK market

- `US`

US market

- `SH`

Shanghai market

- `SZ`

Shenzhen market

- `SG`

Singapore market

- `JP`

Japanese market

- `AU`

Australian market

- `MY`

Malaysian market

- `CA`

Canadian market

- `FX`

Forex market

**QotMarket**

**QotMarket**

**QotMarket**

**QotMarket**

**QotMarket**


## Market State


> **MarketState**

Corresponding time period of each market state, [click here](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#2076) to learn more

- `NONE`

No trading

- `AUCTION`

Pre-market trading

- `WAITING_OPEN`

Waiting for opening

- `MORNING`

Morning session

- `REST`

Lunch break

- `AFTERNOON`

Afternoon session / Regular trading hours for U.S stock market

- `CLOSED`

Market closed

- `PRE_MARKET_BEGIN`

Pre-market trading of U.S stock market

- `PRE_MARKET_END`

Pre-market ending of U.S stock market

- `AFTER_HOURS_BEGIN`

After-hours trading of U.S stock market

- `AFTER_HOURS_END`

Market closed of U.S. stock market

- `OVERNIGHT`

Overnight trading of U.S. stock market

- `NIGHT_OPEN`

Night market trading hours

- `NIGHT_END`

Night market closed

- `NIGHT`

Night market trading hours for U.S. index options

- `TRADE_AT_LAST`

Late trading hours for U.S. index options

- `FUTURE_DAY_OPEN`

Day market trading hours

- `FUTURE_DAY_BREAK`

Day market break

- `FUTURE_DAY_CLOSE`

Day market closed

- `FUTURE_DAY_WAIT_OPEN`

Futures market wait for opening

- `HK_CAS`

After-hours bidding for HK stocks

- `FUTURE_NIGHT_WAIT`

Futures night market wait for opening (Obsolete)

- `FUTURE_AFTERNOON`

Futures afternoon (Obsolete)

- `FUTURE_SWITCH_DATE`

Waiting for U.S. futures opening

- `FUTURE_OPEN`

Trading hours of U.S. futures

- `FUTURE_BREAK`

Break of U.S. futures

- `FUTURE_BREAK_OVER`

Trading hours of U.S. futures after break

- `FUTURE_CLOSE`

Market closed of U.S. futures

- `STIB_AFTER_HOURS_WAIT`

After-hours matching period on the Sci-tech innovation plate (Obsolete)

- `STIB_AFTER_HOURS_BEGIN`

After-hours trading on the Sci-tech innovation plate begins (Obsolete)

- `STIB_AFTER_HOURS_END`

After-hours trading on the Sci-tech innovation plate ends (Obsolete)

**QotMarketState**

Corresponding time period of each market state, [click here](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#2076) to learn more

**QotMarketState**

Corresponding time period of each market state, [click here](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#2076) to learn more

**QotMarketState**

Corresponding time period of each market state, [click here](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#2076) to learn more

**QotMarketState**

Corresponding time period of each market state, [click here](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#2076) to learn more

**QotMarketState**

Corresponding time period of each market state, [click here](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#2076) to learn more


## US Stock Session


> **Session**

- `NONE`

Unknown

- `RTH`

US Stocks Regular trading hours

- `ETH`

US Stocks Pre/Post + regular trading hours

- `OVERNIGHT`

US Stocks Overnight trading hours (only applied to Trade API)

- `ALL`

US Stocks 24H trading hours (applied to Quote API & Trade API)

> **Session**

> **Session**

> **Session**

> **Session**

> **Session**


## Quote Authorities


> **QotRight**

- `UNKNOW`

Unknown

- `BMP`

BMP (subscription is not supported for this permission)

- `LEVEL1`

Level1

- `LEVEL2`

Level2

- `SF`

HK Securities FullTick Quotes

- `NO`

No permission

**QotRight**

**QotRight**

**QotRight**

**QotRight**

**QotRight**


## Associated \* **Data Type**


> **SecurityReferenceType**

- `UNKNOW`

Unknown

- `WARRANT`

Warrants for stocks

- `FUTURE`

Contracts related to futures main

**ReferenceType**

**ReferenceType**

**ReferenceType**

**ReferenceType**

**ReferenceType**


## Candlestick Adjustment Type


> **AuType**

- `NONE`

Actual

- `QFQ`

Adjust forward

- `HFQ`

Adjust backward

**RehabType**

**RehabType**

**RehabType**

**RehabType**

**RehabType**


## Stock Status


> **SecurityStatus**

- `NONE`

Unknown

- `NORMAL`

Normal status

- `LISTING`

To be listed

- `PURCHASING`

Purchasing

- `SUBSCRIBING`

Subscribing

- `BEFORE_DRAK_TRADE_OPENING`

Before the grey market trading opens

- `DRAK_TRADING`

Ongoing grey market trading

- `DRAK_TRADE_END`

Grey market trading closed

- `TO_BE_OPEN`

To be open

- `SUSPENDED`

Suspended

- `CALLED`

Called

- `EXPIRED_LAST_TRADING_DATE`

Expired latest trading date

- `EXPIRED`

Expired

- `DELISTED`

Delisted

- `CHANGE_TO_TEMPORARY_CODE`

During the company action, the trading was closed and transferred to the temporary code trading

- `TEMPORARY_CODE_TRADE_END`

Temporary trading ends

- `CHANGED_PLATE_TRADE_END`

Plate changed, the old code is not available for trading

- `CHANGED_CODE_TRADE_END`

The code has been changed, the old code is not available for trading

- `RECOVERABLE_CIRCUIT_BREAKER`

Recoverable circuit breaker

- `UN_RECOVERABLE_CIRCUIT_BREAKER`

Unrecoverable circuit breaker

- `AFTER_COMBINATION`

After-hours matchmaking

- `AFTER_TRANSATION`

After-hours trading

**SecurityStatus**

**SecurityStatus**

**SecurityStatus**

**SecurityStatus**

**SecurityStatus**


## Stock Type


> **SecurityType**

- `NONE`

Unknown

- `BOND`

Bonds

- `BWRT`

Blanket warrants

- `STOCK`

Stocks

- `ETF`

ETFs

- `WARRANT`

Warrants

- `IDX`

Indexs

- `PLATE`

Plates

- `DRVT`

Options

- `PLATESET`

Plate sets

- `FUTURE`

Futures

**SecurityType**

**SecurityType**

**SecurityType**

**SecurityType**

**SecurityType**


## Set Price Reminder Operation Type


> **SetPriceReminderOp**

- `NONE`

Unknown

- `ADD`

Add

- `DEL`

Delete

- `ENABLE`

Enable

- `DISABLE`

Disable

- `MODIFY`

Modify

- `DEL_ALL`

Delete all (delete all price alerts under the specified stock)

**SetPriceReminderOp**

**SetPriceReminderOp**

**SetPriceReminderOp**

**SetPriceReminderOp**

**SetPriceReminderOp**


## Sort Direction


> **SortDir**

- `NONE`

Not sorted

- `ASCEND`

Ascending

- `DESCEND`

Descending

**SortDir**

**SortDir**

**SortDir**

**SortDir**

**SortDir**


## Sort Field


> **SortField**

- `NONE`

Unknown

- `CODE`

Code

- `CUR_PRICE`

Latest price

- `PRICE_CHANGE_VAL`

Price changed

- `CHANGE_RATE`

Yield

- `STATUS`

Status

- `BID_PRICE`

Bid price

- `ASK_PRICE`

Ask price

- `BID_VOL`

Bid volume

- `ASK_VOL`

Ask volume

- `VOLUME`

Volume

- `TURNOVER`

Turnover

- `AMPLITUDE`

Amplitude

- `SCORE`

Comprehensive score

- `PREMIUM`

Premium

- `EFFECTIVE_LEVERAGE`

Effective leverage

- `DELTA`

Hedging value

For puts and calls only

- `IMPLIED_VOLATILITY`

Implied volatility

For puts and calls only

- `TYPE`

Type

- `STRIKE_PRICE`

Strike price

- `BREAK_EVEN_POINT`

Break even point

- `MATURITY_TIME`

Maturity date

- `LIST_TIME`

Listing date

- `LAST_TRADE_TIME`

Lastest trading day

- `LEVERAGE`

Leverage ratio

- `IN_OUT_MONEY`

In/out of the money %

- `RECOVERY_PRICE`

Recovery price

For CBBCs only

- `CHANGE_PRICE`

Change price

- `CHANGE`

Change ratio

- `STREET_RATE`

Outstanding percentage (the propotioin of retail investors)

- `STREET_VOL`

Outstanding quantity (the volume held by retail investors)

- `WARRANT_NAME`

Warrant name

- `ISSUER`

Issuer

- `LOT_SIZE`

Lot size

- `ISSUE_SIZE`

Issue size

- `UPPER_STRIKE_PRICE`

Upper bound

Only for Inline Warrants

- `LOWER_STRIKE_PRICE`

Lower bound

Only for Inline Warrants

- `INLINE_PRICE_STATUS`

In/out of bounds

Only for Inline Warrants

- `PRE_CUR_PRICE`

Latest price of pre-market

- `AFTER_CUR_PRICE`

Latest price of after-hours

- `PRE_PRICE_CHANGE_VAL`

Pre-market changes

- `AFTER_PRICE_CHANGE_VAL`

After-hours changes

- `PRE_CHANGE_RATE`

Pre-market change rate %

- `AFTER_CHANGE_RATE`

After-hours change rate %

- `PRE_AMPLITUDE`

Pre-market amplitude %

- `AFTER_AMPLITUDE`

After-hours amplitude %

- `PRE_TURNOVER`

Pre-market turnover

- `AFTER_TURNOVER`

After-hours turnover

- `LAST_SETTLE_PRICE`

Last settle price

- `POSITION`

Position

- `POSITION_CHANGE`

Daily increase of position

**SortField**

**SortField**

**SortField**

**SortField**

**SortField**


## Simple Filter Properties


> **StockField**

- `NONE`

unknown

- `STOCK_CODE`

Stock code, does not accept list inputs as an interval

- `STOCK_NAME`

Stock name, does not accept list inputs as an interval

- `CUR_PRICE`

The latest price

  - 3 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[10, 20\]

- `CUR_PRICE_TO_HIGHEST52_WEEKS_RATIO`

**(CP - WH52) / WH52**

**CP**: Current price

**WH52**: 52-week high

Corresponding to the “percentage from 52-week high” on the PC terminal

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[-30, -10\]

- `CUR_PRICE_TO_LOWEST52_WEEKS_RATIO`

**(CP - WL52) / WL52**

**CP**: Current price

**WL52**: 52-week low

Corresponding to the “percentage from 52-week low” on the PC terminal

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[20, 40\]

- `HIGH_PRICE_TO_HIGHEST52_WEEKS_RATIO`

**(TH - WH52) / WH52**

**TH**: Today's high

**WH52**: 52-week high

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[-3, -1\]

- `LOW_PRICE_TO_LOWEST52_WEEKS_RATIO`

**(TL - WL52) / WL52**

**TL**: Today's low

**WL52**: 52-week low

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[10, 70\]

- `VOLUME_RATIO`

Volume ratio

  - 3 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[0.5, 30\]

- `BID_ASK_RATIO`

Bid-ask ratio

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[-20, 80.5\]

- `LOT_PRICE`

Price per lot

  - 3 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[40, 100\]

- `MARKET_VAL`

Market value

  - 3 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[50000000, 3000000000\]

- `PE_ANNUAL`

Trailing P/E

  - 3 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[-8, 65.3\]

- `PE_TTM`

P/E TTM

  - 3 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[-10, 20.5\]

- `PB_RATE`

P/B ratio

  - 3 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[0.5, 20\]

- `CHANGE_RATE_5MIN`

Change rate in 5 minutes

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[-5, 6.3\]

- `CHANGE_RATE_BEGIN_YEAR`

Price change rate from this year

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[-50.1, 400.7\]

- `PS_TTM`

P/S TTM

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[100, 500\]

- `PCF_TTM`

PCF TTM

  - 3 decimal place accuracy, the excess part is discarded.
  - This field is in percentage form, so 20 is equivalent to 20%.
  - For example, a range of \[100, 1000\]

- `TOTAL_SHARE`

Total number of shares

  - unit: share.
  - 0 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[1000000000, 1000000000\]

- `FLOAT_SHARE`

Shares outstanding

  - unit: share.
  - 0 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[1000000000, 1000000000\]

- `FLOAT_MARKET_VAL`

Market value outstanding

  - unit: yuan.
  - 3 decimal place accuracy, the excess part is discarded.
  - For example, a range of \[1000000000, 1000000000\]

**StockField**

**StockField**

**StockField**

**StockField**

**StockField**


## Subscription Type


> **SubType**

- `NONE`

Unknown

- `QUOTE`

Basic quote

- `ORDER_BOOK`

Order book

- `TICKER`

Tick-by-tick

- `RT_DATA`

Time Frame

- `K_DAY`

Daily candlesticks

- `K_5M`

5 minutes candlesticks

- `K_15M`

15 minutes candlesticks

- `K_30M`

30 minutes candlesticks

- `K_60M`

60 minutes candlesticks

- `K_1M`

1 minute candlesticks

- `K_WEEK`

Weekly candlesticks

- `K_MON`

Monthly candlesticks

- `BROKER`

Broker's queue

- `K_QURATER`

Seasonal candlesticks

- `K_YEAR`

Annual candlesticks

- `K_3M`

3 minutes candlesticks

**SubType**

**SubType**

**SubType**

**SubType**

**SubType**


## Transaction Direction


> **TickerDirect**

- `NONE`

unknown

- `BUY`

Active buy

Active buy, a buyer actively buys stocks at the then sell price or higher price.

- `SELL`

Active sell

Active sell, a seller actively sells stocks at the then buy price or lower price.

- `NEUTRAL`

Neutral transaction

Neutral transaction, the stock price is between the bid price and ask price.

**TickerDirection**

**TickerDirection**

**TickerDirection**

**TickerDirection**

**TickerDirection**


## Tick-by-Tick Transaction Type


> **TickerType**

- `UNKNOWN`

Unknown

- `AUTO_MATCH`

Regular sale

- `LATE`

Pre-market trade

- `NON_AUTO_MATCH`

Non-regular sale

- `INTER_AUTO_MATCH`

Regular sale for same broker

- `INTER_NON_AUTO_MATCH`

Non-regular sale for same broker

- `ODD_LOT`

Odd lot trade

- `AUCTION`

Auction trade

- `BULK`

Bunched trade

- `CRASH`

Cash trade

- `CROSS_MARKET`

Intermarket sweep

- `BULK_SOLD`

Bunched sold trade

- `FREE_ON_BOARD`

Price variation trade

- `RULE127_OR155`

Rule 127 (NYSE only) or Rule 155 (NYSE MKT only)

- `DELAY`

Delay the transaction

- `MARKET_CENTER_CLOSE_PRICE`

Market center close price

- `NEXT_DAY`

Next day

- `MARKET_CENTER_OPENING`

Market center opening trade

- `PRIOR_REFERENCE_PRICE`

Prior reference price

- `MARKET_CENTER_OPEN_PRICE`

Market center open price

- `SELLER`

Seller

- `T`

Form T(pre-open and post-close market trade)

- `EXTENDED_TRADING_HOURS`

Extended trading hours/sold out of sequence

- `CONTINGENT`

Contingent trade

- `AVERAGE_PRICE`

Average price trade

- `OTC_SOLD`

Sold(out of sequence)

- `ODD_LOT_CROSS_MARKET`

Odd lot cross trade

- `DERIVATIVELY_PRICED`

Derivatively priced

- `REOPENINGP_RICED`

Re-Opening price

- `CLOSING_PRICED`

Closing price

- `COMPREHENSIVE_DELAY_PRICE`

Consolidated late price per listing packet

- `OVERSEAS`

One party to the transaction is not a member of the Hong Kong Stock Exchange and is an over-the-counter transaction

**TickerType**

**TickerType**

**TickerType**

**TickerType**

**TickerType**


## Check The Market on The Trading Day


> **TradeDateMarket**

- `NONE`

Unknown

- `HK`

HK market

  - Including stocks, ETFs, warrants, CBBCs, options, non-holiday trading futures
  - Excluding holiday trading futures

- `US`

US market

  - Including stocks, ETFs, options
  - Excluding futures

- `CN`

A-share market

- `NT`

Northbound Trading

- `ST`

Southbound Trading

- `JP_FUTURE`

Japanese future market

- `SG_FUTURE`

Singapore future market

**TradeDateMarket**

**TradeDateMarket**

**TradeDateMarket**

**TradeDateMarket**

**TradeDateMarket**


## Type of Trading Day


> **TradeDateType**

- `WHOLE`

Whole day trading

- `MORNING`

Trading in the morning, closed in the afternoon

- `AFTERNOON`

Trading in the afternoon, closed in the morning

**TradeDateType**

**TradeDateType**

**TradeDateType**

**TradeDateType**

**TradeDateType**


## Warrant Status


> **WarrantStatus**

- `NONE`

Unknown

- `NORMAL`

Normal status

- `SUSPEND`

Suspended

- `STOP_TRADE`

Stop trading

- `PENDING_LISTING`

Waiting to be listed

**WarrantStatus**

**WarrantStatus**

**WarrantStatus**

**WarrantStatus**

**WarrantStatus**


## Warrant Type


> **WrtType**

- `NONE`

Unknown

- `CALL`

Long warrants

- `PUT`

Short warrants

- `BULL`

Call warrants

- `BEAR`

Put warrants

- `INLINE`

Inline Warrants

**WarrantType**

**WarrantType**

**WarrantType**

**WarrantType**

**WarrantType**


## Exchange Type


> **ExchType**

- `NONE`

Unknown

- `HK_MAINBOARD`

HKEx·Main Board

- `HK_GEMBOARD`

HKEx·GEM

- `HK_HKEX`

HKEx

- `US_NYSE`

NYSE

- `US_NASDAQ`

NASDAQ

- `US_PINK`

OTC Mkt

- `US_AMEX`

AMEX

- `US_OPTION`

US

Only applicable to US Options.

- `US_NYMEX`

NYMEX

- `US_COMEX`

COMEX

- `US_CBOT`

CBOT

- `US_CME`

CME

- `US_CBOE`

CBOE

- `CN_SH`

SH Stock Ex

- `CN_SZ`

SZ Stock Ex

- `CN_STIB`

STAR

- `SG_SGX`

SGX

- `JP_OSE`

OSE

**ExchType**

**ExchType**

**ExchType**

**ExchType**

**ExchType**


## Security Identification


**Security**


## Candlestick data


**KLine**


## Option Specific Fields of The Underlying Quote


**OptionBasicQotExData**


## Futures Specific Fields of The Base Quote


**FutureBasicQotExData**


## Basic Quotation


**BasicQot**


## Before And After Data


**PreAfterMarketData**


## Time Frame Data


**TimeShare**


## Basic Static Information of Securities


**SecurityStaticBasic**


## Warrant Additional Static Information


**WarrantStaticExData**


## Option Additional Static Information


**OptionStaticExData**


## Additional Static Information About Futures


**FutureStaticExData**


## Securities Static Information


**SecurityStaticInfo**


## Brokerage


**Broker**


## Tick-by-Tick


**Ticker**


## Transaction File Details


**OrderBookDetail**


## Order Book


**OrderBook**


## Changes in Holdings


**ShareHoldingChange**


## Single Subscription Type Information


**SubInfo**


## Single Connection Subscription Information


**ConnSubInfo**


## Plate Information


**PlateInfo**


## Adjustment Information


**Rehab**

> - For CompanyAct combination flag bit, refer to [CompanyAct](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#4631).


## Expiration Cycle


> **ExpirationCycle**

- `NONE`

Unknown

- `WEEK`

Weekly options

- `MONTH`

Monthly options

- `END_OF_MONTH`

End-Of-Monthly options

- `QUARTERLY`

Quarterly options

- `WEEKMON`

Monthly options-Monday

- `WEEKTUE`

Monthly options-Tuesday

- `WEEKWED`

Monthly options-Wednesday

- `WEEKTHU`

Monthly options-Thursday

- `WEEKFRI`

Monthly options-Friday

**ExpirationCycle**

**ExpirationCycle**

**ExpirationCycle**

**ExpirationCycle**

**ExpirationCycle**


## Option Standard Type


> **OptionStandardType**

- `NONE`

Unknown

- `STANDARD`

standard options

- `NON_STANDARD`

non-standard options

**OptionStandardType**

**OptionStandardType**

**OptionStandardType**

**OptionStandardType**

**OptionStandardType**


## Option Settlement Mode


> **OptionSettlementMode**

- `NONE`

Unknown

- `AM`

Asian Pricing

- `PM`

Path-Dependent

**OptionSettlementMode**

**OptionSettlementMode**

**OptionSettlementMode**

**OptionSettlementMode**

**OptionSettlementMode**

\## Stockholder (Deprecated)


## Stock Holder


> **StockHolder**

- `NONE`

Unknown

- `INSTITUTE`

Institute

- `FUND`

Fund

- `EXECUTIVE`

Executives

**HolderCategory**

**HolderCategory**

**HolderCategory**

**HolderCategory**

**HolderCategory**

←
[Price Reminder Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-price-reminder.html)[Overview](https://openapi.moomoo.com/moomoo-api-doc/en/trade/overview.html)
→

## Get Historical Candlesticks

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-history-kline.html


`request_history_kline(code, start=None, end=None, ktype=KLType.K_DAY, autype=AuType.QFQ, fields=[KL_FIELD.ALL], max_count=1000, page_req_key=None, extended_time=False)`

- **Description**

Get historical candlesticks

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Stock code. |
| start | str | Start time. <br><br>Format: yyyy-MM-dd<br>For example: "2017-06-20". |
| end | str | End time. <br><br>Format: yyyy-MM-dd<br>For example: "2017-07-20". |
| ktype | [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66) | Candlestick type. |
| autype | [AuType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071) | Type of adjustment. |
| fields | [KL\_FIELD](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5803) | List of fields to be returned. |
| max\_count | int | The maximum number of candlesticks returned in this request. <br><br>  - Sending None indicates that all data between start and end is returned. <br>  - Note: OpenD requests all the data and then sends it to the script. If the number of candlesticks you want to obtain is more than 1000, it is recommended to select paging to prevent from timeout. |
| page\_req\_key | bytes | The key of the page request. If the number of candlesticks between start and end is more than max\_count, then None should be passed at the first time you call this interface, and the page\_req\_key returned by the last call must be passed in the subsequent pagerequests. |
| extended\_time | bool | Need pre-market and after-hours data for US stocks or not. False: not need, True: need. |
| session | [Session](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8688) | Get US stocks historical k-line in session <br><br>  - Only used to get historical k-line for US stocks in session.<br>  - If you want to get 24H historical k-line data of US stocks, please use 'ALL'. The 'OVERNIGHT' is not allowed.<br>  - Minimum version requirements: 9.2.4207 |

  - The combination of _**start**_ and _**end**_ is as follows

    | Start type | End type | Description |
    | --- | --- | --- |
    | str | str | _**start**_ and _**end**_ are the specified dates respectively. |
    | None | str | _**start**_ is 365 days before _**end**_. |
    | str | None | _**end**_ is 365 days after _**start**_. |
    | None | None | _**end**_ is the current date, _**start**_ is 365 days before. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, historical candlestick data is returned. |
| str | If ret != RET\_OK, error description is returned. |
| page\_req\_key | bytes | The key of the next page request. |

  - Historical candlestick data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | time\_key | str | Candlestick time. <br><br>Format: yyyy-MM-dd HH:mm:ss<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | open | float | Open. |
    | close | float | Close. |
    | high | float | High. |
    | low | float | Low. |
    | pe\_ratio | float | P/E ratio. <br><br>This field is a ratio field, and % is not displayed. |
    | turnover\_rate | float | Turnover rate. |
    | volume | int | Volume. |
    | turnover | float | Turnover. |
    | change\_rate | float | Change rate. |
    | last\_close | float | Yesterday's close. |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
ret, data, page_req_key = quote_ctx.request_history_kline('US.AAPL', start='2019-09-11', end='2019-09-18', max_count=5) # 5 per page, request the first page
if ret == RET_OK:
    print(data)
    print(data['code'][0]) # Take the first stock code
    print(data['close'].values.tolist()) # The closing price of the first page is converted to a list
else:
    print('error:', data)
while page_req_key != None: # Request all results after
    print('*************************************')
    ret, data, page_req_key = quote_ctx.request_history_kline('US.AAPL', start='2019-09-11', end='2019-09-18', max_count=5,page_req_key=page_req_key) # Request the page after turning data
    if ret == RET_OK:
        print(data)
    else:
        print('error:', data)
print('All pages are finished!')
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
code  name             time_key       open      close       high        low  pe_ratio  turnover_rate    volume      turnover  change_rate  last_close
0  US.AAPL   APPLE  2019-09-11 00:00:00  52.631194  53.963447  53.992409  52.549135    18.773        0.01039  177158584  9.808562e+09     3.179511   52.300545
..       ...   ...                  ...        ...        ...        ...        ...       ...            ...       ...           ...          ...         ...
4  US.AAPL   APPLE  2019-09-17 00:00:00  53.087346  53.265945  53.294907  52.884612    18.530        0.00432   73545872  4.046314e+09     0.363802   53.072865

[5 rows x 13 columns]
US.AAPL
[53.9634465, 53.84156475, 52.7953125, 53.072865, 53.265945]
*************************************
       code  name             time_key       open      close       high        low  pe_ratio  turnover_rate   volume      turnover  change_rate  last_close
0  US.AAPL   APPLE  2019-09-18 00:00:00  53.352831  53.76554  53.784847  52.961844    18.704        0.00602  102572372  5.682068e+09     0.937925   53.265945
All pages are finished!

```


## Qot\_RequestHistoryKL.proto


- **Description**

Get historical candlestics

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For stock adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For candlestick structure, refer to [KLFields](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5803)

- **Return**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint RequestHistoryKL(QotRequestHistoryKL.Request req);`

`virtual void OnReply_RequestHistoryKL(FTAPI_Conn client, uint nSerialNo, QotRequestHistoryKL.Response rsp);`

- **Description**

Get historical candlesticks

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For stock adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For candlestick structure, refer to [KLFields](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5803)

- **Return**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int requestHistoryKL(QotRequestHistoryKL.Request req);`

`void onReply_RequestHistoryKL(FTAPI_Conn client, int nSerialNo, QotRequestHistoryKL.Response rsp);`

- **Description**

Get historical candlesticks

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For stock adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For candlestick structure, refer to [KLFields](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5803)

- **Return**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t RequestHistoryKL(const Qot_RequestHistoryKL::Request &stReq);`

`virtual void OnReply_RequestHistoryKL(Futu::u32_t nSerialNo, const Qot_RequestHistoryKL::Response &stRsp) = 0;`

- **Description**

Get historical candlesticks

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For stock adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For candlestick structure, refer to [KLFields](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5803)

- **Return**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`RequestHistoryKL(req);`

- **Description**

Get historical candlesticks

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For stock adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For candlestick structure, refer to [KLFields](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5803)

- **Return**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Restrictions

- Candlestick data with timeframes of **60 minutes and below**, is only supported for the last 8 years. **Daily** candlestick data is supported for the last 20 years. **Daily above** candlestick data is not restricted.
- We will issue historical candlestick quota based on your account assets and transaction conditions. Therefore, you can only obtain historical candlestick data for a limited number of stocks within 30 days. For specific rules, please refer to [Subscription Quota & Historical Candlestick Quota](https://openapi.moomoo.com/moomoo-api-doc/en/intro/authority.html#9123). The historical candlestick quota you consume on that day will be automatically released after 30 days.
- A maximum of 60 requests per 30 seconds. Note: If you obtain data by page, this frequency limit rule is only applicable to the first time calling the interface, and subsequent pages request frequency is unlimited.
- _Change rate_, only supports timeframes of daily and above.
- **Options** related candlestick data, only supports 1 day, 1 minute, 5 minutes, 15 minutes and 60 minutes.
- The pre-market, after-hours and overnight candlestick of US stocks, only supports timeframes of 60 minutes and below. Since the pre-market, after-hours and overnight session of the US stock market are irregular trading hours, the candlestick data for this period may be less than 2 years.
- _Turnover_ of US stocks, only supports data after 2015-10-12.

`request_history_kline(code, start=None, end=None, ktype=KLType.K_DAY, autype=AuType.QFQ, fields=[KL_FIELD.ALL], max_count=1000, page_req_key=None, extended_time=False)`

- **Description**

Get historical candlesticks

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Stock code. |
| start | str | Start time. <br><br>Format: yyyy-MM-dd<br>For example: "2017-06-20". |
| end | str | End time. <br><br>Format: yyyy-MM-dd<br>For example: "2017-07-20". |
| ktype | [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66) | Candlestick type. |
| autype | [AuType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071) | Type of adjustment. |
| fields | [KL\_FIELD](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5803) | List of fields to be returned. |
| max\_count | int | The maximum number of candlesticks returned in this request. <br><br>  - Sending None indicates that all data between start and end is returned. <br>  - Note: OpenD requests all the data and then sends it to the script. If the number of candlesticks you want to obtain is more than 1000, it is recommended to select paging to prevent from timeout. |
| page\_req\_key | bytes | The key of the page request. If the number of candlesticks between start and end is more than max\_count, then None should be passed at the first time you call this interface, and the page\_req\_key returned by the last call must be passed in the subsequent pagerequests. |
| extended\_time | bool | Need pre-market and after-hours data for US stocks or not. False: not need, True: need. |
| session | [Session](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8688) | Get US stocks historical k-line in session <br><br>  - Only used to get historical k-line for US stocks in session.<br>  - If you want to get 24H historical k-line data of US stocks, please use 'ALL'. The 'OVERNIGHT' is not allowed.<br>  - Minimum version requirements: 9.2.4207 |

  - The combination of _**start**_ and _**end**_ is as follows

    | Start type | End type | Description |
    | --- | --- | --- |
    | str | str | _**start**_ and _**end**_ are the specified dates respectively. |
    | None | str | _**start**_ is 365 days before _**end**_. |
    | str | None | _**end**_ is 365 days after _**start**_. |
    | None | None | _**end**_ is the current date, _**start**_ is 365 days before. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, historical candlestick data is returned. |
| str | If ret != RET\_OK, error description is returned. |
| page\_req\_key | bytes | The key of the next page request. |

  - Historical candlestick data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | time\_key | str | Candlestick time. <br><br>Format: yyyy-MM-dd HH:mm:ss<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | open | float | Open. |
    | close | float | Close. |
    | high | float | High. |
    | low | float | Low. |
    | pe\_ratio | float | P/E ratio. <br><br>This field is a ratio field, and % is not displayed. |
    | turnover\_rate | float | Turnover rate. |
    | volume | int | Volume. |
    | turnover | float | Turnover. |
    | change\_rate | float | Change rate. |
    | last\_close | float | Yesterday's close. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
ret, data, page_req_key = quote_ctx.request_history_kline('US.AAPL', start='2019-09-11', end='2019-09-18', max_count=5) # 5 per page, request the first page
if ret == RET_OK:
    print(data)
    print(data['code'][0]) # Take the first stock code
    print(data['close'].values.tolist()) # The closing price of the first page is converted to a list
else:
    print('error:', data)
while page_req_key != None: # Request all results after
    print('*************************************')
    ret, data, page_req_key = quote_ctx.request_history_kline('US.AAPL', start='2019-09-11', end='2019-09-18', max_count=5,page_req_key=page_req_key) # Request the page after turning data
    if ret == RET_OK:
        print(data)
    else:
        print('error:', data)
print('All pages are finished!')
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
code  name             time_key       open      close       high        low  pe_ratio  turnover_rate    volume      turnover  change_rate  last_close
0  US.AAPL   APPLE  2019-09-11 00:00:00  52.631194  53.963447  53.992409  52.549135    18.773        0.01039  177158584  9.808562e+09     3.179511   52.300545
..       ...   ...                  ...        ...        ...        ...        ...       ...            ...       ...           ...          ...         ...
4  US.AAPL   APPLE  2019-09-17 00:00:00  53.087346  53.265945  53.294907  52.884612    18.530        0.00432   73545872  4.046314e+09     0.363802   53.072865

[5 rows x 13 columns]
US.AAPL
[53.9634465, 53.84156475, 52.7953125, 53.072865, 53.265945]
*************************************
       code  name             time_key       open      close       high        low  pe_ratio  turnover_rate   volume      turnover  change_rate  last_close
0  US.AAPL   APPLE  2019-09-18 00:00:00  53.352831  53.76554  53.784847  52.961844    18.704        0.00602  102572372  5.682068e+09     0.937925   53.265945
All pages are finished!

```


## Qot\_RequestHistoryKL.proto


- **Description**

Get historical candlestics

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For stock adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For candlestick structure, refer to [KLFields](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5803)

- **Return**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint RequestHistoryKL(QotRequestHistoryKL.Request req);`

`virtual void OnReply_RequestHistoryKL(MMAPI_Conn client, uint nSerialNo, QotRequestHistoryKL.Response rsp);`

- **Description**

Get historical candlesticks

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For stock adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For candlestick structure, refer to [KLFields](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5803)

- **Return**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int requestHistoryKL(QotRequestHistoryKL.Request req);`

`void onReply_RequestHistoryKL(MMAPI_Conn client, int nSerialNo, QotRequestHistoryKL.Response rsp);`

- **Description**

Get historical candlesticks

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For stock adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For candlestick structure, refer to [KLFields](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5803)

- **Return**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t RequestHistoryKL(const Qot_RequestHistoryKL::Request &stReq);`

`virtual void OnReply_RequestHistoryKL(moomoo::u32_t nSerialNo, const Qot_RequestHistoryKL::Response &stRsp) = 0;`

- **Description**

Get historical candlesticks

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For stock adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For candlestick structure, refer to [KLFields](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5803)

- **Return**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`RequestHistoryKL(req);`

- **Description**

Get historical candlesticks

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For stock adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For candlestick structure, refer to [KLFields](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5803)

- **Return**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Restrictions

- Candlestick data with timeframes of **60 minutes and below**, is only supported for the last 8 years. **Daily** candlestick data is supported for the last 20 years. **Daily above** candlestick data is not restricted.
- We will issue historical candlestick quota based on your account assets and transaction conditions. Therefore, you can only obtain historical candlestick data for a limited number of stocks within 30 days. For specific rules, please refer to [Subscription Quota & Historical Candlestick Quota](https://openapi.moomoo.com/moomoo-api-doc/en/intro/authority.html#9123). The historical candlestick quota you consume on that day will be automatically released after 30 days.
- A maximum of 60 requests per 30 seconds. Note: If you obtain data by page, this frequency limit rule is only applicable to the first time calling the interface, and subsequent pages request frequency is unlimited.
- _Change rate_, only supports timeframes of daily and above.
- **Options** related candlestick data, only supports 1 day, 1 minute, 5 minutes, 15 minutes and 60 minutes.
- The pre-market, after-hours and overnight candlestick of US stocks, only supports timeframes of 60 minutes and below. Since the pre-market, after-hours and overnight session of the US stock market are irregular trading hours, the candlestick data for this period may be less than 2 years.
- _Turnover_ of US stocks, only supports data after 2015-10-12.

←
[Get Plates of Stocks](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-owner-plate.html)[Get Adjustment Factor](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-rehab.html)
→

## Get Trading Calendar

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/request-trading-days.html


`request_trading_days(market=None, start=None, end=None, code=None)`

- **Description**

Request trading calendar via market or code.

Note that the trading day is obtained by excluding weekends and holidays from natural days, and the temporary market closed data is not excluded.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| market | [TradeDateMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6587) | Market type. |
| start | str | Start date. <br><br>Format: yyyy-MM-dd<br>For example: "2018-01-01". |
| end | str | End date. <br><br>Format: yyyy-MM-dd<br>For example: "2018-01-01". |
| code | str | Security code. |

Note: when both _market_ and _code_ exist, _market_ is ignored and only _code_ is effective.

  - The combination of _**start**_ and _**end**_ is as follows

    | Start type | End type | Description |
    | --- | --- | --- |
    | str | str | _**start**_ and _**end**_ are the specified dates respectively. |
    | None | str | _**start**_ is 365 days before _**end**_. |
    | str | None | _**end**_ is 365 days after _**start**_. |
    | None | None | _**start**_ is 365 days before, _**end**_ is the current date. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | list | If ret == RET\_OK, data of the trading day is returned. Data type of elements in the list is dict. |
| str | If ret != RET\_OK, error description is returned. |

  - Data of the trading day's format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | time | str | Time. <br><br>Format: yyyy-MM-dd |
    | trade\_date\_type | [TradeDateType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930) | Trading day type. |
- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.request_trading_days(TradeDateMarket.HK, start='2020-04-01', end='2020-04-10')
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
[{'time': '2020-04-01', 'trade_date_type': 'WHOLE'}, {'time': '2020-04-02', 'trade_date_type': 'WHOLE'}, {'time': '2020-04-03', 'trade_date_type': 'WHOLE'}, {'time': '2020-04-06', 'trade_date_type': 'WHOLE'}, {'time': '2020-04-07', 'trade_date_type': 'WHOLE'}, {'time': '2020-04-08', 'trade_date_type': 'WHOLE'}, {'time': '2020-04-09', 'trade_date_type': 'WHOLE'}]

```


## Qot\_RequestTradeDate.proto


- **Description**

Request trading calendar via market or code.

Note that the trading day is obtained by excluding weekends and holidays from natural days, and the temporary market closed data is not excluded.

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumerations of market type, refer to [TradeDateMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6587)

- **Return**

> - For enumerations of trading day type, refer to [TradeDateType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint RequestTradeDate(QotRequestTradeDate.Request req);`

`virtual void OnReply_RequestTradeDate(FTAPI_Conn client, uint nSerialNo, QotRequestTradeDate.Response rsp);`

- **Description**

Request trading calendar via market or code.

Note that the trading day is obtained by excluding weekends and holidays from natural days, and the temporary market closed data is not excluded.

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumerations of market type, refer to [TradeDateMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6587)

- **Return**

> - For enumerations of trading day type, refer to [TradeDateType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int requestTradeDate(QotRequestTradeDate.Request req);`

`void onReply_RequestTradeDate(FTAPI_Conn client, int nSerialNo, QotRequestTradeDate.Response rsp);`

- **Description**

Request trading calendar via market or code.

Note that the trading day is obtained by excluding weekends and holidays from natural days, and the temporary market closed data is not excluded.

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumerations of market type, refer to [TradeDateMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6587)

- **Return**

> - For enumerations of trading day type, refer to [TradeDateType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t RequestTradeDate(const Qot_RequestTradeDate::Request &stReq);`

`virtual void OnReply_RequestTradeDate(Futu::u32_t nSerialNo, const Qot_RequestTradeDate::Response &stRsp) = 0;`

- **Description**

Request trading calendar via market or code.

Note that the trading day is obtained by excluding weekends and holidays from natural days, and the temporary market closed data is not excluded.

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumerations of market type, refer to [TradeDateMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6587)

- **Return**

> - For enumerations of trading day type, refer to [TradeDateType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`RequestTradeDate(req);`

- **Description**

Request trading calendar via market or code.

Note that the trading day is obtained by excluding weekends and holidays from natural days, and the temporary market closed data is not excluded.

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumerations of market type, refer to [TradeDateMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6587)

- **Return**

> - For enumerations of trading day type, refer to [TradeDateType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 30 requests per 30 seconds
- The historical trading calendar provides data for the past 10 years, and the future trading calendar is available until December 31 this year.

For example: today's date is July 6, 2021, and the period only from 2011-07-06 to 2021-12-31 is provided.

。

`request_trading_days(market=None, start=None, end=None, code=None)`

- **Description**

Request trading calendar via market or code.

Note that the trading day is obtained by excluding weekends and holidays from natural days, and the temporary market closed data is not excluded.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| market | [TradeDateMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6587) | Market type. |
| start | str | Start date. <br><br>Format: yyyy-MM-dd<br>For example: "2018-01-01". |
| end | str | End date. <br><br>Format: yyyy-MM-dd<br>For example: "2018-01-01". |
| code | str | Security code. |

Note: when both _market_ and _code_ exist, _market_ is ignored and only _code_ is effective.

  - The combination of _**start**_ and _**end**_ is as follows

    | Start type | End type | Description |
    | --- | --- | --- |
    | str | str | _**start**_ and _**end**_ are the specified dates respectively. |
    | None | str | _**start**_ is 365 days before _**end**_. |
    | str | None | _**end**_ is 365 days after _**start**_. |
    | None | None | _**start**_ is 365 days before, _**end**_ is the current date. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | list | If ret == RET\_OK, data of the trading day is returned. Data type of elements in the list is dict. |
| str | If ret != RET\_OK, error description is returned. |

  - Data of the trading day's format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | time | str | Time. <br><br>Format: yyyy-MM-dd |
    | trade\_date\_type | [TradeDateType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930) | Trading day type. |
- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

ret, data = quote_ctx.request_trading_days(TradeDateMarket.HK, start='2020-04-01', end='2020-04-10')
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
[{'time': '2020-04-01', 'trade_date_type': 'WHOLE'}, {'time': '2020-04-02', 'trade_date_type': 'WHOLE'}, {'time': '2020-04-03', 'trade_date_type': 'WHOLE'}, {'time': '2020-04-06', 'trade_date_type': 'WHOLE'}, {'time': '2020-04-07', 'trade_date_type': 'WHOLE'}, {'time': '2020-04-08', 'trade_date_type': 'WHOLE'}, {'time': '2020-04-09', 'trade_date_type': 'WHOLE'}]

```


## Qot\_RequestTradeDate.proto


- **Description**

Request trading calendar via market or code.

Note that the trading day is obtained by excluding weekends and holidays from natural days, and the temporary market closed data is not excluded.

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumerations of market type, refer to [TradeDateMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6587)

- **Return**

> - For enumerations of trading day type, refer to [TradeDateType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint RequestTradeDate(QotRequestTradeDate.Request req);`

`virtual void OnReply_RequestTradeDate(MMAPI_Conn client, uint nSerialNo, QotRequestTradeDate.Response rsp);`

- **Description**

Request trading calendar via market or code.

Note that the trading day is obtained by excluding weekends and holidays from natural days, and the temporary market closed data is not excluded.

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumerations of market type, refer to [TradeDateMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6587)

- **Return**

> - For enumerations of trading day type, refer to [TradeDateType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int requestTradeDate(QotRequestTradeDate.Request req);`

`void onReply_RequestTradeDate(MMAPI_Conn client, int nSerialNo, QotRequestTradeDate.Response rsp);`

- **Description**

Request trading calendar via market or code.

Note that the trading day is obtained by excluding weekends and holidays from natural days, and the temporary market closed data is not excluded.

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumerations of market type, refer to [TradeDateMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6587)

- **Return**

> - For enumerations of trading day type, refer to [TradeDateType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t RequestTradeDate(const Qot_RequestTradeDate::Request &stReq);`

`virtual void OnReply_RequestTradeDate(moomoo::u32_t nSerialNo, const Qot_RequestTradeDate::Response &stRsp) = 0;`

- **Description**

Request trading calendar via market or code.

Note that the trading day is obtained by excluding weekends and holidays from natural days, and the temporary market closed data is not excluded.

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumerations of market type, refer to [TradeDateMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6587)

- **Return**

> - For enumerations of trading day type, refer to [TradeDateType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`RequestTradeDate(req);`

- **Description**

Request trading calendar via market or code.

Note that the trading day is obtained by excluding weekends and holidays from natural days, and the temporary market closed data is not excluded.

- **Parameters**

> - For stock structure refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For enumerations of market type, refer to [TradeDateMarket](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6587)

- **Return**

> - For enumerations of trading day type, refer to [TradeDateType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- A maximum of 30 requests per 30 seconds
- The historical trading calendar provides data for the past 10 years, and the future trading calendar is available until December 31 this year.

For example: today's date is July 6, 2021, and the period only from 2011-07-06 to 2021-12-31 is provided.

。

←
[Get global market status](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-global-state.html)[Get Details of Historical Candlestick Quota](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-history-kl-quota.html)
→

## Set Price Reminder

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/set-price-reminder.html


`set_price_reminder(code, op, key=None, reminder_type=None, reminder_freq=None, value=None, note=None, reminder_session_list=NONE)`

- **Description**

Add, delete, modify, enable, and disable price reminders for specified stocks

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Stock code |
| op | [SetPriceReminderOp](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8810) | Operation type. |
| key | int | Identification, do not need to fill in the case of adding all or deleting all. |
| reminder\_type | [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793) | The type of price reminder, this input parameter will be ignored when delete, enable, or disable. |
| reminder\_freq | [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918) | The frequency of price reminder, this input parameter will be ignored when delete, enabled, or disable. |
| value | float | Reminder value, the input parameter will be ignored when delete, enable, or disable. <br><br>3 decimal place accuracy, the excess part is discarded. |
| note | str | The note set by the user, note supports no more than 20 Chinese characters, the input parameter will be ignored when delete, enable, or disable. |
| reminder\_session\_list | list | The session for US stocks price reminder, this input parameter will be ignored when delete, enable, or disable. <br><br>  - The parameter type in list is [PriceReminderMarketStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6578).<br>  - The default price reminder session for US stocks is pre/post+RTH. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| key | int | If ret == RET\_OK, The price reminder key of the operation is returned. When deleting all reminders of a specific stock, 0 is returned. |
| str | If ret != RET\_OK, error description is returned. |

- **Example**

```python
from futu import *
import time
class PriceReminderTest(PriceReminderHandlerBase):
    def on_recv_rsp(self, rsp_pb):
        ret_code, content = super(PriceReminderTest,self).on_recv_rsp(rsp_pb)
        if ret_code != RET_OK:
            print("PriceReminderTest: error, msg: %s" % content)
            return RET_ERROR, content
        print("PriceReminderTest ", content)
        return RET_OK, content
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
handler = PriceReminderTest()
quote_ctx.set_handler(handler)
ret, data = quote_ctx.get_market_snapshot(['US.AAPL'])
if ret == RET_OK:
    bid_price = data['bid_price'][0] # Get real-time bid price
    ask_price = data['ask_price'][0] # Get real-time selling price
    # Set a reminder for AAPL(24H) when the selling price is lower than (ask_price-1)
    ret_ask, ask_data = quote_ctx.set_price_reminder(code='US.AAPL', op=SetPriceReminderOp.ADD, key=None, reminder_type=PriceReminderTypeASK_PRICE_DOWN, reminder_freq=PriceReminderFreq.ALWAYS, value=(ask_price-1), note='123', reminder_session_list=[PriceReminderMarketStatus.US_PRE, PriceReminderMarketStatus.OPEN, PriceReminderMarketStatus.US_AFTER, PriceReminderMarketStatus.US_OVERNIGHT])
    if ret_ask == RET_OK:
        print('When the selling price is lower than (ask_price-1), remind that the setting is successful:', ask_data)
    else:
        print('error:', ask_data)
    # Set a reminder for AAPL(24H) when the bid price is higher than (bid_price+1)
    ret_bid, bid_data = quote_ctx.set_price_reminder(code='US.AAPL', op=SetPriceReminderOp.ADD, key=None, reminder_type=PriceReminderType.BID_PRICE_UP, reminder_freq=PriceReminderFreq.ALWAYS, value=(bid_price+1), note='456', reminder_session_list=[PriceReminderMarketStatus.US_PRE, PriceReminderMarketStatus.OPEN, PriceReminderMarketStatus.US_AFTER, PriceReminderMarketStatus.US_OVERNIGHT])
    if ret_bid == RET_OK:
        print('When the bid price is higher than (bid_price+1), the reminder is set successfully: ', bid_data)
    else:
        print('error:', bid_data)
time.sleep(15)
quote_ctx.close()

```

- **Output**

```python
When the selling price is lower than (ask_price-1), the reminder is set successfully: 158815356110052101
When the bid price is higher than (bid_price+1), the reminder is set successfully: 158815356129980801

```


## Qot\_SetPriceReminder.proto


- **Description**

Add, delete, modify, enable, and disable price reminders for specified stocks

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For enumeration of reminder frequency, refer to [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint SetPriceReminder(QotSetPriceReminder.Request req);`

`virtual void OnReply_SetPriceReminder(FTAPI_Conn client, uint nSerialNo, QotSetPriceReminder.Response rsp);`

- **Description**

Add, delete, modify, enable, and disable price reminders for specified stocks

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For enumeration of reminder frequency, refer to [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int setPriceReminder(QotSetPriceReminder.Request req);`

`void onReply_SetPriceReminder(FTAPI_Conn client, int nSerialNo, QotSetPriceReminder.Response rsp);`

- **Description**

Add, delete, modify, enable, and disable price reminders for specified stocks

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For enumeration of reminder frequency, refer to [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`Futu::u32_t SetPriceReminder(const Qot_SetPriceReminder::Request &stReq);`

`virtual void OnReply_SetPriceReminder(Futu::u32_t nSerialNo, const Qot_SetPriceReminder::Response &stRsp) = 0;`

- **Description**

Add, delete, modify, enable, and disable price reminders for specified stocks

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For enumeration of reminder frequency, refer to [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`SetPriceReminder(req);`

- **Description**

Add, delete, modify, enable, and disable price reminders for specified stocks

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For enumeration of reminder frequency, refer to [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- Trading volume in API is based on shares. A-shares are shown in lots in Futubull Client.

- The type of price alert has minimum precision, as follows:

TURNOVER\_UP: The minimum precision of the turnover is 10 (Yuan, Hong Kong dollar, US dollar). The value passed in will be automatically rounded down to an integer multiple of the minimum precision. If you set 00700 transaction volume 102 yuan reminder, you will get 00700 transaction volume 100 yuan reminder. After setting; if you set 00700 transaction volume 8 yuan reminder, you will get 00700 transaction volume 0 yuan reminder after setting.

VOLUME\_UP: The minimum accuracy of A-share trading volume is 1000 shares, and the minimum accuracy of other market stock trading volume is 10 shares. The value passed in will be automatically rounded down to an integer multiple of the minimum precision.

BID\_VOL\_UP, ASK\_VOL\_UP: The minimum precision for buying and selling of A-shares is 100 shares. The value passed in will be automatically rounded down to an integer multiple of the minimum precision.

The precision of the remaining price alert types supports up to 3 decimal places

Interface Limitations

- A maximum of 60 requests per 30 seconds
- The upper limit of reminders that can be set for each type of each stock is 10

`set_price_reminder(code, op, key=None, reminder_type=None, reminder_freq=None, value=None, note=None, reminder_session_list=NONE)`

- **Description**

Add, delete, modify, enable, and disable price reminders for specified stocks

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code | str | Stock code |
| op | [SetPriceReminderOp](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8810) | Operation type. |
| key | int | Identification, do not need to fill in the case of adding all or deleting all. |
| reminder\_type | [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793) | The type of price reminder, this input parameter will be ignored when delete, enable, or disable. |
| reminder\_freq | [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918) | The frequency of price reminder, this input parameter will be ignored when delete, enabled, or disable. |
| value | float | Reminder value, the input parameter will be ignored when delete, enable, or disable. <br><br>3 decimal place accuracy, the excess part is discarded. |
| note | str | The note set by the user, note supports no more than 20 Chinese characters, the input parameter will be ignored when delete, enable, or disable. |
| reminder\_session\_list | list | The session for US stocks price reminder, this input parameter will be ignored when delete, enable, or disable. <br><br>  - The parameter type in list is [PriceReminderMarketStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6578).<br>  - The default price reminder session for US stocks is pre/post+RTH. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| key | int | If ret == RET\_OK, The price reminder key of the operation is returned. When deleting all reminders of a specific stock, 0 is returned. |
| str | If ret != RET\_OK, error description is returned. |

- **Example**

```python
from moomoo import *
import time
class PriceReminderTest(PriceReminderHandlerBase):
    def on_recv_rsp(self, rsp_pb):
        ret_code, content = super(PriceReminderTest,self).on_recv_rsp(rsp_pb)
        if ret_code != RET_OK:
            print("PriceReminderTest: error, msg: %s" % content)
            return RET_ERROR, content
        print("PriceReminderTest ", content)
        return RET_OK, content
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
handler = PriceReminderTest()
quote_ctx.set_handler(handler)
ret, data = quote_ctx.get_market_snapshot(['US.AAPL'])
if ret == RET_OK:
    bid_price = data['bid_price'][0] # Get real-time bid price
    ask_price = data['ask_price'][0] # Get real-time selling price
    # Set a reminder for AAPL(24H) when the selling price is lower than (ask_price-1)
    ret_ask, ask_data = quote_ctx.set_price_reminder(code='US.AAPL', op=SetPriceReminderOp.ADD, key=None, reminder_type=PriceReminderTypeASK_PRICE_DOWN, reminder_freq=PriceReminderFreq.ALWAYS, value=(ask_price-1), note='123', reminder_session_list=[PriceReminderMarketStatus.US_PRE, PriceReminderMarketStatus.OPEN, PriceReminderMarketStatus.US_AFTER, PriceReminderMarketStatus.US_OVERNIGHT])
    if ret_ask == RET_OK:
        print('When the selling price is lower than (ask_price-1), remind that the setting is successful:', ask_data)
    else:
        print('error:', ask_data)
    # Set a reminder for AAPL(24H) when the bid price is higher than (bid_price+1)
    ret_bid, bid_data = quote_ctx.set_price_reminder(code='US.AAPL', op=SetPriceReminderOp.ADD, key=None, reminder_type=PriceReminderType.BID_PRICE_UP, reminder_freq=PriceReminderFreq.ALWAYS, value=(bid_price+1), note='456', reminder_session_list=[PriceReminderMarketStatus.US_PRE, PriceReminderMarketStatus.OPEN, PriceReminderMarketStatus.US_AFTER, PriceReminderMarketStatus.US_OVERNIGHT])
    if ret_bid == RET_OK:
        print('When the bid price is higher than (bid_price+1), the reminder is set successfully: ', bid_data)
    else:
        print('error:', bid_data)
time.sleep(15)
quote_ctx.close()

```

- **Output**

```python
When the selling price is lower than (ask_price-1), the reminder is set successfully: 158815356110052101
When the bid price is higher than (bid_price+1), the reminder is set successfully: 158815356129980801

```


## Qot\_SetPriceReminder.proto


- **Description**

Add, delete, modify, enable, and disable price reminders for specified stocks

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For enumeration of reminder frequency, refer to [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`uint SetPriceReminder(QotSetPriceReminder.Request req);`

`virtual void OnReply_SetPriceReminder(MMAPI_Conn client, uint nSerialNo, QotSetPriceReminder.Response rsp);`

- **Description**

Add, delete, modify, enable, and disable price reminders for specified stocks

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For enumeration of reminder frequency, refer to [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`int setPriceReminder(QotSetPriceReminder.Request req);`

`void onReply_SetPriceReminder(MMAPI_Conn client, int nSerialNo, QotSetPriceReminder.Response rsp);`

- **Description**

Add, delete, modify, enable, and disable price reminders for specified stocks

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For enumeration of reminder frequency, refer to [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`moomoo::u32_t SetPriceReminder(const Qot_SetPriceReminder::Request &stReq);`

`virtual void OnReply_SetPriceReminder(moomoo::u32_t nSerialNo, const Qot_SetPriceReminder::Response &stRsp) = 0;`

- **Description**

Add, delete, modify, enable, and disable price reminders for specified stocks

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For enumeration of reminder frequency, refer to [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`SetPriceReminder(req);`

- **Description**

Add, delete, modify, enable, and disable price reminders for specified stocks

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For enumeration of reminder frequency, refer to [PriceReminderFreq](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9918)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- Trading volume in API is based on shares. A-shares are shown in lots in moomoo Client.

- The type of price alert has minimum precision, as follows:

TURNOVER\_UP: The minimum precision of the turnover is 10 (Yuan, Hong Kong dollar, US dollar). The value passed in will be automatically rounded down to an integer multiple of the minimum precision. If you set 00700 transaction volume 102 yuan reminder, you will get 00700 transaction volume 100 yuan reminder. After setting; if you set 00700 transaction volume 8 yuan reminder, you will get 00700 transaction volume 0 yuan reminder after setting.

VOLUME\_UP: The minimum accuracy of A-share trading volume is 1000 shares, and the minimum accuracy of other market stock trading volume is 10 shares. The value passed in will be automatically rounded down to an integer multiple of the minimum precision.

BID\_VOL\_UP, ASK\_VOL\_UP: The minimum precision for buying and selling of A-shares is 100 shares. The value passed in will be automatically rounded down to an integer multiple of the minimum precision.

The precision of the remaining price alert types supports up to 3 decimal places

Interface Limitations

- A maximum of 60 requests per 30 seconds
- The upper limit of reminders that can be set for each type of each stock is 10

←
[Get Details of Historical Candlestick Quota](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-history-kl-quota.html)[Get Price Reminder List](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-price-reminder.html)
→

## Subscribe and Unsubscribe

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/sub.html



## Subscribe to Real-Time Market Data


`subscribe(code_list, subtype_list, is_first_push=True, subscribe_push=True, is_detailed_orderbook=False, extended_time=False, session=Session.NONE)`

- **Description**

To subscribe to the real-time information required for registration, specify the stock and subscription data types.

HK market (including underlying stocks, warrants, CBBCs, options, futures) subscriptions require LV1 and above permissions. Subscriptions are not supported under BMP permissions.

US market (including underlying stocks, ETFs) subscriptions for overnight quotes require LV1 and above permissions. Subscriptions are not supported under BMP permissions.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code\_list | list | A list of stock codes that need to be subscribed. <br><br>Data type of elements in the list is str. |
| subtype\_list | list | List of data types that need to be subscribed. <br><br>Data type of elements in the list is [SubType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7721). |
| is\_first\_push | bool | Whether to push the cached data immediately after a successful subscription. <br><br>  - True: Push the cached data. When there is a disconnection and reconnection between scripts and OpenD, the last data before the disconnection will be pushed again if it is set to True when resubscribing.<br>  - False: Do not push the cached data. Wait for the latest data to be pushed from Futu server. |
| subscribe\_push | bool | Whether to push data after subscription.<br><br>After subscription, OpenD provides [two methods to obtain data](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505). If you only use the method of **Get Real-time Data** , setting to False can save part of the performance cost.<br>  - True: Push data. It must be set to True if the **Real-time data Callback** method is used.<br>  - False: Do not push data. It is recommended to set to False if **only** using the **Get Real-time Data**. |
| is\_detailed\_orderbook | bool | Whether to subscribe to the detailed order book. <br><br>  - Only for Hong Kong stocks ORDER\_BOOK type under the authority of Hong Kong stocks SF market. <br>  - Under the authority of US stocks & futures LV2, the detailed order book is not provided. |
| extended\_time | bool | Whether to allow pre-market and after-hours data of US stocks. <br><br>Only used for subscribing to real-time candlestick and real-time Time Frame and real-time tick-by-tick of US stocks. |
| session | [Session](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8688) | US stocks quotes session <br><br>  - Only used for subscribing to real-time candlestick and real-time Time Frame and real-time tick-by-tick of US stocks.<br>  - Please choose 'ALL' to subscribe 24H quotes for US stocks. The 'OVERNIGHT' is not allowed.<br>  - Minimum version requirements: 9.2.4207 |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| err\_message | NoneType | If ret == RET\_OK, None is returned. |
| str | If ret != RET\_OK, error description is returned. |

- **Example**

```python
import time
from futu import *
class OrderBookTest(OrderBookHandlerBase):
    def on_recv_rsp(self, rsp_pb):
        ret_code, data = super(OrderBookTest,self).on_recv_rsp(rsp_pb)
        if ret_code != RET_OK:
            print("OrderBookTest: error, msg: %s"% data)
            return RET_ERROR, data
        print("OrderBookTest ", data) # OrderBookTest's own processing logic
        return RET_OK, data
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
handler = OrderBookTest()
quote_ctx.set_handler(handler) # Set real-time swing callback
quote_ctx.subscribe(['US.AAPL'], [SubType.ORDER_BOOK]) # Subscribe to the order type, OpenD starts to receive continuous push from the server
time.sleep(15) # Set the script to receive OpenD push duration to 15 seconds
quote_ctx.close() # Close the current link, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
OrderBookTest  {'code': 'US.AAPL', 'name': 'Apple', 'svr_recv_time_bid': '2025-04-07 05:00:52.266', 'svr_recv_time_ask': '2025-04-07 05:00:53.973', 'Bid': [(180.2, 15, 3, {}), (180.19, 1, 1, {}), (180.18, 11, 2, {}), (180.14, 200, 1, {}), (180.13, 3, 2, {}), (180.1, 99, 3, {}), (180.05, 3, 1, {}), (180.03, 400, 1, {}), (180.02, 10, 1, {}), (180.01, 100, 1, {}), (180.0, 441, 24, {})], 'Ask': [(180.3, 100, 1, {}), (180.38, 4, 2, {}), (180.4, 100, 1, {}), (180.42, 200, 1, {}), (180.46, 29, 1, {}), (180.5, 1019, 2, {}), (180.6, 1000, 1, {}), (180.8, 2001, 3, {}), (180.84, 15, 2, {}), (181.0, 2036, 4, {}), (181.2, 2000, 2, {}), (181.3, 3, 1, {}), (181.4, 2021, 3, {}), (181.5, 59, 2, {}), (181.79, 9, 1, {}), (181.8, 20, 1, {}), (181.9, 94, 4, {}), (181.98, 20, 1, {}), (182.0, 150, 7, {})]}

```


## Cancel Market Data Subscription


`unsubscribe(code_list, subtype_list, unsubscribe_all=False)`

- **Description**

unsubscribe

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code\_list | list | A list of stock codes to unsubscribe. <br><br>Data type of elements in the list is str. |
| subtype\_list | list | List of data types that need to be subscribed. <br><br>Data type of elements in the list is [SubType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7721). |
| unsubscribe\_all | bool | Cancel all subscriptions. <br><br>Ignore other parameters when it is True. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| err\_message | NoneType | If ret == RET\_OK, None is returned. |
| str | If ret != RET\_OK, error description is returned. |

- **Example**

```python
from futu import *
import time
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

print('current subscription status :', quote_ctx.query_subscription()) # Query the initial subscription status
ret_sub, err_message = quote_ctx.subscribe(['US.AAPL'], [SubType.QUOTE, SubType.TICKER], subscribe_push=False, session=Session.ALL)
# First subscribed to the two types of QUOTE and TICKER. After the subscription is successful, OpenD will continue to receive pushes from the server, False means that there is no need to push to the script temporarily
if ret_sub == RET_OK: # Subscription successful
    print('subscribe successfully! current subscription status :', quote_ctx.query_subscription()) # Query subscription status after successful subscription
    time.sleep(60) # You can unsubscribe at least 1 minute after subscribing
    ret_unsub, err_message_unsub = quote_ctx.unsubscribe(['US.AAPL'], [SubType.QUOTE])
    if ret_unsub == RET_OK:
        print('unsubscribe successfully! current subscription status:', quote_ctx.query_subscription()) # Query the subscription status after canceling the subscription
    else:
        print('unsubscription failed!', err_message_unsub)
else:
    print('subscription failed', err_message)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
current subscription status : (0, {'total_used': 0, 'remain': 1000, 'own_used': 0, 'sub_list': {}})
subscribe successfully！current subscription status : (0, {'total_used': 2, 'remain': 998, 'own_used': 2, 'sub_list': {'QUOTE': ['US.AAPL'], 'TICKER': ['US.AAPL']}})
unsubscribe successfully！current subscription status: (0, {'total_used': 1, 'remain': 999, 'own_used': 1, 'sub_list': {'TICKER': ['US.AAPL']}})

```


## Cancel All Market Data Subscriptions


`unsubscribe_all()`

- **Description**

Unsubscribe all subscriptions

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| err\_message | NoneType | If ret == RET\_OK, None is returned. |
| str | If ret != RET\_OK, error description is returned. |

- **Example**

```python
from futu import *
import time
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

print('current subscription status :', quote_ctx.query_subscription()) # Query the initial subscription status
ret_sub, err_message = quote_ctx.subscribe(['US.AAPL'], [SubType.QUOTE, SubType.TICKER], subscribe_push=False, session=Session.ALL)
# First subscribed to the two types of QUOTE and TICKER. After the subscription is successful, OpenD will continue to receive pushes from the server, False means that there is no need to push to the script temporarily
if ret_sub == RET_OK: # Subscription successful
    print('subscribe successfully! current subscription status :', quote_ctx.query_subscription()) # Query subscription status after successful subscription
    time.sleep(60) # You can unsubscribe at least 1 minute after subscribing
    ret_unsub, err_message_unsub = quote_ctx.unsubscribe_all() # Cancel all subscriptions
    if ret_unsub == RET_OK:
        print('unsubscribe all successfully! current subscription status:', quote_ctx.query_subscription()) # Query the subscription status after canceling the subscription
    else:
        print('Failed to cancel all subscriptions！', err_message_unsub)
else:
    print('subscription failed', err_message)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
current subscription status : (0, {'total_used': 0, 'remain': 1000, 'own_used': 0, 'sub_list': {}})
subscribe successfully！current subscription status : (0, {'total_used': 2, 'remain': 998, 'own_used': 2, 'sub_list': {'QUOTE': ['US.AAPL'], 'TICKER': ['US.AAPL']}})
unsubscribe all successfully！current subscription status: (0, {'total_used': 0, 'remain': 1000, 'own_used': 0, 'sub_list': {}})

```


## Qot\_Sub.proto


- **Description**

To subscribe to the real-time information required for registration, specify the stock and subscription data types.

HK market (including underlying stocks, warrants, CBBCs, options, futures) subscriptions require LV1 and above permissions. Subscriptions are not supported under BMP permissions.

US market (including underlying stocks, ETFs) subscriptions for overnight quotes require LV1 and above permissions. Subscriptions are not supported under BMP permissions.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the subscription data type, refer to [SubType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7721)
> - For stock adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**


## Sub


`uint Sub(QotSub.Request req);`

`virtual void OnReply_Sub(FTAPI_Conn client, uint nSerialNo, QotSub.Response rsp);`

- **Description**

To subscribe to the real-time information required for registration, specify the stock and subscription data types.

HK market (including underlying stocks, warrants, CBBCs, options, futures) subscriptions require LV1 and above permissions. Subscriptions are not supported under BMP permissions.

US market (including underlying stocks, ETFs) subscriptions for overnight quotes require LV1 and above permissions. Subscriptions are not supported under BMP permissions.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the subscription data type, refer to [SubType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7721)
> - For stock adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**


## sub


`int sub(QotSub.Request req);`

`void onReply_Sub(FTAPI_Conn client, int nSerialNo, QotSub.Response rsp);`

- **Description**

To subscribe to the real-time information required for registration, specify the stock and subscription data types.

HK market (including underlying stocks, warrants, CBBCs, options, futures) subscriptions require LV1 and above permissions. Subscriptions are not supported under BMP permissions.

US market (including underlying stocks, ETFs) subscriptions for overnight quotes require LV1 and above permissions. Subscriptions are not supported under BMP permissions.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the subscription data type, refer to [SubType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7721)
> - For stock adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**


## Sub


`Futu::u32_t Sub(const Qot_Sub::Request &stReq);`

`virtual void OnReply_Sub(Futu::u32_t nSerialNo, const Qot_Sub::Response &stRsp) = 0;`

- **Description**

To subscribe to the real-time information required for registration, specify the stock and subscription data types.

HK market (including underlying stocks, warrants, CBBCs, options, futures) subscriptions require LV1 and above permissions. Subscriptions are not supported under BMP permissions.

US market (including underlying stocks, ETFs) subscriptions for overnight quotes require LV1 and above permissions. Subscriptions are not supported under BMP permissions.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the subscription data type, refer to [SubType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7721)
> - For stock adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**


## Sub


`Sub(req);`

- **Description**

To subscribe to the real-time information required for registration, specify the stock and subscription data types.

HK market (including underlying stocks, warrants, CBBCs, options, futures) subscriptions require LV1 and above permissions. Subscriptions are not supported under BMP permissions.

US market (including underlying stocks, ETFs) subscriptions for overnight quotes require LV1 and above permissions. Subscriptions are not supported under BMP permissions.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the subscription data type, refer to [SubType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7721)
> - For stock adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- Supports subscriptions of multiple real-time data types, refer to [SubType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7721), each stock subscription for one one quota.
- Please refer to [Subscription Quota & Historical Candlestick Quota](https://openapi.moomoo.com/moomoo-api-doc/en/intro/authority.html#9123) for Subscription Quota rules.
- You can unsubscribe after subscribing after at least one minute.
- Due to the large amount of SF market data in Hong Kong stocks, in order to ensure the speed of the SF market and the processing performance of OpenD, currently SF authorized users are limited to subscribing to 50 security products (including hkex stocks, warrants, bulls and bears) at the same time, the remaining subscription quota can still be used to subscribe to other types, such as: tickers and brokerage etc.
- HK options and futures do not support subscription to _TICKER_ type under LV1 authority.


## subscribe


`subscribe(code_list, subtype_list, is_first_push=True, subscribe_push=True, is_detailed_orderbook=False, extended_time=False, session=Session.NONE)`

- **Description**

To subscribe to the real-time information required for registration, specify the stock and subscription data types.

HK market (including underlying stocks, warrants, CBBCs, options, futures) subscriptions require LV1 and above permissions. Subscriptions are not supported under BMP permissions.

US market (including underlying stocks, ETFs) subscriptions for overnight quotes require LV1 and above permissions. Subscriptions are not supported under BMP permissions.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code\_list | list | A list of stock codes that need to be subscribed. <br><br>Data type of elements in the list is str. |
| subtype\_list | list | List of data types that need to be subscribed. <br><br>Data type of elements in the list is [SubType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7721). |
| is\_first\_push | bool | Whether to push the cached data immediately after a successful subscription. <br><br>  - True: Push the cached data. When there is a disconnection and reconnection between scripts and OpenD, the last data before the disconnection will be pushed again if it is set to True when resubscribing.<br>  - False: Do not push the cached data. Wait for the latest data to be pushed from moomoo server. |
| subscribe\_push | bool | Whether to push data after subscription.<br><br>After subscription, OpenD provides [two methods to obtain data](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505). If you only use the method of **Get Real-time Data** , setting to False can save part of the performance cost.<br>  - True: Push data. It must be set to True if the **Real-time data Callback** method is used.<br>  - False: Do not push data. It is recommended to set to False if **only** using the **Get Real-time Data**. |
| is\_detailed\_orderbook | bool | Whether to subscribe to the detailed order book. <br><br>  - Only for Hong Kong stocks ORDER\_BOOK type under the authority of Hong Kong stocks SF market. <br>  - Under the authority of US stocks & futures LV2, the detailed order book is not provided. |
| extended\_time | bool | Whether to allow pre-market and after-hours data of US stocks. <br><br>Only used for subscribing to real-time candlestick and real-time Time Frame and real-time tick-by-tick of US stocks. |
| session | [Session](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8688) | US stocks quotes session <br><br>  - Only used for subscribing to real-time candlestick and real-time Time Frame and real-time tick-by-tick of US stocks.<br>  - Please choose 'ALL' to subscribe 24H quotes for US stocks. The 'OVERNIGHT' is not allowed.<br>  - Minimum version requirements: 9.2.4207 |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| err\_message | NoneType | If ret == RET\_OK, None is returned. |
| str | If ret != RET\_OK, error description is returned. |

- **Example**

```python
import time
from moomoo import *
class OrderBookTest(OrderBookHandlerBase):
    def on_recv_rsp(self, rsp_pb):
        ret_code, data = super(OrderBookTest,self).on_recv_rsp(rsp_pb)
        if ret_code != RET_OK:
            print("OrderBookTest: error, msg: %s"% data)
            return RET_ERROR, data
        print("OrderBookTest ", data) # OrderBookTest's own processing logic
        return RET_OK, data
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
handler = OrderBookTest()
quote_ctx.set_handler(handler) # Set real-time swing callback
quote_ctx.subscribe(['US.AAPL'], [SubType.ORDER_BOOK]) # Subscribe to the order type, OpenD starts to receive continuous push from the server
time.sleep(15) # Set the script to receive OpenD push duration to 15 seconds
quote_ctx.close() # Close the current link, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
OrderBookTest  {'code': 'US.AAPL', 'name': 'Apple', 'svr_recv_time_bid': '2025-04-07 05:00:52.266', 'svr_recv_time_ask': '2025-04-07 05:00:53.973', 'Bid': [(180.2, 15, 3, {}), (180.19, 1, 1, {}), (180.18, 11, 2, {}), (180.14, 200, 1, {}), (180.13, 3, 2, {}), (180.1, 99, 3, {}), (180.05, 3, 1, {}), (180.03, 400, 1, {}), (180.02, 10, 1, {}), (180.01, 100, 1, {}), (180.0, 441, 24, {})], 'Ask': [(180.3, 100, 1, {}), (180.38, 4, 2, {}), (180.4, 100, 1, {}), (180.42, 200, 1, {}), (180.46, 29, 1, {}), (180.5, 1019, 2, {}), (180.6, 1000, 1, {}), (180.8, 2001, 3, {}), (180.84, 15, 2, {}), (181.0, 2036, 4, {}), (181.2, 2000, 2, {}), (181.3, 3, 1, {}), (181.4, 2021, 3, {}), (181.5, 59, 2, {}), (181.79, 9, 1, {}), (181.8, 20, 1, {}), (181.9, 94, 4, {}), (181.98, 20, 1, {}), (182.0, 150, 7, {})]}

```


## unsubscribe


`unsubscribe(code_list, subtype_list, unsubscribe_all=False)`

- **Description**

unsubscribe

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| code\_list | list | A list of stock codes to unsubscribe. <br><br>Data type of elements in the list is str. |
| subtype\_list | list | List of data types that need to be subscribed. <br><br>Data type of elements in the list is [SubType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7721). |
| unsubscribe\_all | bool | Cancel all subscriptions. <br><br>Ignore other parameters when it is True. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| err\_message | NoneType | If ret == RET\_OK, None is returned. |
| str | If ret != RET\_OK, error description is returned. |

- **Example**

```python
from moomoo import *
import time
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

print('current subscription status :', quote_ctx.query_subscription()) # Query the initial subscription status
ret_sub, err_message = quote_ctx.subscribe(['US.AAPL'], [SubType.QUOTE, SubType.TICKER], subscribe_push=False, session=Session.ALL)
# First subscribed to the two types of QUOTE and TICKER. After the subscription is successful, OpenD will continue to receive pushes from the server, False means that there is no need to push to the script temporarily
if ret_sub == RET_OK: # Subscription successful
    print('subscribe successfully! current subscription status :', quote_ctx.query_subscription()) # Query subscription status after successful subscription
    time.sleep(60) # You can unsubscribe at least 1 minute after subscribing
    ret_unsub, err_message_unsub = quote_ctx.unsubscribe(['US.AAPL'], [SubType.QUOTE])
    if ret_unsub == RET_OK:
        print('unsubscribe successfully! current subscription status:', quote_ctx.query_subscription()) # Query the subscription status after canceling the subscription
    else:
        print('unsubscription failed!', err_message_unsub)
else:
    print('subscription failed', err_message)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
current subscription status : (0, {'total_used': 0, 'remain': 1000, 'own_used': 0, 'sub_list': {}})
subscribe successfully！current subscription status : (0, {'total_used': 2, 'remain': 998, 'own_used': 2, 'sub_list': {'QUOTE': ['US.AAPL'], 'TICKER': ['US.AAPL']}})
unsubscribe successfully！current subscription status: (0, {'total_used': 1, 'remain': 999, 'own_used': 1, 'sub_list': {'TICKER': ['US.AAPL']}})

```


## unsubscribe\_all


`unsubscribe_all()`

- **Description**

Unsubscribe all subscriptions

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| err\_message | NoneType | If ret == RET\_OK, None is returned. |
| str | If ret != RET\_OK, error description is returned. |

- **Example**

```python
from moomoo import *
import time
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)

print('current subscription status :', quote_ctx.query_subscription()) # Query the initial subscription status
ret_sub, err_message = quote_ctx.subscribe(['US.AAPL'], [SubType.QUOTE, SubType.TICKER], subscribe_push=False, session=Session.ALL)
# First subscribed to the two types of QUOTE and TICKER. After the subscription is successful, OpenD will continue to receive pushes from the server, False means that there is no need to push to the script temporarily
if ret_sub == RET_OK: # Subscription successful
    print('subscribe successfully! current subscription status :', quote_ctx.query_subscription()) # Query subscription status after successful subscription
    time.sleep(60) # You can unsubscribe at least 1 minute after subscribing
    ret_unsub, err_message_unsub = quote_ctx.unsubscribe_all() # Cancel all subscriptions
    if ret_unsub == RET_OK:
        print('unsubscribe all successfully! current subscription status:', quote_ctx.query_subscription()) # Query the subscription status after canceling the subscription
    else:
        print('Failed to cancel all subscriptions！', err_message_unsub)
else:
    print('subscription failed', err_message)
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

- **Output**

```python
current subscription status : (0, {'total_used': 0, 'remain': 1000, 'own_used': 0, 'sub_list': {}})
subscribe successfully！current subscription status : (0, {'total_used': 2, 'remain': 998, 'own_used': 2, 'sub_list': {'QUOTE': ['US.AAPL'], 'TICKER': ['US.AAPL']}})
unsubscribe all successfully！current subscription status: (0, {'total_used': 0, 'remain': 1000, 'own_used': 0, 'sub_list': {}})

```


## Qot\_Sub.proto


- **Description**

To subscribe to the real-time information required for registration, specify the stock and subscription data types.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the subscription data type, refer to [SubType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7721)
> - For stock adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**


## Sub


`uint Sub(QotSub.Request req);`

`virtual void OnReply_Sub(MMAPI_Conn client, uint nSerialNo, QotSub.Response rsp);`

- **Description**

To subscribe to the real-time information required for registration, specify the stock and subscription data types.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the subscription data type, refer to [SubType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7721)
> - For stock adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**


## sub


`int sub(QotSub.Request req);`

`void onReply_Sub(MMAPI_Conn client, int nSerialNo, QotSub.Response rsp);`

- **Description**

To subscribe to the real-time information required for registration, specify the stock and subscription data types.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the subscription data type, refer to [SubType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7721)
> - For stock adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**


## Sub


`moomoo::u32_t Sub(const Qot_Sub::Request &stReq);`

`virtual void OnReply_Sub(moomoo::u32_t nSerialNo, const Qot_Sub::Response &stRsp) = 0;`

- **Description**

To subscribe to the real-time information required for registration, specify the stock and subscription data types.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the subscription data type, refer to [SubType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7721)
> - For stock adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**


## Sub


`Sub(req);`

- **Description**

To subscribe to the real-time information required for registration, specify the stock and subscription data types.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the subscription data type, refer to [SubType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7721)
> - For stock adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)

- **Return**

> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Interface Limitations

- Supports subscriptions of multiple real-time data types, refer to [SubType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7721), each stock subscription for one one quota.
- Please refer to [Subscription Quota & Historical Candlestick Quota](https://openapi.moomoo.com/moomoo-api-doc/en/intro/authority.html#9123) for Subscription Quota rules.
- You can unsubscribe after subscribing after at least one minute.
- Due to the large amount of SF market data in Hong Kong stocks, in order to ensure the speed of the SF market and the processing performance of OpenD, currently SF authorized users are restricted to subscribing to the order book and broker queue of only 50 securities products (including hkex stocks, warrants, bulls and bears) at the same time, the remaining subscription quota can still be used to subscribe to other types, such as: tickers and brokerage etc.
- HK options and futures do not support subscription to _TICKER_ type under LV1 authority.

←
[Quote Object](https://openapi.moomoo.com/moomoo-api-doc/en/quote/base.html)[Get Subscription Status](https://openapi.moomoo.com/moomoo-api-doc/en/quote/query-subscription.html)
→

## Real-time Broker Queue Callback

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-broker.html


`on_recv_rsp(self, rsp_pb)`

- **Description**

Real-time broker queue callback, asynchronous processing of real-time broker queue push of subscribed stocks.
After receiving the real-time broker queue data push, it will call back to this function. You need to override on\_recv\_rsp in the derived class.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| rsp\_pb | Qot\_UpdateBroker\_pb2.Response | This parameter does not need to be processed directly in the derived class. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | tuple | If ret == RET\_OK, broker queue data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Broker queue data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | stock\_code | str | Stock code. |
    | bid\_frame\_table | pd.DataFrame | Data from bid. |
    | ask\_frame\_table | pd.DataFrame | Data from ask. |

    - Bid\_frame\_table format as follows:

      | Field | Type | Description |
      | --- | --- | --- |
      | code | str | Stock code. |
      | name | str | Stock name. |
      | bid\_broker\_id | int | Bid broker ID. |
      | bid\_broker\_name | str | Bid broker name. |
      | bid\_broker\_pos | int | Broker level. |
      | order\_id | int | Exchange order ID. <br><br>      - Not the order ID returned by the order interface.<br>      - Only HK SF market quotes support returning this field. |
      | order\_volume | int | Order volume. <br><br>Only HK SF market quotes support returning this field. |

    - Ask\_frame\_table format as follows:

      | Field | Type | Description |
      | --- | --- | --- |
      | code | str | Stock code. |
      | name | str | Stock name. |
      | ask\_broker\_id | int | Ask Broker ID. |
      | ask\_broker\_name | str | Ask Broker name. |
      | ask\_broker\_pos | int | Broker level. |
      | order\_id | int | Exchange order ID. <br><br>      - Not the order ID returned by the order interface.<br>      - Only HK SF market quotes support returning this field. |
      | order\_volume | int | Order volume. <br><br>Only HK SF market quotes support returning this field. |
- **Example**

```python
import time
from futu import *

class BrokerTest(BrokerHandlerBase):
    def on_recv_rsp(self, rsp_pb):
        ret_code, err_or_stock_code, data = super(BrokerTest, self).on_recv_rsp(rsp_pb)
        if ret_code != RET_OK:
            print("BrokerTest: error, msg: {}".format(err_or_stock_code))
            return RET_ERROR, data
        print("BrokerTest: stock: {} data: {} ".format(err_or_stock_code, data)) # BrokerTest's own processing logic
        return RET_OK, data
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
handler = BrokerTest()
quote_ctx.set_handler(handler) # Set real-time broker push callback
ret, data = quote_ctx.subscribe(['HK.00700'], [SubType.BROKER]) # Subscribe to the broker type, OpenD starts to receive continuous push from the server
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
time.sleep(15) # Set the script to receive OpenD push duration to 15 seconds
quote_ctx.close() # Close the current link, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
BrokerTest: stock: HK.00700 data: [        code     name  bid_broker_id                                    bid_broker_name  bid_broker_pos order_id order_volume\
0   HK.00700  TENCENT           5338            J.P. Morgan Broking (Hong Kong) Limited               1      N/A          N/A\
..       ...      ...            ...                                                ...             ...      ...          ...\
36  HK.00700  TENCENT           8305  Futu Securities International (Hong Kong) Limited               4      N/A          N/A\
\
[37 rows x 7 columns],         code     name  ask_broker_id                                ask_broker_name  ask_broker_pos order_id order_volume\
0   HK.00700  TENCENT           1179  Huatai Financial Holdings (Hong Kong) Limited               1      N/A          N/A\
..       ...      ...            ...                                            ...             ...      ...          ...\
39  HK.00700  TENCENT           6996  China Investment Information Services Limited               1      N/A          N/A\
\
[40 rows x 7 columns]]

```


## Qot\_UpdateBroker.proto


- **Description**

Real-time broker queue callback, asynchronous processing of real-time broker queue push of subscribed stocks.

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the broker queue structure, refer to [Broker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9607)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`virtual void OnReply_UpdateBroker(FTAPI_Conn client, QotUpdateBroker.Response rsp);`

- **Description**

Real-time broker queue callback, asynchronous processing of real-time broker queue push of subscribed stocks.

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the broker queue structure, refer to [Broker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9607)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`void onPush_UpdateBroker(FTAPI_Conn client, QotUpdateBroker.Response rsp);`

- **Description**

real-time broker queue callback, asynchronous processing of real-time broker queue push of subscribed stocks.

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the broker queue structure, refer to [Broker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9607)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`virtual void OnPush_UpdateBroker(const Qot_UpdateBroker::Response &stRsp) = 0;`

- **Description**

real-time broker queue callback, asynchronous processing of real-time broker queue push of subscribed stocks.

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the broker queue structure, refer to [Broker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9607)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`OnPush(cmd,res)`

- **Description**

real-time broker queue callback, asynchronous processing of real-time broker queue push of subscribed stocks.

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the broker queue structure, refer to [Broker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9607)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- This interface provides the function of continuously obtaining pushed data. If you need to obtain real-time data at one time, please refer to the [Get Real-time Orderbook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-broker.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).
- Under the BMP & LV1 HK market quotes, the broker queue market data is not supported.

`on_recv_rsp(self, rsp_pb)`

- **Description**

Real-time broker queue callback, asynchronous processing of real-time broker queue push of subscribed stocks.
After receiving the real-time broker queue data push, it will call back to this function. You need to override on\_recv\_rsp in the derived class.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| rsp\_pb | Qot\_UpdateBroker\_pb2.Response | This parameter does not need to be processed directly in the derived class. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | tuple | If ret == RET\_OK, broker queue data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Broker queue data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | stock\_code | str | Stock code. |
    | bid\_frame\_table | pd.DataFrame | Data from bid. |
    | ask\_frame\_table | pd.DataFrame | Data from ask. |

    - Bid\_frame\_table format as follows:

      | Field | Type | Description |
      | --- | --- | --- |
      | code | str | Stock code. |
      | name | str | Stock name. |
      | bid\_broker\_id | int | Bid broker ID. |
      | bid\_broker\_name | str | Bid broker name. |
      | bid\_broker\_pos | int | Broker level. |
      | order\_id | int | Exchange order ID. <br><br>      - Not the order ID returned by the order interface.<br>      - Only HK SF market quotes support returning this field. |
      | order\_volume | int | Order volume. <br><br>Only HK SF market quotes support returning this field. |

    - Ask\_frame\_table format as follows:

      | Field | Type | Description |
      | --- | --- | --- |
      | code | str | Stock code. |
      | name | str | Stock name. |
      | ask\_broker\_id | int | Ask Broker ID. |
      | ask\_broker\_name | str | Ask Broker name. |
      | ask\_broker\_pos | int | Broker level. |
      | order\_id | int | Exchange order ID. <br><br>      - Not the order ID returned by the order interface.<br>      - Only HK SF market quotes support returning this field. |
      | order\_volume | int | Order volume. <br><br>Only HK SF market quotes support returning this field. |
- **Example**

```python
import time
from moomoo import *

class BrokerTest(BrokerHandlerBase):
    def on_recv_rsp(self, rsp_pb):
        ret_code, err_or_stock_code, data = super(BrokerTest, self).on_recv_rsp(rsp_pb)
        if ret_code != RET_OK:
            print("BrokerTest: error, msg: {}".format(err_or_stock_code))
            return RET_ERROR, data
        print("BrokerTest: stock: {} data: {} ".format(err_or_stock_code, data)) # BrokerTest's own processing logic
        return RET_OK, data
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
handler = BrokerTest()
quote_ctx.set_handler(handler) # Set real-time broker push callback
ret, data = quote_ctx.subscribe(['HK.00700'], [SubType.BROKER]) # Subscribe to the broker type, OpenD starts to receive continuous push from the server
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
time.sleep(15) # Set the script to receive OpenD push duration to 15 seconds
quote_ctx.close() # Close the current link, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
BrokerTest: stock: HK.00700 data: [        code     name  bid_broker_id                                    bid_broker_name  bid_broker_pos order_id order_volume\
0   HK.00700  TENCENT           5338            J.P. Morgan Broking (Hong Kong) Limited               1      N/A          N/A\
..       ...      ...            ...                                                ...             ...      ...          ...\
36  HK.00700  TENCENT           8305  Futu Securities International (Hong Kong) Limited               4      N/A          N/A\
\
[37 rows x 7 columns],         code     name  ask_broker_id                                ask_broker_name  ask_broker_pos order_id order_volume\
0   HK.00700  TENCENT           1179  Huatai Financial Holdings (Hong Kong) Limited               1      N/A          N/A\
..       ...      ...            ...                                            ...             ...      ...          ...\
39  HK.00700  TENCENT           6996  China Investment Information Services Limited               1      N/A          N/A\
\
[40 rows x 7 columns]]

```


## Qot\_UpdateBroker.proto


- **Description**

Real-time broker queue callback, asynchronous processing of real-time broker queue push of subscribed stocks.

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the broker queue structure, refer to [Broker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9607)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`virtual void OnReply_UpdateBroker(MMAPI_Conn client, QotUpdateBroker.Response rsp);`

- **Description**

Real-time broker queue callback, asynchronous processing of real-time broker queue push of subscribed stocks.

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the broker queue structure, refer to [Broker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9607)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`void onPush_UpdateBroker(MMAPI_Conn client, QotUpdateBroker.Response rsp);`

- **Description**

real-time broker queue callback, asynchronous processing of real-time broker queue push of subscribed stocks.

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the broker queue structure, refer to [Broker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9607)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`virtual void OnPush_UpdateBroker(const Qot_UpdateBroker::Response &stRsp) = 0;`

- **Description**

real-time broker queue callback, asynchronous processing of real-time broker queue push of subscribed stocks.

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the broker queue structure, refer to [Broker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9607)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`OnPush(cmd,res)`

- **Description**

real-time broker queue callback, asynchronous processing of real-time broker queue push of subscribed stocks.

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the broker queue structure, refer to [Broker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9607)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- This interface provides the function of continuously obtaining pushed data. If you need to obtain real-time data at one time, please refer to the [Get Real-time Orderbook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-broker.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).
- Under the LV1 HK market quotes, the broker queue market data is not supported.

←
[Real-time Tick-by-Tick Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-ticker.html)[Get Market Snapshot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-market-snapshot.html)
→

## Real-time Candlestick Callback

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-kl.html


`on_recv_rsp(self, rsp_pb)`

- **Description**

Real-time candlestick callback, asynchronous processing of real-time candlestick push for subscribed stocks.

After receiving real-time candlestick data push, it will call back to this function. You need to override on\_recv\_rsp in the derived class.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| rsp\_pb | Qot\_UpdateKL\_pb2.Response | This parameter does not need to be processed directly in the derived class. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, IPO data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - IPO data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | time\_key | str | Time. <br><br>Format: yyyy-MM-dd HH:mm:ss<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | open | float | Open. |
    | close | float | Close. |
    | high | float | High. |
    | low | float | Low. |
    | volume | int | Volume. |
    | turnover | float | Turnover. |
    | pe\_ratio | float | P/E ratio. |
    | turnover\_rate | float | Turnover rate. <br><br>This field is in decimal form, so 0.01 is equivalent to 1%. |
    | last\_close | float | Yesterday's close. <br><br>The close of the previous trading day. For efficiency reasons, the yesterday's close of the first data may be 0. |
    | k\_type | [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66) | Candlestick type. |
- **Example**

```python
import time
from futu import *
class CurKlineTest(CurKlineHandlerBase):
     def on_recv_rsp(self, rsp_pb):
        ret_code, data = super(CurKlineTest,self).on_recv_rsp(rsp_pb)
        if ret_code != RET_OK:
            print("CurKlineTest: error, msg: %s"% data)
            return RET_ERROR, data
        print("CurKlineTest ", data) # CurKlineTest's own processing logic
        return RET_OK, data
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
handler = CurKlineTest()
quote_ctx.set_handler(handler) # Set real-time candlestick callback
ret, data = quote_ctx.subscribe(['US.AAPL'], [SubType.K_1M], session=Session.ALL) # Subscribe to the candlestick data type, OpenD starts to receive continuous push from the server
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
time.sleep(15) # Set the script to receive OpenD push duration to 15 seconds
quote_ctx.close() # Close the current link, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
CurKlineTest        code name             time_key    open   close    high    low  volume   turnover k_type  last_close
0  US.AAPL   APPLE  2025-04-07 05:15:00  180.39  180.26  180.46  180.2    1322  238340.48   K_1M         0.0

```


## Qot\_UpdateKL.proto


- **Description**

Real-time candlestick callback, asynchronous processing of real-time candlestick push for subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For candlestick adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`virtual void OnReply_UpdateKL(FTAPI_Conn client, QotUpdateKL.Response rsp);`

- **Description**

Real-time candlestick callback, asynchronous processing of real-time candlestick push for subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For candlestick adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`void onPush_UpdateKL(FTAPI_Conn client, QotUpdateKL.Response rsp);`

- **Description**

Real-time candlestick callback, asynchronous processing of real-time candlestick push for subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For candlestick adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`virtual void OnPush_UpdateKL(const Qot_UpdateKL::Response &stRsp) = 0;`

- **Description**

Real-time candlestick callback, asynchronous processing of real-time candlestick push for subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For candlestick adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`OnPush(cmd,res)`

- **Description**

Real-time candlestick callback, asynchronous processing of real-time candlestick push for subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For candlestick adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- This interface provides the function of continuously obtaining pushed data. If you need to obtain real-time data at one time, please refer to the [Get Real-time Candlestick](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-kl.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).
- **Options** related candlestick data, only supports 1 day, 1 minute, 5 minutes, 15 minutes and 60 minutes.

`on_recv_rsp(self, rsp_pb)`

- **Description**

Real-time candlestick callback, asynchronous processing of real-time candlestick push for subscribed stocks.

After receiving real-time candlestick data push, it will call back to this function. You need to override on\_recv\_rsp in the derived class.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| rsp\_pb | Qot\_UpdateKL\_pb2.Response | This parameter does not need to be processed directly in the derived class. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, IPO data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - IPO data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | time\_key | str | Time. <br><br>Format: yyyy-MM-dd HH:mm:ss<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | open | float | Open. |
    | close | float | Close. |
    | high | float | High. |
    | low | float | Low. |
    | volume | int | Volume. |
    | turnover | float | Turnover. |
    | pe\_ratio | float | P/E ratio. |
    | turnover\_rate | float | Turnover rate. <br><br>This field is in decimal form, so 0.01 is equivalent to 1%. |
    | last\_close | float | Yesterday's close. <br><br>The close of the previous trading day. For efficiency reasons, the yesterday's close of the first data may be 0. |
    | k\_type | [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66) | Candlestick type. |
- **Example**

```python
import time
from moomoo import *
class CurKlineTest(CurKlineHandlerBase):
     def on_recv_rsp(self, rsp_pb):
        ret_code, data = super(CurKlineTest,self).on_recv_rsp(rsp_pb)
        if ret_code != RET_OK:
            print("CurKlineTest: error, msg: %s"% data)
            return RET_ERROR, data
        print("CurKlineTest ", data) # CurKlineTest's own processing logic
        return RET_OK, data
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
handler = CurKlineTest()
quote_ctx.set_handler(handler) # Set real-time candlestick callback
ret, data = quote_ctx.subscribe(['US.AAPL'], [SubType.K_1M], session=Session.ALL) # Subscribe to the candlestick data type, OpenD starts to receive continuous push from the server
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
time.sleep(15) # Set the script to receive OpenD push duration to 15 seconds
quote_ctx.close() # Close the current link, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
CurKlineTest        code name             time_key    open   close    high    low  volume   turnover k_type  last_close
0  US.AAPL   APPLE  2025-04-07 05:15:00  180.39  180.26  180.46  180.2    1322  238340.48   K_1M         0.0

```


## Qot\_UpdateKL.proto


- **Description**

Real-time candlestick callback, asynchronous processing of real-time candlestick push for subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For candlestick adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`virtual void OnReply_UpdateKL(MMAPI_Conn client, QotUpdateKL.Response rsp);`

- **Description**

Real-time candlestick callback, asynchronous processing of real-time candlestick push for subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For candlestick adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`void onPush_UpdateKL(MMAPI_Conn client, QotUpdateKL.Response rsp);`

- **Description**

Real-time candlestick callback, asynchronous processing of real-time candlestick push for subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For candlestick adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`virtual void OnPush_UpdateKL(const Qot_UpdateKL::Response &stRsp) = 0;`

- **Description**

Real-time candlestick callback, asynchronous processing of real-time candlestick push for subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For candlestick adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`OnPush(cmd,res)`

- **Description**

Real-time candlestick callback, asynchronous processing of real-time candlestick push for subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For candlestick adjustment type, refer to [RehabType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#7071)
> - For candlestick type, refer to [KLType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#66)
> - For candlestick structure, refer to [KLine](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#500)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- This interface provides the function of continuously obtaining pushed data. If you need to obtain real-time data at one time, please refer to the [Get Real-time Candlestick](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-kl.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).
- **Options** related candlestick data, only supports 1 day, 1 minute, 5 minutes, 15 minutes and 60 minutes.

←
[Real-time Order Book Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-order-book.html)[Real-time Time Frame Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-rt.html)
→

## Real-time Order Book Callback

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-order-book.html


`on_recv_rsp(self, rsp_pb)`

- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.
It will call back to this function after receiving the push of real-time disk data. You need to override on\_recv\_rsp in the derived class.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| rsp\_pb | Qot\_UpdateOrderBook\_pb2.Response | This parameter does not need to be processed directly in the derived class. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | dict | If ret == RET\_OK, plate data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Order Book format as follows：

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | svr\_recv\_time\_bid | str | The time when Futu server receives order book of bid from the exchange. <br><br>Sometimes the time is zero, e.g. server reboot or first push of cached data. |
    | svr\_recv\_time\_ask | str | The time when Futu server receives order book of ask from the exchange. <br><br>Sometimes the time is zero, e.g. server reboot or first push of cached data. |
    | Bid | list | Each tuple contains the following information：Bid price, bid volume, order qty of bid, order details of bid. <br><br>Order details of ask<br>    - Details: Exchange order ID. Order volume.<br>    - Up to 1000 order details of ask with HK SF market quotes.<br>    - Other quote rights does not support access to such details. |
    | Ask | list | Each tuple contains the following information：Ask price, ask volume, order qty of ask, order details of ask. <br><br>Order details of ask<br>    - Details: Exchange order ID. Order volume.<br>    - Up to 1000 order details of ask with HK SF market quotes. <br>    - >Other quote rights does not support access to such details. |

    The format of Bid and Ask fields as follows：

    ```
    'Bid': [ (bid_price1, bid_volume1, order_num, {'orderid1': order_volume1, 'orderid2': order_volume2, …… }), (bid_price2, bid_volume2, order_num,  {'orderid1': order_volume1, 'orderid2': order_volume2, …… }),…]
    'Ask': [ (ask_price1, ask_volume1，order_num, {'orderid1': order_volume1, 'orderid2': order_volume2, …… }), (ask_price2, ask_volume2, order_num, {'orderid1': order_volume1, 'orderid2': order_volume2, …… }),…]

    ```
- **Example**

```python
import time
from futu import *
class OrderBookTest(OrderBookHandlerBase):
    def on_recv_rsp(self, rsp_pb):
        ret_code, data = super(OrderBookTest,self).on_recv_rsp(rsp_pb)
        if ret_code != RET_OK:
            print("OrderBookTest: error, msg: %s" % data)
            return RET_ERROR, data
        print("OrderBookTest ", data) # OrderBookTest's own processing logic
        return RET_OK, data
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
handler = OrderBookTest()
quote_ctx.set_handler(handler) # Set real-time swing callback
ret, data = quote_ctx.subscribe(['US.AAPL'], [SubType.ORDER_BOOK]) # Subscribe to the order type, OpenD starts to receive continuous push from the server
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
time.sleep(15) # Set the script to receive OpenD push duration to 15 seconds
quote_ctx.close() # Close the current link, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
OrderBookTest  {'code': 'US.AAPL', 'name': 'Apple', 'svr_recv_time_bid': '', 'svr_recv_time_ask': '', 'Bid': [(179.77, 100, 1, {}), (179.68, 200, 1, {}), (179.65, 2, 2, {}), (179.64, 27, 1, {}), (179.6, 9, 2, {}), (179.58, 39, 2, {}), (179.5, 13, 4, {}), (179.48, 331, 2, {}), (179.4, 1002, 2, {}), (179.38, 330, 1, {}), (179.37, 2, 1, {}), (179.3, 47, 1, {}), (179.28, 330, 1, {}), (179.21, 2, 1, {}), (179.2, 1000, 1, {}), (179.18, 330, 1, {}), (179.17, 100, 1, {}), (179.16, 1, 1, {}), (179.13, 400, 1, {}), (179.1, 3000, 1, {}), (179.08, 330, 1, {}), (179.05, 125, 2, {}), (179.01, 17, 2, {}), (179.0, 81, 7, {})], 'Ask': [(179.95, 400, 2, {}), (180.0, 360, 2, {}), (180.05, 20, 1, {}), (180.1, 246, 4, {}), (180.18, 20, 1, {}), (180.2, 2030, 3, {}), (180.23, 20, 1, {}), (180.3, 23, 1, {}), (180.33, 15, 1, {}), (180.4, 2000, 2, {}), (180.49, 5, 1, {}), (180.59, 253, 1, {}), (180.6, 2000, 2, {}), (180.8, 2010, 3, {}), (181.0, 2018, 4, {}), (181.08, 1, 1, {}), (181.2, 1009, 2, {}), (181.3, 17, 3, {}), (181.4, 1, 1, {}), (181.5, 50, 1, {}), (181.79, 9, 1, {}), (181.9, 66, 2, {})]}

```


## Qot\_UpdateOrderBook.proto


- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For order book structure, refer to [OrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3557)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`virtual void OnReply_UpdateOrderBook(FTAPI_Conn client, QotUpdateOrderBook.Response rsp);`

- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For order book structure, refer to [OrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3557)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`void onPush_UpdateOrderBook(FTAPI_Conn client, QotUpdateOrderBook.Response rsp);`

- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For order book structure, refer to [OrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3557)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`virtual void OnPush_UpdateOrderBook(const Qot_UpdateOrderBook::Response &stRsp) = 0;`

- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For order book structure, refer to [OrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3557)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`OnPush(cmd,res)`

- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For order book structure, refer to [OrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3557)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- This interface provides the function of continuously obtaining pushed data. If you need to obtain real-time data at one time, please refer to the [Get Real-time Orderbook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-order-book.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).
- Real-time order book callback for US stocks, will continuously update data during the current trading session, with no need to set the session parameter.

`on_recv_rsp(self, rsp_pb)`

- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.
It will call back to this function after receiving the push of real-time disk data. You need to override on\_recv\_rsp in the derived class.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| rsp\_pb | Qot\_UpdateOrderBook\_pb2.Response | This parameter does not need to be processed directly in the derived class. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | dict | If ret == RET\_OK, plate data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Order Book format as follows：

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | svr\_recv\_time\_bid | str | The time when moomoo server receives order book of bid from the exchange. <br><br>Sometimes the time is zero, e.g. server reboot or first push of cached data. |
    | svr\_recv\_time\_ask | str | The time when moomoo server receives order book of ask from the exchange. <br><br>Sometimes the time is zero, e.g. server reboot or first push of cached data. |
    | Bid | list | Each tuple contains the following information：Bid price, bid volume, order qty of bid, order details of bid. <br><br>Order details of ask<br>    - Details: Exchange order ID. Order volume.<br>    - Up to 1000 order details of ask with HK SF market quotes. <br>    - Other quote rights does not support access to such details. |
    | Ask | list | Each tuple contains the following information：Ask price, ask volume, order qty of ask, order details of ask. <br><br>Order details of ask<br>    - Details: Exchange order ID. Order volume.<br>    - Up to 1000 order details of ask with HK SF market quotes. <br>    - Other quote rights does not support access to such details. |

    The format of Bid and Ask fields as follows：

    ```
    'Bid': [ (bid_price1, bid_volume1, order_num, {'orderid1': order_volume1, 'orderid2': order_volume2, …… }), (bid_price2, bid_volume2, order_num,  {'orderid1': order_volume1, 'orderid2': order_volume2, …… }),…]
    'Ask': [ (ask_price1, ask_volume1，order_num, {'orderid1': order_volume1, 'orderid2': order_volume2, …… }), (ask_price2, ask_volume2, order_num, {'orderid1': order_volume1, 'orderid2': order_volume2, …… }),…]

    ```
- **Example**

```python
import time
from moomoo import *
class OrderBookTest(OrderBookHandlerBase):
    def on_recv_rsp(self, rsp_pb):
        ret_code, data = super(OrderBookTest,self).on_recv_rsp(rsp_pb)
        if ret_code != RET_OK:
            print("OrderBookTest: error, msg: %s" % data)
            return RET_ERROR, data
        print("OrderBookTest ", data) # OrderBookTest's own processing logic
        return RET_OK, data
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
handler = OrderBookTest()
quote_ctx.set_handler(handler) # Set real-time swing callback
ret, data = quote_ctx.subscribe(['US.AAPL'], [SubType.ORDER_BOOK]) # Subscribe to the order type, OpenD starts to receive continuous push from the server
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
time.sleep(15) # Set the script to receive OpenD push duration to 15 seconds
quote_ctx.close() # Close the current link, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
OrderBookTest  {'code': 'US.AAPL', 'name': 'Apple', 'svr_recv_time_bid': '', 'svr_recv_time_ask': '', 'Bid': [(179.77, 100, 1, {}), (179.68, 200, 1, {}), (179.65, 2, 2, {}), (179.64, 27, 1, {}), (179.6, 9, 2, {}), (179.58, 39, 2, {}), (179.5, 13, 4, {}), (179.48, 331, 2, {}), (179.4, 1002, 2, {}), (179.38, 330, 1, {}), (179.37, 2, 1, {}), (179.3, 47, 1, {}), (179.28, 330, 1, {}), (179.21, 2, 1, {}), (179.2, 1000, 1, {}), (179.18, 330, 1, {}), (179.17, 100, 1, {}), (179.16, 1, 1, {}), (179.13, 400, 1, {}), (179.1, 3000, 1, {}), (179.08, 330, 1, {}), (179.05, 125, 2, {}), (179.01, 17, 2, {}), (179.0, 81, 7, {})], 'Ask': [(179.95, 400, 2, {}), (180.0, 360, 2, {}), (180.05, 20, 1, {}), (180.1, 246, 4, {}), (180.18, 20, 1, {}), (180.2, 2030, 3, {}), (180.23, 20, 1, {}), (180.3, 23, 1, {}), (180.33, 15, 1, {}), (180.4, 2000, 2, {}), (180.49, 5, 1, {}), (180.59, 253, 1, {}), (180.6, 2000, 2, {}), (180.8, 2010, 3, {}), (181.0, 2018, 4, {}), (181.08, 1, 1, {}), (181.2, 1009, 2, {}), (181.3, 17, 3, {}), (181.4, 1, 1, {}), (181.5, 50, 1, {}), (181.79, 9, 1, {}), (181.9, 66, 2, {})]}

```


## Qot\_UpdateOrderBook.proto


- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For order book structure, refer to [OrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3557)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`virtual void OnReply_UpdateOrderBook(MMAPI_Conn client, QotUpdateOrderBook.Response rsp);`

- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For order book structure, refer to [OrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3557)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`void onPush_UpdateOrderBook(MMAPI_Conn client, QotUpdateOrderBook.Response rsp);`

- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For order book structure, refer to [OrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3557)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`virtual void OnPush_UpdateOrderBook(const Qot_UpdateOrderBook::Response &stRsp) = 0;`

- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For order book structure, refer to [OrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3557)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`OnPush(cmd,res)`

- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.

- **Parameters**

> - For security structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For order book structure, refer to [OrderBook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3557)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- This interface provides the function of continuously obtaining pushed data. If you need to obtain real-time data at one time, please refer to the [Get Real-time Orderbook](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-order-book.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).
- Real-time order book callback for US stocks, will continuously update data during the current trading session, with no need to set the session parameter.

←
[Real-time Quote Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-stock-quote.html)[Real-time Candlestick Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-kl.html)
→

## Price Reminder Callback

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-price-reminder.html


`on_recv_rsp(self, rsp_pb)`

- **Description**

The price reminder notification callback, asynchronously handles the notification push that has been set to the price reminder.
After receiving the real-time price notification, it will call back to this function. You need to override on\_recv\_rsp in the derived class.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| rsp\_pb | Qot\_UpdatePriceReminder\_pb2.Response | This parameter does not need to be processed directly in the derived class. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | dict | If ret == RET\_OK, price reminder is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Price reminder format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | price | float | Current price. |
    | change\_rate | str | Current change rate. |
    | market\_status | [PriceReminderMarketStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6578) | The time period for triggering. |
    | content | str | Text content of price reminder. |
    | note | str | Note. <br><br>Note supports no more than 20 Chinese characters. |
    | key | int | Price reminder identification. |
    | reminder\_type | [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793) | The type of price reminder. |
    | set\_value | float | The reminder value set by the user. |
    | cur\_value | float | The value when the reminder was triggered. |
- **Example**

```python
import time
from futu import *

class PriceReminderTest(PriceReminderHandlerBase):
    def on_recv_rsp(self, rsp_pb):
        ret_code, content = super(PriceReminderTest,self).on_recv_rsp(rsp_pb)
        if ret_code != RET_OK:
            print("PriceReminderTest: error, msg: %s" % content)
            return RET_ERROR, content
        print("PriceReminderTest ", content) # PriceReminderTest's own processing logic
        return RET_OK, content
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
handler = PriceReminderTest()
quote_ctx.set_handler(handler) # Set price reminder notification callback
time.sleep(15) # Set the script to receive OpenD push duration to 15 seconds
quote_ctx.close() # Close the current connection, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
PriceReminderTest  {'code': 'US.AAPL', 'name': 'APPLE', 'price': 185.750, 'change_rate': 0.11, 'market_status': 'US_PRE', 'content': '买一价高于185.500', 'note': '', 'key': 1744022257052794489, 'reminder_type': 'BID_PRICE_UP', 'set_value': 185.500, 'cur_value': 185.750}

```


## Qot\_UpdatePriceReminder.proto


- **Description**

Price alert notification callback, asynchronously process notification pushes that have been set to price alert.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`virtual void OnReply_UpdatePriceReminder(FTAPI_Conn client, uint nSerialNo, QotUpdatePriceReminder.Response rsp);`

- **Description**

Price alert notification callback, asynchronously process notification pushes that have been set to price alert.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`void onPush_UpdatePriceReminder(FTAPI_Conn client, int nSerialNo, QotUpdatePriceReminder.Response rsp);`

- **Description**

Price alert notification callback, asynchronously process notification pushes that have been set to price alert.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`virtual void OnPush_UpdatePriceReminder(const Qot_UpdatePriceReminder::Response &stRsp) = 0;`

- **Description**

Price alert notification callback, asynchronously process notification pushes that have been set to price alert.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`OnPush(cmd,res)`

- **Description**

Price alert notification callback, asynchronously process notification pushes that have been set to price alert.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- This interface provides the function of continuously obtaining pushed data. If you need to obtain real-time data at one time, please refer to the [Get Price Reminder List](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-price-reminder.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505) API.

`on_recv_rsp(self, rsp_pb)`

- **Description**

The price reminder notification callback, asynchronously handles the notification push that has been set to the price reminder.
After receiving the real-time price notification, it will call back to this function. You need to override on\_recv\_rsp in the derived class.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| rsp\_pb | Qot\_UpdatePriceReminder\_pb2.Response | This parameter does not need to be processed directly in the derived class. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | dict | If ret == RET\_OK, price reminder is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Price reminder format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | price | float | Current price. |
    | change\_rate | str | Current change rate. |
    | market\_status | [PriceReminderMarketStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6578) | The time period for triggering. |
    | content | str | Text content of price reminder. |
    | note | str | Note. <br><br>Note supports no more than 20 Chinese characters. |
    | key | int | Price reminder identification. |
    | reminder\_type | [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793) | The type of price reminder. |
    | set\_value | float | The reminder value set by the user. |
    | cur\_value | float | The value when the reminder was triggered. |
- **Example**

```python
import time
from moomoo import *

class PriceReminderTest(PriceReminderHandlerBase):
    def on_recv_rsp(self, rsp_pb):
        ret_code, content = super(PriceReminderTest,self).on_recv_rsp(rsp_pb)
        if ret_code != RET_OK:
            print("PriceReminderTest: error, msg: %s" % content)
            return RET_ERROR, content
        print("PriceReminderTest ", content) # PriceReminderTest's own processing logic
        return RET_OK, content
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
handler = PriceReminderTest()
quote_ctx.set_handler(handler) # Set price reminder notification callback
time.sleep(15) # Set the script to receive OpenD push duration to 15 seconds
quote_ctx.close() # Close the current connection, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
PriceReminderTest  {'code': 'US.AAPL', 'name': 'APPLE', 'price': 185.750, 'change_rate': 0.11, 'market_status': 'US_PRE', 'content': '买一价高于185.500', 'note': '', 'key': 1744022257052794489, 'reminder_type': 'BID_PRICE_UP', 'set_value': 185.500, 'cur_value': 185.750}

```


## Qot\_UpdatePriceReminder.proto


- **Description**

Price alert notification callback, asynchronously process notification pushes that have been set to price alert.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`virtual void OnReply_UpdatePriceReminder(MMAPI_Conn client, uint nSerialNo, QotUpdatePriceReminder.Response rsp);`

- **Description**

Price alert notification callback, asynchronously process notification pushes that have been set to price alert.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`void onPush_UpdatePriceReminder(MMAPI_Conn client, int nSerialNo, QotUpdatePriceReminder.Response rsp);`

- **Description**

Price alert notification callback, asynchronously process notification pushes that have been set to price alert.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`virtual void OnPush_UpdatePriceReminder(const Qot_UpdatePriceReminder::Response &stRsp) = 0;`

- **Description**

Price alert notification callback, asynchronously process notification pushes that have been set to price alert.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`OnPush(cmd,res)`

- **Description**

Price alert notification callback, asynchronously process notification pushes that have been set to price alert.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For reminder type enumeration, refer to [PriceReminderType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3793)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- This interface provides the function of continuously obtaining pushed data. If you need to obtain real-time data at one time, please refer to the [Get Price Reminder List](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-price-reminder.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505) API.

←
[Modify the Watchlist](https://openapi.moomoo.com/moomoo-api-doc/en/quote/modify-user-security.html)[Quotation Definitions](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html)
→

## Real-time Time Frame Callback

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-rt.html


`on_recv_rsp(self, rsp_pb)`

- **Description**

Real-time Time Frame callback, asynchronous processing of real-time Time Frame push of subscribed stocks.
After receiving the real-time Time Frame data push, it will call back to this function. You need to override on\_recv\_rsp in the derived class.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| rsp\_pb | Qot\_UpdateRT\_pb2.Response | This parameter does not need to be processed directly in the derived class. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, Time Frame data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Time Frame data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | time | str | Time. <br><br>yyyy-MM-dd HH:mm:ss<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | is\_blank | bool | Data status. <br><br>False: normal data.<br>True: forged data. |
    | opened\_mins | int | How many minutes have passed from 0 o'clock. |
    | cur\_price | float | Current price. |
    | last\_close | float | Yesterday's close. |
    | avg\_price | float | Average price. <br><br>For options, this field is None. |
    | volume | float | Volume. |
    | turnover | float | Transaction amount. |
- **Example**

```python
import time
from futu import *

class RTDataTest(RTDataHandlerBase):
    def on_recv_rsp(self, rsp_pb):
        ret_code, data = super(RTDataTest, self).on_recv_rsp(rsp_pb)
        if ret_code != RET_OK:
            print("RTDataTest: error, msg: %s"% data)
            return RET_ERROR, data
        print("RTDataTest ", data) # RTDataTest's own processing logic
        return RET_OK, data
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
handler = RTDataTest()
quote_ctx.set_handler(handler) # Set real-time Time Frame push callback
ret, data = quote_ctx.subscribe(['US.AAPL'], [SubType.RT_DATA], session=Session.ALL) # Subscribe to the Time Frame type, OpenD starts to continuously receive pushes from the server
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
time.sleep(15) # Set the script to receive OpenD push duration to 15 seconds
quote_ctx.close() # Close the current link, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
RTDataTest        code name                 time  is_blank  opened_mins  cur_price  last_close   avg_price   turnover  volume
0  US.AAPL   APPLE  2025-04-07 05:24:00     False          324     179.53      188.38  180.465762  651262.42    3624

```


## Qot\_UpdateRT.proto


- **Description**

Real-time Time Frame callback, asynchronous processing of real-time Time Frame push of subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Time Frame structure, refer to [TimeShare](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3690)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`virtual void OnReply_UpdateRT(FTAPI_Conn client, QotUpdateRT.Response rsp);`

- **Description**

Real-time Time Frame callback, asynchronous processing of real-time Time Frame push of subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Time Frame structure, refer to [TimeShare](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3690)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`void onPush_UpdateRT(FTAPI_Conn client, QotUpdateRT.Response rsp);`

- **Description**

Real-time Time Frame callback, asynchronous processing of real-time Time Frame push of subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Time Frame structure, refer to [TimeShare](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3690)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`virtual void OnPush_UpdateRT(const Qot_UpdateRT::Response &stRsp) = 0;`

- **Description**

Real-time Time Frame callback, asynchronous processing of real-time Time Frame push of subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Time Frame structure, refer to [TimeShare](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3690)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`OnPush(cmd,res)`

- **Description**

Real-time Time Frame callback, asynchronous processing of real-time Time Frame push of subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Time Frame structure, refer to [TimeShare](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3690)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- This interface provides the function of continuously obtaining pushed data. If you need to obtain real-time data at one time, please refer to the [Get Real-time Time Frame Data](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-rt.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).

`on_recv_rsp(self, rsp_pb)`

- **Description**

Real-time Time Frame callback, asynchronous processing of real-time Time Frame push of subscribed stocks.
After receiving the real-time Time Frame data push, it will call back to this function. You need to override on\_recv\_rsp in the derived class.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| rsp\_pb | Qot\_UpdateRT\_pb2.Response | This parameter does not need to be processed directly in the derived class. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, Time Frame data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Time Frame data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | time | str | Time. <br><br>yyyy-MM-dd HH:mm:ss<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | is\_blank | bool | Data status. <br><br>False: normal data.<br>True: forged data. |
    | opened\_mins | int | How many minutes have passed from 0 o'clock. |
    | cur\_price | float | Current price. |
    | last\_close | float | Yesterday's close. |
    | avg\_price | float | Average price. <br><br>For options, this field is None. |
    | volume | float | Volume. |
    | turnover | float | Transaction amount. |
- **Example**

```python
import time
from moomoo import *

class RTDataTest(RTDataHandlerBase):
    def on_recv_rsp(self, rsp_pb):
        ret_code, data = super(RTDataTest, self).on_recv_rsp(rsp_pb)
        if ret_code != RET_OK:
            print("RTDataTest: error, msg: %s"% data)
            return RET_ERROR, data
        print("RTDataTest ", data) # RTDataTest's own processing logic
        return RET_OK, data
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
handler = RTDataTest()
quote_ctx.set_handler(handler) # Set real-time Time Frame push callback
ret, data = quote_ctx.subscribe(['US.AAPL'], [SubType.RT_DATA], session=Session.ALL) # Subscribe to the Time Frame type, OpenD starts to continuously receive pushes from the server
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
time.sleep(15) # Set the script to receive OpenD push duration to 15 seconds
quote_ctx.close() # Close the current link, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
RTDataTest        code name                 time  is_blank  opened_mins  cur_price  last_close   avg_price   turnover  volume
0  US.AAPL   APPLE  2025-04-07 05:24:00     False          324     179.53      188.38  180.465762  651262.42    3624

```


## Qot\_UpdateRT.proto


- **Description**

Real-time Time Frame callback, asynchronous processing of real-time Time Frame push of subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Time Frame structure, refer to [TimeShare](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3690)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`virtual void OnReply_UpdateRT(MMAPI_Conn client, QotUpdateRT.Response rsp);`

- **Description**

Real-time Time Frame callback, asynchronous processing of real-time Time Frame push of subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Time Frame structure, refer to [TimeShare](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3690)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`void onPush_UpdateRT(MMAPI_Conn client, QotUpdateRT.Response rsp);`

- **Description**

Real-time Time Frame callback, asynchronous processing of real-time Time Frame push of subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Time Frame structure, refer to [TimeShare](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3690)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`virtual void OnPush_UpdateRT(const Qot_UpdateRT::Response &stRsp) = 0;`

- **Description**

Real-time Time Frame callback, asynchronous processing of real-time Time Frame push of subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Time Frame structure, refer to [TimeShare](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3690)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`OnPush(cmd,res)`

- **Description**

Real-time Time Frame callback, asynchronous processing of real-time Time Frame push of subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For Time Frame structure, refer to [TimeShare](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3690)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- This interface provides the function of continuously obtaining pushed data. If you need to obtain real-time data at one time, please refer to the [Get Real-time Time Frame Data](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-rt.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).

←
[Real-time Candlestick Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-kl.html)[Real-time Tick-by-Tick Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-ticker.html)
→

## Real-time Quote Callback

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-stock-quote.html


`on_recv_rsp(self, rsp_pb)`

- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.
After receiving the real-time quote data push, it will call back to this function. You need to override on\_recv\_rsp in the derived class.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| rsp\_pb | Qot\_UpdateBasicQot\_pb2.Response | This parameter does not need to be processed in the derived class. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, quotation data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - quotation data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | data\_date | str | Date. |
    | data\_time | str | Time of latest price. <br><br>Format: yyyy-MM-dd HH:mm:ss<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | last\_price | float | Latest price. |
    | open\_price | float | Open. |
    | high\_price | float | High. |
    | low\_price | float | Low. |
    | prev\_close\_price | float | Yesterday's close. |
    | volume | int | Volume. |
    | turnover | float | Turnover. |
    | turnover\_rate | float | Turnover rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | amplitude | int | Amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | suspension | bool | Whether trading is suspended. <br><br>True: suspension. |
    | listing\_date | str | Listing date. <br><br>yyyy-MM-dd |
    | price\_spread | float | Spread. |
    | dark\_status | [DarkStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6341) | Grey market transaction status. |
    | sec\_status | [SecurityStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#4415) | Stock status. |
    | strike\_price | float | Strike price. |
    | contract\_size | float | Contract size. |
    | open\_interest | int | Number of open positions. |
    | implied\_volatility | float | Implied volatility. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | premium | float | Premium. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | delta | float | Greek value Delta. |
    | gamma | float | Greek value Gamma. |
    | vega | float | Greek value Vega. |
    | theta | float | Greek value Theta. |
    | rho | float | Greek value Rho. |
    | index\_option\_type | [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866) | Index option type. |
    | net\_open\_interest | int | Net open contract number. <br><br>Only HK options support this field. |
    | expiry\_date\_distance | int | The number of days from the expiry date. <br><br>A negative number means it has expired. |
    | contract\_nominal\_value | float | Contract nominal amount. <br><br>Only HK options support this field. |
    | owner\_lot\_multiplier | float | Equal number of underlying stocks. <br><br>Index options do not have this field , only HK options support this field. |
    | option\_area\_type | [OptionAreaType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3628) | Option type (by exercise time). |
    | contract\_multiplier | float | Contract multiplier. |
    | pre\_price | float | Pre-market price. |
    | pre\_high\_price | float | Pre-market high. |
    | pre\_low\_price | float | Pre-market low. |
    | pre\_volume | int | Pre-market volume. |
    | pre\_turnover | float | Pre-market turnover. |
    | pre\_change\_val | float | Pre-market change. |
    | pre\_change\_rate | float | Pre-market change rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | pre\_amplitude | float | Pre-market amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | after\_price | float | After-hours price. |
    | after\_high\_price | float | After-hours high. |
    | after\_low\_price | float | After-hours low. |
    | after\_volume | int | After-hours volume. <br><br>The Sci-tech Innovation Board supports this data. |
    | After\_turnover | float | After-hours turnover. <br><br>The Sci-tech Innovation Board supports this data. |
    | after\_change\_val | float | After-hours change. |
    | after\_change\_rate | float | After-hours change rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | after\_amplitude | float | After-hours amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | overnight\_price | float | Overnight price. |
    | overnight\_high\_price | float | Overnight high. |
    | overnight\_low\_price | float | Overnight low. |
    | overnight\_volume | int | Overnight volume. |
    | overnight\_turnover | float | Overnight turnover. |
    | overnight\_change\_val | float | Overnight change. |
    | overnight\_change\_rate | float | Overnight change rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | overnight\_amplitude | float | Overnight amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | last\_settle\_price | float | Yesterday's close. <br><br>Specific field for futures. |
    | position | float | Holding position. <br><br>Specific field for futures. |
    | position\_change | float | Daily position change. <br><br>Specific field for futures. |
- **Example**

```python
import time
from futu import *

class StockQuoteTest(StockQuoteHandlerBase):
    def on_recv_rsp(self, rsp_pb):
        ret_code, data = super(StockQuoteTest,self).on_recv_rsp(rsp_pb)
        if ret_code != RET_OK:
            print("StockQuoteTest: error, msg: %s"% data)
            return RET_ERROR, data
        print("StockQuoteTest ", data) # StockQuoteTest's own processing logic
        return RET_OK, data
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
handler = StockQuoteTest()
quote_ctx.set_handler(handler) # Set real-time quote callback
ret, data = quote_ctx.subscribe(['US.AAPL'], [SubType.QUOTE]) # Subscribe to the real-time quotation type, OpenD starts to continuously receive pushes from the server
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
time.sleep(15) # Set the script to receive OpenD push duration to 15 seconds
quote_ctx.close() # Close the current link, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
StockQuoteTest        code name data_date data_time  last_price  open_price  high_price  low_price  prev_close_price  volume  turnover  turnover_rate  amplitude  suspension listing_date  price_spread dark_status sec_status strike_price contract_size open_interest implied_volatility premium delta gamma vega theta  rho net_open_interest expiry_date_distance contract_nominal_value owner_lot_multiplier option_area_type contract_multiplier last_settle_price position position_change index_option_type pre_price pre_high_price pre_low_price pre_volume pre_turnover pre_change_val pre_change_rate pre_amplitude after_price after_high_price after_low_price after_volume after_turnover after_change_val after_change_rate after_amplitude overnight_price overnight_high_price overnight_low_price overnight_volume overnight_turnover overnight_change_val overnight_change_rate overnight_amplitude
0  US.AAPL   Apple                             0.0         0.0         0.0        0.0               0.0       0       0.0            0.0        0.0       False                        0.0         N/A     NORMAL          N/A           N/A           N/A                N/A     N/A   N/A   N/A  N/A   N/A  N/A               N/A                  N/A                    N/A                  N/A              N/A                 N/A               N/A      N/A             N/A               N/A       N/A            N/A           N/A        N/A          N/A            N/A             N/A           N/A         N/A              N/A             N/A          N/A            N/A              N/A               N/A             N/A             N/A                  N/A                 N/A              N/A                N/A                  N/A                   N/A                 N/A

```


## Qot\_UpdateBasicQot.proto


- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.

- **Parameters**

> - For basic quotation structure, refer to [BasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930-2)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`virtual void OnReply_UpdateBasicQuote(FTAPI_Conn client, QotUpdateBasicQot.Response rsp);`

- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.

- **Parameters**

> - For basic quotation structure, refer to [BasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930-2)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`void onPush_UpdateBasicQuote(FTAPI_Conn client, QotUpdateBasicQot.Response rsp);`

- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.

- **Parameters**

> - For basic quotation structure, refer to [BasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930-2)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`virtual void OnPush_UpdateBasicQot(const Qot_UpdateBasicQot::Response &stRsp) = 0;`

- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.

- **Parameters**

> - For basic quotation structure, refer to [BasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930-2)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`OnPush(cmd,res)`

- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.

- **Parameters**

> - For basic quotation structure, refer to [BasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930-2)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- This interface provides the function of continuously obtaining pushed data. If you need to obtain real-time data at one time, please refer to the [Get Real-time Quote of Securities](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ticker.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).

`on_recv_rsp(self, rsp_pb)`

- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.
After receiving the real-time quote data push, it will call back to this function. You need to override on\_recv\_rsp in the derived class.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| rsp\_pb | Qot\_UpdateBasicQot\_pb2.Response | This parameter does not need to be processed in the derived class. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, quotation data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - quotation data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | data\_date | str | Date. |
    | data\_time | str | Time of latest price. <br><br>Format: yyyy-MM-dd HH:mm:ss<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | last\_price | float | Latest price. |
    | open\_price | float | Open. |
    | high\_price | float | High. |
    | low\_price | float | Low. |
    | prev\_close\_price | float | Yesterday's close. |
    | volume | int | Volume. |
    | turnover | float | Turnover. |
    | turnover\_rate | float | Turnover rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | amplitude | int | Amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | suspension | bool | Whether trading is suspended. <br><br>True: suspension. |
    | listing\_date | str | Listing date. <br><br>yyyy-MM-dd |
    | price\_spread | float | Spread. |
    | dark\_status | [DarkStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#6341) | Grey market transaction status. |
    | sec\_status | [SecurityStatus](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#4415) | Stock status. |
    | strike\_price | float | Strike price. |
    | contract\_size | float | Contract size. |
    | open\_interest | int | Number of open positions. |
    | implied\_volatility | float | Implied volatility. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | premium | float | Premium. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | delta | float | Greek value Delta. |
    | gamma | float | Greek value Gamma. |
    | vega | float | Greek value Vega. |
    | theta | float | Greek value Theta. |
    | rho | float | Greek value Rho. |
    | index\_option\_type | [IndexOptionType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2866) | Index option type. |
    | net\_open\_interest | int | Net open contract number. <br><br>Only HK options support this field. |
    | expiry\_date\_distance | int | The number of days from the expiry date. <br><br>A negative number means it has expired. |
    | contract\_nominal\_value | float | Contract nominal amount. <br><br>Only HK options support this field. |
    | owner\_lot\_multiplier | float | Equal number of underlying stocks. <br><br>Index options do not have this field , only HK options support this field. |
    | option\_area\_type | [OptionAreaType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3628) | Option type (by exercise time). |
    | contract\_multiplier | float | Contract multiplier. |
    | pre\_price | float | Pre-market price. |
    | pre\_high\_price | float | Pre-market high. |
    | pre\_low\_price | float | Pre-market low. |
    | pre\_volume | int | Pre-market volume. |
    | pre\_turnover | float | Pre-market turnover. |
    | pre\_change\_val | float | Pre-market change. |
    | pre\_change\_rate | float | Pre-market change rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | pre\_amplitude | float | Pre-market amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | after\_price | float | After-hours price. |
    | after\_high\_price | float | After-hours high. |
    | after\_low\_price | float | After-hours low. |
    | after\_volume | int | After-hours volume. <br><br>The Sci-tech Innovation Board supports this data. |
    | After\_turnover | float | After-hours turnover. <br><br>The Sci-tech Innovation Board supports this data. |
    | after\_change\_val | float | After-hours change. |
    | after\_change\_rate | float | After-hours change rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | after\_amplitude | float | After-hours amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | overnight\_price | float | Overnight price. |
    | overnight\_high\_price | float | Overnight high. |
    | overnight\_low\_price | float | Overnight low. |
    | overnight\_volume | int | Overnight volume. |
    | overnight\_turnover | float | Overnight turnover. |
    | overnight\_change\_val | float | Overnight change. |
    | overnight\_change\_rate | float | Overnight change rate. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | overnight\_amplitude | float | Overnight amplitude. <br><br>This field is in percentage form, so 20 is equivalent to 20%. |
    | last\_settle\_price | float | Yesterday's close. <br><br>Specific field for futures. |
    | position | float | Holding position. <br><br>Specific field for futures. |
    | position\_change | float | Daily position change. <br><br>Specific field for futures. |
- **Example**

```python
import time
from moomoo import *

class StockQuoteTest(StockQuoteHandlerBase):
    def on_recv_rsp(self, rsp_pb):
        ret_code, data = super(StockQuoteTest,self).on_recv_rsp(rsp_pb)
        if ret_code != RET_OK:
            print("StockQuoteTest: error, msg: %s"% data)
            return RET_ERROR, data
        print("StockQuoteTest ", data) # StockQuoteTest's own processing logic
        return RET_OK, data
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
handler = StockQuoteTest()
quote_ctx.set_handler(handler) # Set real-time quote callback
ret, data = quote_ctx.subscribe(['US.AAPL'], [SubType.QUOTE]) # Subscribe to the real-time quotation type, OpenD starts to continuously receive pushes from the server
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
time.sleep(15) # Set the script to receive OpenD push duration to 15 seconds
quote_ctx.close() # Close the current link, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
StockQuoteTest        code name data_date data_time  last_price  open_price  high_price  low_price  prev_close_price  volume  turnover  turnover_rate  amplitude  suspension listing_date  price_spread dark_status sec_status strike_price contract_size open_interest implied_volatility premium delta gamma vega theta  rho net_open_interest expiry_date_distance contract_nominal_value owner_lot_multiplier option_area_type contract_multiplier last_settle_price position position_change index_option_type pre_price pre_high_price pre_low_price pre_volume pre_turnover pre_change_val pre_change_rate pre_amplitude after_price after_high_price after_low_price after_volume after_turnover after_change_val after_change_rate after_amplitude overnight_price overnight_high_price overnight_low_price overnight_volume overnight_turnover overnight_change_val overnight_change_rate overnight_amplitude
0  US.AAPL   Apple                             0.0         0.0         0.0        0.0               0.0       0       0.0            0.0        0.0       False                        0.0         N/A     NORMAL          N/A           N/A           N/A                N/A     N/A   N/A   N/A  N/A   N/A  N/A               N/A                  N/A                    N/A                  N/A              N/A                 N/A               N/A      N/A             N/A               N/A       N/A            N/A           N/A        N/A          N/A            N/A             N/A           N/A         N/A              N/A             N/A          N/A            N/A              N/A               N/A             N/A             N/A                  N/A                 N/A              N/A                N/A                  N/A                   N/A                 N/A

```


## Qot\_UpdateBasicQot.proto


- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.

- **Parameters**

> - For basic quotation structure, refer to [BasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930-2)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`virtual void OnReply_UpdateBasicQuote(MMAPI_Conn client, QotUpdateBasicQot.Response rsp);`

- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.

- **Parameters**

> - For basic quotation structure, refer to [BasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930-2)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`void onPush_UpdateBasicQuote(MMAPI_Conn client, QotUpdateBasicQot.Response rsp);`

- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.

- **Parameters**

> - For basic quotation structure, refer to [BasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930-2)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`virtual void OnPush_UpdateBasicQot(const Qot_UpdateBasicQot::Response &stRsp) = 0;`

- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.

- **Parameters**

> - For basic quotation structure, refer to [BasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930-2)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`OnPush(cmd,res)`

- **Description**

Real-time quotation callback, asynchronous processing of real-time quotation push of subscribed stocks.

- **Parameters**

> - For basic quotation structure, refer to [BasicQot](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#8930-2)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- This interface provides the function of continuously obtaining pushed data. If you need to obtain real-time data at one time, please refer to the [Get Real-time Quote of Securities](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ticker.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).

←
[Get Subscription Status](https://openapi.moomoo.com/moomoo-api-doc/en/quote/query-subscription.html)[Real-time Order Book Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-order-book.html)
→

## Real-time Tick-by-Tick Callback

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-ticker.html


`on_recv_rsp(self, rsp_pb)`

- **Description**

Real-time callback, asynchronously processing the real-time push of subscribed stocks.
After receiving real-time data push, it will call back to this function. You need to override on\_recv\_rsp in the derived class.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| rsp\_pb | Qot\_UpdateTicker\_pb2.Response | This parameter does not need to be processed directly in the derived class. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, tick-by-tick data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Tick-by-tick data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | sequence | int | Sequence number. |
    | time | str | Transaction time. <br><br>Format: yyyy-MM-dd HH:mm:ss:xxx<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | price | float | Transaction price. |
    | volume | int | Volume. <br><br>shares |
    | turnover | float | Transaction amount. |
    | ticker\_direction | [TickerDirect](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#832) | Tick-By-Tick direction. |
    | type | [TickerType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9844) | Tick-By-Tick type. |
    | push\_data\_type | [PushDataType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2567) | Source of data. |
- **Example**

```python
import time
from futu import *

class TickerTest(TickerHandlerBase):
    def on_recv_rsp(self, rsp_pb):
        ret_code, data = super(TickerTest,self).on_recv_rsp(rsp_pb)
        if ret_code != RET_OK:
            print("TickerTest: error, msg: %s"% data)
            return RET_ERROR, data
        print("TickerTest ", data) # TickerTest's own processing logic
        return RET_OK, data
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
handler = TickerTest()
quote_ctx.set_handler(handler) # Set real-time push callback
ret, data = quote_ctx.subscribe(['US.AAPL'], [SubType.TICKER], session=Session.ALL) # Subscribe to the type by transaction, OpenD starts to receive continuous push from the server
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
time.sleep(15) # Set the script to receive OpenD push duration to 15 seconds
quote_ctx.close() # Close the current link, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
TickerTest        code name                     time   price  volume  turnover ticker_direction             sequence     type push_data_type
0  US.AAPL   APPLE  2025-04-07 05:25:44.116  179.81       9   1618.29          NEUTRAL  7490500033117159426  ODD_LOT          CACHE

```


## Qot\_UpdateTicker.proto


- **Description**

Real-time callback, asynchronously processing the real-time push of subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of each transaction, refer to [Ticker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2975)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`virtual void OnReply_UpdateTicker(FTAPI_Conn client, QotUpdateTicker.Response rsp);`

- **Description**

Real-time callback, asynchronously processing the real-time push of subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of each transaction, refer to [Ticker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2975)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`void onPush_UpdateTicker(FTAPI_Conn client, QotUpdateTicker.Response rsp);`

- **Description**

Real-time callback, asynchronously processing the real-time push of subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of each transaction, refer to [Ticker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2975)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`virtual void OnPush_UpdateTicker(const Qot_UpdateTicker::Response &stRsp) = 0;`

- **Description**

Real-time callback, asynchronously processing the real-time push of subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of each transaction, refer to [Ticker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2975)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`OnPush(cmd,res)`

- **Description**

Real-time callback, asynchronously processing the real-time push of subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of each transaction, refer to [Ticker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2975)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- This interface provides the function of continuously obtaining pushed data. If you need to obtain real-time data at one time, please refer to the [Get Real-time Tick-By-Tick](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ticker.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).
- After the market connection is reconnected, during the disconnected period of OpenD pulls, the nearest (up to 50) Tick-By-Tick data is pushed, which can be distinguished by the Tick-By-Tick push type field

`on_recv_rsp(self, rsp_pb)`

- **Description**

Real-time callback, asynchronously processing the real-time push of subscribed stocks.
After receiving real-time data push, it will call back to this function. You need to override on\_recv\_rsp in the derived class.

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| rsp\_pb | Qot\_UpdateTicker\_pb2.Response | This parameter does not need to be processed directly in the derived class. |

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | [RET\_CODE](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800) | Interface result. |
| data | pd.DataFrame | If ret == RET\_OK, tick-by-tick data is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - Tick-by-tick data format as follows:

    | Field | Type | Description |
    | --- | --- | --- |
    | code | str | Stock code. |
    | name | str | Stock name. |
    | sequence | int | Sequence number. |
    | time | str | Transaction time. <br><br>Format: yyyy-MM-dd HH:mm:ss<br>The default of HK stock market and A-share market is Beijing time, while that of US stock market is US Eastern time. |
    | price | float | Transaction price. |
    | volume | int | Volume. <br><br>shares |
    | turnover | float | Transaction amount. |
    | ticker\_direction | [TickerDirect](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#832) | Tick-By-Tick direction. |
    | type | [TickerType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#9844) | Tick-By-Tick type. |
    | push\_data\_type | [PushDataType](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2567) | Source of data. |
- **Example**

```python
import time
from moomoo import *

class TickerTest(TickerHandlerBase):
    def on_recv_rsp(self, rsp_pb):
        ret_code, data = super(TickerTest,self).on_recv_rsp(rsp_pb)
        if ret_code != RET_OK:
            print("TickerTest: error, msg: %s"% data)
            return RET_ERROR, data
        print("TickerTest ", data) # TickerTest's own processing logic
        return RET_OK, data
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
handler = TickerTest()
quote_ctx.set_handler(handler) # Set real-time push callback
ret, data = quote_ctx.subscribe(['US.AAPL'], [SubType.TICKER], session=Session.ALL) # Subscribe to the type by transaction, OpenD starts to receive continuous push from the server
if ret == RET_OK:
    print(data)
else:
    print('error:', data)
time.sleep(15) # Set the script to receive OpenD push duration to 15 seconds
quote_ctx.close() # Close the current link, OpenD will automatically cancel the corresponding type of subscription for the corresponding stock after 1 minute

```

- **Output**

```python
TickerTest        code name                     time   price  volume  turnover ticker_direction             sequence     type push_data_type
0  US.AAPL   APPLE  2025-04-07 05:25:44.116  179.81       9   1618.29          NEUTRAL  7490500033117159426  ODD_LOT          CACHE

```


## Qot\_UpdateTicker.proto


- **Description**

Real-time callback, asynchronously processing the real-time push of subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of each transaction, refer to [Ticker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2975)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Protocol ID**

`virtual void OnReply_UpdateTicker(MMAPI_Conn client, QotUpdateTicker.Response rsp);`

- **Description**

Real-time callback, asynchronously processing the real-time push of subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of each transaction, refer to [Ticker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2975)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`void onPush_UpdateTicker(MMAPI_Conn client, QotUpdateTicker.Response rsp);`

- **Description**

Real-time callback, asynchronously processing the real-time push of subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of each transaction, refer to [Ticker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2975)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`virtual void OnPush_UpdateTicker(const Qot_UpdateTicker::Response &stRsp) = 0;`

- **Description**

Real-time callback, asynchronously processing the real-time push of subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of each transaction, refer to [Ticker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2975)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

`OnPush(cmd,res)`

- **Description**

Real-time callback, asynchronously processing the real-time push of subscribed stocks.

- **Parameters**

> - For stock structure, refer to [Security](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#5792)
> - For the structure of each transaction, refer to [Ticker](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#2975)
> - For interface result, refer to [RetType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#8800)

- **Example**

- **Output**

Tips

- This interface provides the function of continuously obtaining pushed data. If you need to obtain real-time data at one time, please refer to the [Get Real-time Tick-By-Tick](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-ticker.html) API.
- For the difference between get real-time data and real-time data callback, please refer to [How to Get Real-time Quotes Through Subscription Interface](https://openapi.moomoo.com/moomoo-api-doc/en/qa/quote.html#5505).
- After the market connection is reconnected, during the disconnected period of OpenD pulls, the nearest (up to 50) Tick-By-Tick data is pushed, which can be distinguished by the Tick-By-Tick push type field

←
[Real-time Time Frame Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-rt.html)[Real-time Broker Queue Callback](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-broker.html)
→