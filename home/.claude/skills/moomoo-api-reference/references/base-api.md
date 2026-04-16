
## General Definitions

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html



## Interface Result


> **RET\_CODE**

- `RET_OK`

Success

- `RET_ERROR`

Failed

**RetType**

1

2

3

4

5

6

7

**RetType**

1

2

3

4

5

6

7

**RetType**

1

2

3

4

5

6

7

**RetType**

1

2

3

4

5

6

7

**RetType**

1

2

3

4

5

6

7


## Protocol Format


> **ProtoFMT**

- `Protobuf`

Google Protobuf

- `Json`

Json

**ProtoFmt**

1

2

3

4

5

**ProtoFmt**

1

2

3

4

5

**ProtoFmt**

1

2

3

4

5

**ProtoFmt**

1

2

3

4

5

**ProtoFmt**

1

2

3

4

5


## Packet Encryption Algorithm


**PacketEncAlgo**

1

2

3

4

5

6

7

1

2

3

4

5

6

7

**PacketEncAlgo**

1

2

3

4

5

6

7

1

2

3

4

5

6

7

**PacketEncAlgo**

1

2

3

4

5

6

7

1

2

3

4

5

6

7

**PacketEncAlgo**

1

2

3

4

5

6

7

1

2

3

4

5

6

7

**PacketEncAlgo**

1

2

3

4

5

6

7

1

2

3

4

5

6

7


## Program Status Type


> **ProgramStatusType**

- `NONE`

Unknown

- `LOADED`

The necessary modules have been loaded

- `LOGING`

Logging in

- `NEED_PIC_VERIFY_CODE`

Need graphic verification code

- `NEED_PHONE_VERIFY_CODE`

Need mobile phone verification code

- `LOGIN_FAILED`

Login failed

- `FORCE_UPDATE`

The client version is too low

- `NESSARY_DATA_PREPARING`

Pulling necessary information

- `NESSARY_DATA_MISSING`

Missing necessary information

- `UN_AGREE_DISCLAIMER`

Disclaimer is not agreed

- `READY`

Ready to use

- `FORCE_LOGOUT`

OpenD was forced to log out

**ProgramStatusType**

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

**ProgramStatusType**

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

**ProgramStatusType**

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

**ProgramStatusType**

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

**ProgramStatusType**

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


## OpenD Event Notification Type


> **GtwEventType**

- `LocalCfgLoadFailed`

Failed to load the local configuration file

- `APISvrRunFailed`

Failed to run the OpenD monitoring service

- `ForceUpdate`

Force upgrade of the OpenD

- `LoginFailed`

Failed to log in to Futu servers

- `LoginFailed`

Failed to log in to moomoo servers

- `UnAgreeDisclaimer`

Did not agree to the disclaimer, unable to run

- `LOGIN_FAILED`

Login failed

- `NetCfgMissing`

Missing network connection configuration

- `KickedOut`

Login kicked offline

- `LoginPwdChanged`

Login password has been changed

- `BanLogin`

This account is not allowed to log in by Futu servers

- `BanLogin`

This account is not allowed to log in by moomoo servers

- `NeedPicVerifyCode`

Need graphic verification code

- `NeedPhoneVerifyCode`

Need mobile verification code

- `AppDataNotExist`

Program package data loss

- `NessaryDataMissing`

The necessary data is not synchronized successfully

- `TradePwdChanged`

Transaction password change notice

- `EnableDeviceLock`

Need to enable device lock

**GtwEventType**

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

**GtwEventType**

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

**GtwEventType**

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

**GtwEventType**

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

**GtwEventType**

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


## System Notification Type


> **SysNotifyType**

- `GTW_EVENT`

Gateway event

- `PROGRAM_STATUS`

Program status changes

- `CONN_STATUS`

Status of Connection to Futu servers has been changed

- `CONN_STATUS`

Status of Connection to moomoo servers has been changed

- `QOT_RIGHT`

Quotes authority changed

**NotifyType**

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

**NotifyType**

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

**NotifyType**

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

**NotifyType**

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

**NotifyType**

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


## Package Unique Identifier


**PacketID**

1

2

3

4

5


## Program Status


**ProgramStatus**

1

2

3

4

5

←
[Basic Functions](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html)[Protocol Introduction](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/protocol.html)
→

## Basic Functions

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html


| Protocol ID | Protobuf File | Description |
| --- | --- | --- |
| 1001 | [InitConnect](https://openapi.moomoo.com/moomoo-api-doc/en/quote/base.html) | Connection Initializationaa |
| 1002 | [GetGlobalState](https://openapi.moomoo.com/moomoo-api-doc/en/quote/get-global-state.html) | Get Global Status |
| 1003 | [Notify](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html#787) | Event Notification Callback |
| 1004 | [KeepAlive](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/protocol.html#7390) | Heartbeat Keep Alive |


## Set Interface Information(deprecated)


`set_client_info(client_id, client_ver)`

- **Introduction**

Set calling interface information (unnecessary).

- **Parameters**

  - client\_id: the identification of the client
  - client\_ver: the version number of the client

- **Example**

```python
from futu import *
SysConfig.set_client_info("MyFutuAPI", 0)
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
quote_ctx.close()

```

1

2

3

4

```python
from moomoo import *
SysConfig.set_client_info("MymoomooAPI", 0)
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
quote_ctx.close()

```

1

2

3

4

InitConnect.proto

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

InitConnect.proto

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

- **Introduction**

Set the clientVer and clientID fields in the initial connection protocol.

`void SetClientInfo(String clientID, int clientVer);`

- **Introduction**

Set calling interface information, unnecessary interface

- **Parameters**

  - clientID: the identification of the client
  - clientVer: the version number of the client

1

2

1

2

- **Example**

`void setClientInfo(String clientID, int clientVer);`

- **Introduction**

Set calling interface information, unnecessary interface

- **Parameters**

  - clientID: the identification of the client
  - clientVer: the version number of the client

- **Example**

1

2

- **Example**

1

2

`void SetClientInfo(const char* szClientID, moomoo::i32_t nClientVer);`

- **Introduction**

Set calling interface information, unnecessary interface

- **Parameters**

  - szClientID: the identification of the client
  - nClientVer: client version number

- **Example**

1

2

3

- **Example**

1

2

3


## Set Protocol Format


`set_proto_fmt(proto_fmt)`

- **Introduction**

Set the communication protocol body format, Protobuf and Json formats are currently supported , default ProtoBuf, unnecessary interface

- **Parameters**

  - proto\_fmt: protocol format, refer to [ProtoFMT](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#4358)

- **Example**

```python
from futu import *
SysConfig.set_proto_fmt(ProtoFMT.Protobuf)
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
quote_ctx.close()

```

1

2

3

4

- **Example**

```python
from moomoo import *
SysConfig.set_proto_fmt(ProtoFMT.Protobuf)
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
quote_ctx.close()

```

1

2

3

4

InitConnect.proto

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

InitConnect.proto

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

- **Introduction**

The pushProtoFmt field in the initial connection protocol specifies the format of the data pushed on the connection.
For the request data format, please refer to the nProtoFmtType field in [Protocol header](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/protocol.html#218).


## Set Protocol Encryption Globally


`Enable_proto_encrypt(is_encrypt)`

- **Introduction**
Setting protocol encryption can help users protect their requests and returned contents globally. For more information about Protocol Encryption Process, please check [here](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#1479).

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| is\_encrypt | bool | Enable encryption or not. |

- **Example**

```python
from futu import *
SysConfig.enable_proto_encrypt(True)
SysConfig.set_init_rsa_file("conn_key.txt")   # rsa private key file path
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
quote_ctx.close()

```

1

2

3

4

5

- **Example**

```python
from moomoo import *
SysConfig.enable_proto_encrypt(True)
SysConfig.set_init_rsa_file("conn_key.txt")   # rsa private key file path
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
quote_ctx.close()

```

1

2

3

4

5

`start(ip, port, ssl, key)`

- **Introduction**

Initialize connection, connect and initialize

- **Parameters**

  - ip: WebSocket address listened by OpenD
  - port: the WebSocket port listened by OpenD
  - ssl: Whether to enable SSL encryption, refer to [WebSocket related](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#5728)
  - key: The private key of the connection. If it is not set, a connection timeout may occur. The key is configurable in OpenD, and the private key of Visualization OpenD will be randomly specified if it is not set.
- **Example**

1

2

3

4

5

6

7

- **Parameters**

  - ip: WebSocket address listened by OpenD
  - port: the WebSocket port listened by OpenD
  - ssl: Whether to enable SSL encryption, refer to [WebSocket related](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#5728)
  - key: The private key of the connection. If it is not set, a connection timeout may occur. The key is configurable in OpenD, and the private key of Visualization OpenD will be randomly specified if it is not set.
- **Example**

1

2

3

4

5

6

7


## Set the Path of Private Key


`set_init_rsa_file(file)`

- **Introduction**

Set the Path of Private Key in Futu API. For more information about Protocol Encryption Process, please check [here](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#1479).

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| file | str | Private key file path. |

- **Example**

```python
from futu import *
SysConfig.enable_proto_encrypt(True)
SysConfig.set_init_rsa_file("conn_key.txt")   # rsa private key file path
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
quote_ctx.close()

```

1

2

3

4

5

- **Introduction**

Set the Path of Private Key in moomoo API. For more information about Protocol Encryption Process, please check [here](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#1479).

- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| file | str | Private key file path. |

- **Example**

```python
from moomoo import *
SysConfig.enable_proto_encrypt(True)
SysConfig.set_init_rsa_file("conn_key.txt")   # rsa private key file path
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
quote_ctx.close()

```

1

2

3

4

5

InitConnect.proto

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

InitConnect.proto

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

- **Introduction**

The packetEncAlgo field in the initialization connection protocol specifies the encryption algorithm of the connection.
For details of protocol encryption, refer to [Encrypted Communication Process](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/protocol.html#4573).

`void SetRSAPrivateKey(string key)`

- **Introduction**

Set the Path of Private Key in Futu API. For more information about Protocol Encryption Process, please check [here](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#1479).

- **Parameters**

  - key: private key content
- **Example**

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

23

24

25

26

27

28

29

30

31

32

33

34

35

36

37

38

39

40

41

42

43

44

45

46

47

48

49

50

51

52

53

54

55

56

- **Introduction**

Set the Path of Private Key in moomoo API. For more information about Protocol Encryption Process, please check [here](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#1479).

- **Parameters**

  - key: private key content
- **Example**

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

23

24

25

26

27

28

29

30

31

32

33

34

35

36

37

38

39

40

41

42

43

44

45

46

47

48

49

50

51

52

53

54

55

56

- **Output**

1

2

3

4

5

`void setRSAPrivateKey(String key)`

- **Introduction**

Set the Path of Private Key in Futu API. For more information about Protocol Encryption Process, please check [here](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#1479).

- **Parameters**

  - key: private key content
- **Example**

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

23

24

25

26

27

28

29

- **Introduction**

Set the Path of Private Key in moomoo API. For more information about Protocol Encryption Process, please check [here](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#1479).

- **Parameters**

  - key: private key content
- **Example**

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

23

24

25

26

27

28

29

`void SetRSAPrivateKey(const char* szRSAPrivateKey);`

- **Introduction**

Set the Path of Private Key in Futu API. For more information about Protocol Encryption Process, please check [here](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#1479).

- **Parameters**

  - strRSAPrivateKey: private key content
- **Example**

1

2

3

4

5

6

7

8

- **Introduction**

Set the Path of Private Key in moomoo API. For more information about Protocol Encryption Process, please check [here](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#1479).

- **Parameters**

  - strRSAPrivateKey: private key content
- **Example**

1

2

3

4

5

6

7

8

`start(ip, port, ssl, key)`

- **Introduction**

Initialize connection, connect and initialize

- **Parameters**

  - ip: WebSocket address listened by OpenD
  - port: the WebSocket port listened by OpenD
  - ssl: Whether to enable SSL encryption, refer to [WebSocket related](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#5728)
  - key: The private key of the connection. If it is not set, a connection timeout may occur. The key is configurable in OpenD, and the Visualization OpenD will be randomly assigned if it is not specified.
- **Example**

1

2

3

4

5

6

7

- **Parameters**

  - ip: WebSocket address listened by OpenD
  - port: the WebSocket port listened by OpenD
  - ssl: Whether to enable SSL encryption, refer to [WebSocket related](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#5728)
  - key: The private key of the connection. If it is not set, a connection timeout may occur. The key is configurable in OpenD, and the Visualization OpenD will be randomly assigned if it is not specified.
- **Example**

1

2

3

4

5

6

7


## Set Thread Mode


`set_all_thread_daemon(all_daemon)`

- **Introduction**
Whether to set all internally threads to be daemon threads.

  - If it is set to be daemon threads, then after the main thread exits, the process also exits.

    For example, when using the real-time callback API, you need to make sure the main thread survives by yourself. Otherwise, when the main thread exits, the process also exits and you will no longer receive the push data.
  - If it is set to a non-daemon thread, the process will not exit after the main thread exits.
    For example, if you do not call close() to close the connection after creating a quote or trade object, the process will not exit even if the main thread exits.
- **Parameters**

| Parameter | Type | Description |
| --- | --- | --- |
| all\_daemon | bool | Whether to set threads to be daemon threads. <br><br>  - True：set to daemon threads<br>  - False：set to non-daemon threads<br>  - Default is False |

- **Example**

```python
from futu import *
SysConfig.set_all_thread_daemon(True)
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
# the process will exit without calling quote_ctx.close(),

```

1

2

3

4

- **Example**

```python
from moomoo import *
SysConfig.set_all_thread_daemon(True)
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
# the process will exit without calling quote_ctx.close(),

```

1

2

3

4


## Set Callback


`set_handler(handler)`

- **Introduction**

Set asynchronous callback processing object

- **Parameters**

  - handler: callback processing object

    | Class | Description |
    | --- | --- |
    | SysNotifyHandlerBase | [OpenD notification processing base class](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html#787) |
    | StockQuoteHandlerBase | [Quote processing base class](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-stock-quote.html) |
    | OrderBookHandlerBase | [Order book processing base class](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-order-book.html) |
    | CurKlineHandlerBase | [Real-time candlestick processing base class](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-kl.html) |
    | TickerHandlerBase | [Tick-By-Tick processing base class](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-ticker.html) |
    | RTDataHandlerBase | [Time Frame data processing base class](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-rt.html) |
    | BrokerHandlerBase | [Broker queue processing base class](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-broker.html) |
    | PriceReminderHandlerBase | [Price reminder processing base class](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-price-reminder.html) |
    | TradeOrderHandlerBase | [Order processing base class](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order.html) |
    | TradeDealHandlerBase | [Order fill processing base class](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order-fill.html) |
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
quote_ctx.set_handler(handler) # Setting real-time order book callback
quote_ctx.subscribe(['HK.00700'], [SubType.ORDER_BOOK]) # Subscribe to the order book type, OpenD starts to receive pushed data from the server continuously
time.sleep(15) # Set the script to receive OpenD push duration to 15 seconds
quote_ctx.close() # Close the current connection, OpenD will automatically cancel the subscription of the corresponding stock in 1 minute

```

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

- **Parameters**

  - handler: callback processing object

    | Class | Description |
    | --- | --- |
    | SysNotifyHandlerBase | [OpenD notification processing base class](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html#787) |
    | StockQuoteHandlerBase | [Quote processing base class](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-stock-quote.html) |
    | OrderBookHandlerBase | [Order book processing base class](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-order-book.html) |
    | CurKlineHandlerBase | [Real-time candlestick processing base class](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-kl.html) |
    | TickerHandlerBase | [Tick-By-Tick processing base class](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-ticker.html) |
    | RTDataHandlerBase | [Time Frame data processing base class](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-rt.html) |
    | BrokerHandlerBase | [Broker queue processing base class](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-broker.html) |
    | PriceReminderHandlerBase | [Price reminder processing base class](https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-price-reminder.html) |
    | TradeOrderHandlerBase | [Order processing base class](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order.html) |
    | TradeDealHandlerBase | [Order fill processing base class](https://openapi.moomoo.com/moomoo-api-doc/en/trade/update-order-fill.html) |
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
quote_ctx.set_handler(handler) # Setting real-time order book callback
quote_ctx.subscribe(['HK.00700'], [SubType.ORDER_BOOK]) # Subscribe to the order book type, OpenD starts to receive pushed data from the server continuously
time.sleep(15) # Set the script to receive OpenD push duration to 15 seconds
quote_ctx.close() # Close the current connection, OpenD will automatically cancel the subscription of the corresponding stock in 1 minute

```

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

`void SetConnCallback(FTSPI_Conn connCallback)`

`void SetQotCallback(FTSPI_Qot callback)`

`void SetTrdCallback(FTSPI_Trd callback)`

- **Introduction**

Callback setting

- **Parameters**

  - callback: callback function
- **Example**

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

23

24

25

26

27

28

29

30

31

32

33

34

35

36

37

38

39

40

41

42

`void SetConnCallback(MMSPI_Conn connCallback)`

`void SetQotCallback(MMSPI_Qot callback)`

`void SetTrdCallback(MMSPI_Trd callback)`

- **Introduction**

Callback setting

- **Parameters**

  - callback: callback function
- **Example**

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

23

24

25

26

27

28

29

30

31

32

33

34

35

36

37

38

39

40

41

42

- **Output**

1

`setConnSpi(FTSPI_Conn callback);`

`void setQotSpi(FTSPI_Qot callback);`

`void setTrdSpi(FTSPI_Trd callback);`

- **Introduction**

Callback setting

- **Parameters**

  - callback: callback function
- **Example**

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

23

24

25

26

27

28

29

30

31

32

33

34

35

36

37

38

`setConnSpi(MMSPI_Conn callback);`

`void setQotSpi(MMSPI_Qot callback);`

`void setTrdSpi(MMSPI_Trd callback);`

- **Introduction**

Callback setting

- **Parameters**

  - callback: callback function
- **Example**

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

23

24

25

26

27

28

29

30

31

32

33

34

35

36

37

38

`void RegisterConnSpi(FTSPI_Qot* pSpi);`

`void RegisterQotSpi(FTSPI_Qot* pSpi);`

`void RegisterTrdSpi(FTSPI_Qot* pSpi);`

- **Introduction**

Callback setting

- **Parameters**

  - pSpi: callback function
- **Example**

1

2

3

4

5

`void RegisterConnSpi(MMSPI_Qot* pSpi);`

`void RegisterQotSpi(MMSPI_Qot* pSpi);`

`void RegisterTrdSpi(MMSPI_Qot* pSpi);`

- **Introduction**

Callback setting

- **Parameters**

  - pSpi: callback function
- **Example**

1

2

3

4

5

`onPush(cmd, res)`

`onlogin(ret, msg)`

- **Introduction**

Login callback and push callback

- **Return**

  - cmd: Pushed protocol ID
  - res: Pushed agreement content
  - ret: whether the initialization is successful
  - msg: failure description

- **Example**

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

- **Example**

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


## Get Connection ID


`get_sync_conn_id()`

- **Introduction**

Get the connection ID, the value will be available after the connection is successfully initialized

- **Return**

  - conn\_id: connection ID

- **Example**

```python
from futu import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
quote_ctx.get_sync_conn_id()
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

1

2

3

4

- **Example**

```python
from moomoo import *
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
quote_ctx.get_sync_conn_id()
quote_ctx.close() # After using the connection, remember to close it to prevent the number of connections from running out

```

1

2

3

4

InitConnect.proto

1

2

3

4

5

6

7

8

9

1

2

3

4

5

6

7

8

9

- **Introduction**

The connID field in the InitConnect protocol return packet

`uint GetConnectID();`

- **Introduction**

Get the connection ID, the value will be available after the connection is successfully initialized

- **Return**

  - connID: connection ID

- **Example**

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

23

24

25

26

27

28

29

30

31

32

33

34

35

36

37

38

39

40

41

- **Example**

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

23

24

25

26

27

28

29

30

31

32

33

34

35

36

37

38

39

40

41

- **Output**

1

`long getConnectID();`

- **Introduction**

Get the connection ID, the value will be available after the connection is successfully initialized

- **Return**

  - connID: connection ID

- **Example**

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

23

24

25

26

27

28

29

30

31

32

33

34

35

36

37

38

- **Example**

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

23

24

25

26

27

28

29

30

31

32

33

34

35

36

37

38

`Futu::u64_t GetConnectID()`

- **Introduction**

Get the connection ID, the value will be available after the connection is successfully initialized

- **Return**

  - nConnID: Connection ID
- **Example**

1

2

3

4

`moomoo::u64_t GetConnectID()`

- **Introduction**

Get the connection ID, the value will be available after the connection is successfully initialized

- **Return**

  - nConnID: Connection ID
- **Example**

1

2

3

4

`getConnID()`

- **Introduction**

Get the connection ID, the value will be available after the connection is successfully initialized

- **Return**

  - connID: connection ID

- **Example**

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

- **Example**

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


## Event Notification Callback


`SysNotifyHandlerBase`

- **Introduction**

Notify OpenD of some important news, such as disconnection, etc.

- **Introduction**

Notify OpenD of some important news, such as disconnection, etc.

- **Protocol ID**

1003

- **Return**

| Field | Type | Description |
| --- | --- | --- |
| ret | int | Returned value. On success, ret == RET\_OK. On error, ret != RET\_OK. |
| data | tuple | If ret == RET\_OK, **event notification data** is returned. |
| str | If ret != RET\_OK, error description is returned. |

  - The format of **event notification** data is as follows:

    1581

    | Field | Type | Description |
    | --- | --- | --- |
    | notify\_type | [SysNotifyType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#5979) | Notification data type |
    | sub\_type | [ProgramStatusType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#9803) | Subtype. If notify\_type == SysNotifyType.PROGRAM\_STATUS, program status type is returned. |
    | [GtwEventType](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html#1581) | Subtype. If notify\_type == SysNotifyType.GTW\_EVENT, OpenD event type is returned. |
    | 0 | If notify\_type !=SysNotifyType.PROGRAM\_STATUS and notify\_type !=SysNotifyType.GTW\_EVENT, no useful information is returned. |
    | msg | dict | Event information. If notify\_type == SysNotifyType.CONN\_STATUS, **connection status event information** is returned. |
    | Event information. If notify\_type == SysNotifyType.QOT\_RIGHT, **quote right event information** is returned. |

    - The format of **connection status event information** is as follows(The value of connection status is a bool type, with True for normal, and False for disconnected):

      ```protobuf
      {
          'qot_logined': bool1,
          'trd_logined': bool2,
      }

      ```

      1

      2

      3

      4

    - The format of **quote right event information** is as follows(the type of quote right refers to [Quote Right](https://openapi.moomoo.com/moomoo-api-doc/en/quote/quote.html#3959)):

      ```protobuf
      {
          'hk_qot_right': value1,
          'hk_option_qot_right': value2,
          'hk_future_qot_right': value3,
          'us_qot_right': value4,
          'us_option_qot_right': value5,
          'us_future_qot_right': value6,  // deprecated
          'cn_qot_right': value7,
      	'us_index_qot_right': value8,
      	'us_otc_qot_right': value9,
      	'sg_future_qot_right': value10,
      	'jp_future_qot_right': value11,
      	'us_future_qot_right_cme': value12,
      	'us_future_qot_right_cbot': value13,
      	'us_future_qot_right_nymex': value14,
      	'us_future_qot_right_comex': value15,
      	'us_future_qot_right_cboe': value16,
      }

      ```

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

- **Example**

```python
import time
from futu import *

class SysNotifyTest(SysNotifyHandlerBase):
    def on_recv_rsp(self, rsp_str):
        ret_code, data = super(SysNotifyTest, self).on_recv_rsp(rsp_str)
        notify_type, sub_type, msg = data
        if ret_code != RET_OK:
            logger.debug("SysNotifyTest: error, msg: {}".format(msg))
            return RET_ERROR, data
        if (notify_type == SysNotifyType.GTW_EVENT):  #  OpenD event notification
            print("GTW_EVENT, type: {} msg: {}".format(sub_type, msg))
        elif (notify_type == SysNotifyType.PROGRAM_STATUS):  # Notification of change in program status
            print("PROGRAM_STATUS, type: {} msg: {}".format(sub_type, msg))
        elif (notify_type == SysNotifyType.CONN_STATUS):  ## Notification of change in connection status
            print("CONN_STATUS, qot: {}".format(msg['qot_logined']))
            print("CONN_STATUS, trd: {}".format(msg['trd_logined']))
        elif (notify_type == SysNotifyType.QOT_RIGHT):  # Notification of change in quote right
            print("QOT_RIGHT, hk: {}".format(msg['hk_qot_right']))
            print("QOT_RIGHT, hk_option: {}".format(msg['hk_option_qot_right']))
            print("QOT_RIGHT, hk_future: {}".format(msg['hk_future_qot_right']))
            print("QOT_RIGHT, us: {}".format(msg['us_qot_right']))
            print("QOT_RIGHT, us_option: {}".format(msg['us_option_qot_right']))
            print("QOT_RIGHT, us_future: {}".format(msg['us_future_qot_right']))
            print("QOT_RIGHT, cn: {}".format(msg['cn_qot_right']))
            print("QOT_RIGHT, us_index: {}".format(msg['us_index_qot_right']))
			print("QOT_RIGHT, us_otc: {}".format(msg['us_otc_qot_right']))
			print("QOT_RIGHT, sg_future: {}".format(msg['sg_future_qot_right']))
			print("QOT_RIGHT, jp_future: {}".format(msg['jp_future_qot_right']))
            print("QOT_RIGHT, us_future_cme: {}".format(msg['us_future_qot_right_cme']))
            print("QOT_RIGHT, us_future_cbot: {}".format(msg['us_future_qot_right_cbot']))
            print("QOT_RIGHT, us_future_nymex: {}".format(msg['us_future_qot_right_nymex']))
            print("QOT_RIGHT, us_future_comex: {}".format(msg['us_future_qot_right_comex']))
            print("QOT_RIGHT, us_future_cboe: {}".format(msg['us_future_qot_right_cboe']))
        return RET_OK, data

quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
handler = SysNotifyTest()
quote_ctx.set_handler(handler)   # Set real-time swing callback
time.sleep(15)  # Set the script to receive OpenD push duration to 15 seconds
quote_ctx.close()  # After using the connection, remember to close it to prevent the number of connections from running out

```

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

23

24

25

26

27

28

29

30

31

32

33

34

35

36

37

38

39

40

41

- **Example**

```python
import time
from moomoo import *

class SysNotifyTest(SysNotifyHandlerBase):
    def on_recv_rsp(self, rsp_str):
        ret_code, data = super(SysNotifyTest, self).on_recv_rsp(rsp_str)
        notify_type, sub_type, msg = data
        if ret_code != RET_OK:
            logger.debug("SysNotifyTest: error, msg: {}".format(msg))
            return RET_ERROR, data
        if (notify_type == SysNotifyType.GTW_EVENT):  #  OpenD event notification
            print("GTW_EVENT, type: {} msg: {}".format(sub_type, msg))
        elif (notify_type == SysNotifyType.PROGRAM_STATUS):  # Notification of change in program status
            print("PROGRAM_STATUS, type: {} msg: {}".format(sub_type, msg))
        elif (notify_type == SysNotifyType.CONN_STATUS):  ## Notification of change in connection status
            print("CONN_STATUS, qot: {}".format(msg['qot_logined']))
            print("CONN_STATUS, trd: {}".format(msg['trd_logined']))
        elif (notify_type == SysNotifyType.QOT_RIGHT):  # Notification of change in quote right
            print("QOT_RIGHT, hk: {}".format(msg['hk_qot_right']))
            print("QOT_RIGHT, hk_option: {}".format(msg['hk_option_qot_right']))
            print("QOT_RIGHT, hk_future: {}".format(msg['hk_future_qot_right']))
            print("QOT_RIGHT, us: {}".format(msg['us_qot_right']))
            print("QOT_RIGHT, us_option: {}".format(msg['us_option_qot_right']))
            print("QOT_RIGHT, us_future: {}".format(msg['us_future_qot_right']))
            print("QOT_RIGHT, cn: {}".format(msg['cn_qot_right']))
            print("QOT_RIGHT, us_index: {}".format(msg['us_index_qot_right']))
			print("QOT_RIGHT, us_otc: {}".format(msg['us_otc_qot_right']))
			print("QOT_RIGHT, sg_future: {}".format(msg['sg_future_qot_right']))
			print("QOT_RIGHT, jp_future: {}".format(msg['jp_future_qot_right']))
            print("QOT_RIGHT, us_future_cme: {}".format(msg['us_future_qot_right_cme']))
            print("QOT_RIGHT, us_future_cbot: {}".format(msg['us_future_qot_right_cbot']))
            print("QOT_RIGHT, us_future_nymex: {}".format(msg['us_future_qot_right_nymex']))
            print("QOT_RIGHT, us_future_comex: {}".format(msg['us_future_qot_right_comex']))
            print("QOT_RIGHT, us_future_cboe: {}".format(msg['us_future_qot_right_cboe']))
        return RET_OK, data

quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
handler = SysNotifyTest()
quote_ctx.set_handler(handler)   # Set real-time swing callback
time.sleep(15)  # Set the script to receive OpenD push duration to 15 seconds
quote_ctx.close()  # After using the connection, remember to close it to prevent the number of connections from running out

```

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

23

24

25

26

27

28

29

30

31

32

33

34

35

36

37

38

39

40

41

Notify.proto

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

`void OnReply_Notify(FTAPI_Conn client, uint nSerialNo, Notify.Response rsp)`

- **Introduction**

Notify OpenD of some important information, such as disconnection, etc.

`void onPush_Notify(FTAPI_Conn client, Notify.Response rsp)`

- **Introduction**

Notify OpenD of some important information, such as disconnection, etc.

`virtual void OnPush_Notify(const Notify::Response &stRsp) = 0;`

- **Introduction**

Notify OpenD of some important information, such as disconnection, etc.

`onPush(cmd, res)`

- **Introduction**

Notify OpenD of some important information, such as disconnection, etc.

- **Example**

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

- **Example**

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

←
[Trading Definitions](https://openapi.moomoo.com/moomoo-api-doc/en/trade/trade.html)[General Definitions](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html)
→

## Protocol Introduction

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/protocol.html


Futu API is an API SDK, encapsulated by Futu including mainstream programming languages (Python, Java, C #, C++, JavaScript) to make it easy for you to call and reduce the difficulty of trading strategy development.

This part mainly introduces the underlying protocol of communication between script and OpenD service, which is suitable for users who do not use the above five programming languages.

moomoo API is an API SDK, encapsulated by moomoo including mainstream programming languages (Python, Java, C #, C++, JavaScript) to make it easy for you to call and reduce the difficulty of trading strategy development.

This part mainly introduces the underlying protocol of communication between script and OpenD service, which is suitable for users who do not use the above five programming languages.

Tips

- If you are using a programming language that is one of the five mainstream programming languages mentioned above, you can skip this part.


## Protocol Request Process


- Create a connection
- Initialize the connection
- Request data or receive pushed data
- Send KeepAlive protocol periodically to keep connected

![proto-process](https://openapi.moomoo.com/moomoo-api-doc/assets/img/proto-process.8a7ac8f2.png)

![proto-process](https://openapi.moomoo.com/moomoo-api-doc/assets/img/proto_mmprocess.12101855.png)


## Protocol Design


The protocol data includes the protocol header and the protocol body. The protocol header is fixed, and the protocol body is determined according to the specific protocol.


### Protocol Header


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

| Field | Description |
| --- | --- |
| szHeaderFlag | Packet header start flag, fixed as "FT" |
| nProtoID | Protocol ID |
| nProtoFmtType | Protocol type, 0 for Protobuf, 1 for Json |
| nProtoVer | Protocol version, used for iterative compatibility, currently 0 |
| nSerialNo | Packet serial number, used to correspond to the request packet and return packet, and it is required to be incremented |
| nBodyLen | Body length |
| arrBodySHA1 | SHA1 hash value of the original data of the packet body (after decryption) |
| arrReserved | Reserved 8-byte extension |

Tips

- **_u8\_t_** refer to 8-bit unsigned integer, **_u32\_t_** refer to 32-bit unsigned integer
- **_OpenD_** internal processing uses **_Protobuf_**, so the protocol format recommends using **_Protobuf_**, to reduce **_Json_** conversion overhead.
- The **_nProtoFmtType_** field specifies the data type of the package body, and the corresponding protocol type will be returned when the package is returned. The data type of the push protocol is specified by the **_OpenD_** configuration file
- **_arrBodySHA1_** is used to verify the consistency of the requested data before and after network transmission, and must be filled in correctly
- The binary stream of the protocol header uses little-endian byte order, that is, generally there is no need to use **_ntohl_** and other related functions to convert the data


### Protocol Body



#### Packet Body Structure of Protobuf Request


1

2

3

4

5

6

7

8

9


#### Packet Body Structure of Protobuf Response


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

| Field | Description |
| --- | --- |
| c2s | Request parameter structure |
| req | Request parameters, actually defined according to the protocol |
| retType | Request result |
| retMsg | The reason for the failed request |
| errCode | The corresponding error code for failed request |
| s2c | Response data structure, some protocols do not return data if there is no such field |
| data | Response data, actually defined according to the protocol |

Tips

- The package body format type request package is specified by **_nProtoFmtType_** field from protocol header, and the **_OpenD_** initiative push format is set in [InitConnect](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html#6650).
- The original protocol file format is defined in **_Protobuf_** format. If you need **_json_** format transmission, it is recommended to use the **_protobuf3_** interface to directly convert to **_json_**.
- The enumeration value field definition uses signed integer, and the comment indicates the corresponding enumeration. The enumeration is generally defined in **_Common.proto, Qot\_Common.proto, Trd\_Common.proto_** files.
- The price, percentage and other data in the protocol are transmitted in floating point type. Direct use will cause accuracy problems. It needs to be rounded according to the accuracy (if not specified in the protocol, the default is 3 decimal places) before use.


## Heartbeat Keep Alive


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

23

24

25

26

27

28

29

30

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

23

24

25

26

27

28

29

30

- **Introduction**

Heartbeat keep alive

- **Protocol ID**

1004

- **Introduction**

According to the heartbeat keeping alive interval returned by the [initialization protocol](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html#7571), send the heartbeeat keep alive protocol to OpenD.


## Encrypted Communication Process


- If OpenD is configured with encryption, [InitConnect](https://openapi.moomoo.com/moomoo-api-doc/en/quote/base.html) must use [RSA](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#1479) public key encryption to initialize the connection protocol, and other subsequent protocols use the random key returned by InitConnect for AES encrypted communication.
- The encryption process of OpenD draws on the SSL protocol. Considering that services and applications are generally deployed locally, we simplifies the related processes. OpenD shares the same [RSA](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#1479) private key file with the access Client. Please save and distribute the private key file properly.
- Go to this [URL](http://web.chacuo.net/netrsakeypair) to generate a random [RSA](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#1479) key pair online. The key format must be PCKS#1, the key length can be 512, 1024, and do not set password. Copy and save the generated private key to a file, and then configure the path of the private key file to the **rsa\_private\_key** configuration item agreed upon in [OpenD Configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149).
- **It is recommended that users who have real trade configure encryption to avoid leakage of account and trade information.**

![encrypt](https://openapi.moomoo.com/moomoo-api-doc/assets/img/encrypt.9d680476.png)

![encrypt](https://openapi.moomoo.com/moomoo-api-doc/assets/img/mmencrypt.71115b21.png)


## RSA Encryption and Decryption


- [OpenD configuration](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#149) Convention **rsa\_private\_key** is the path of the private key file
- OpenD shares the same private key file with the access client
- RSA encryption and decryption is only used for InitConnect requests, and is used to securely obtain symmetric encryption key of other request protocols
- The [RSA](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#1479) key of OpenD is 1024-bit, the filling method is PKCS1, public key encryption, private key decryption, public key can be generated by private key


### Send Data Encryption


- RSA encryption rules: If the number of key bits is key\_size, the maximum length of a single encryption string is (key\_size)/8-11. The current number of bits is 1024, and the length of one encryption can be set to 100.
- Divide the plaintext data into one or several segments of up to 100 bytes for encryption, and the final encrypted data is spliced by all segmented encrypted data.


### Receive Data Decryption


- RSA decryption also follows the segmentation rule. For a 1024-bit key, the length of each segment to be decrypted is 128-byte.
- Divide the ciphertext data into one or several segments of up to 128 bytes for decryption, and the final decrypted data is spliced by all segmented decrypted data.


## AES Encryption and Decryption


- The encryption key is returned by the InitConnect protocol
- The ecb encryption mode of AES is used by default.


### Send Data Encryption


- AES encryption requires that the length of the source data must be an integer multiple of 16, so it needs to be aligned with ‘0’ before encryption. Record mod\_len for source data length and 16 module.
- Because it is possible to modify the source data before encryption, it is necessary to add a 16-byte padding data block at the end of the encrypted data. The last byte is assigned mod\_len, and the remaining bytes are assigned the value '0'. The encrypted data and additional populated data blocks are spliced as the body data to be sent in the end.


### Receive Data Decryption


- For protocol body data, first take out the last byte and record it as mod\_len, then truncate the body to the 16-byte padding data block before decrypting it (corresponding to the encrypted padding extra data block logic).
- When mod\_len is 0, the above decrypted data is the body data returned by the protocol, otherwise the tail (16-mod\_len) length of the data used for filling and alignment needs to be truncated.

![aes](https://openapi.moomoo.com/moomoo-api-doc/assets/img/aes.729f06b1.png)

←
[General Definitions](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/common.html)[OpenD Related](https://openapi.moomoo.com/moomoo-api-doc/en/qa/opend.html)
→