
## Command Line OpenD

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html



### Step 1: Download


Command line OpenD can be runned under 4 operating systems: Windows、MacOS、CentOS、Ubuntu (Click to download).

- OpenD - [Windows](https://www.futunn.com/download/fetch-lasted-link?name=opend-windows)、 [MacOS](https://www.futunn.com/download/fetch-lasted-link?name=opend-macos) 、 [CentOS](https://www.futunn.com/download/fetch-lasted-link?name=opend-centos) 、 [Ubuntu](https://www.futunn.com/download/fetch-lasted-link?name=opend-ubuntu)


### Step 2: Decompression


- Extract the file downloaded in the previous step and find the OpenD configuration file FutuOpenD.xml and the program packaged data file Appdata.dat in the folder.
  - FutuOpenD.xml is used to configure the startup parameters of the OpenD program. If it does not exist, the program cannot start correctly.
  - Appdata.dat is a large amount of data information the program needs to use, packaging data to reduce the time of downloading data while starting OpenD. If it does not exist, the program can not start correctly.
- Command line OpenD supports user-defined file paths, refer to [Command line startup parameters](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#7191)。


### Step 1: Download


- You can download through [moomoo official website](https://www.moomoo.com/download/OpenAPI).

![download-page](https://openapi.moomoo.com/moomoo-api-doc/assets/img/mmdownload-page.6e0d199e.png)


### Step 2: Decompression


- Extract the file downloaded in the previous step and find the OpenD configuration file OpenD.xml and the program packaged data file Appdata.dat in the folder.
  - OpenD.xml is used to configure the startup parameters of the OpenD program. If it does not exist, the program cannot start correctly.
  - Appdata.dat is a large amount of data information the program needs to use, packaging data to reduce the time of downloading data while starting OpenD. If it does not exist, the program can not start correctly.
- Command line OpenD supports user-defined file paths, refer to [Command line startup parameters](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#7191)。


### Step 3: Parameter Configuration


- Open and edit the configuration file FutuOpenD.xml as the picture below. For general use, you only need to change your account and login password, and other options can be modified according to the instructions in the following table.

![xml-config](https://openapi.moomoo.com/moomoo-api-doc/assets/img/xml.00cc6239.png)

**Configuration item list**：

| Configuration Item | Description |
| --- | --- |
| ip | listening address. <br><br>Option: <br>127.0.0.1 (for local connections)<br>0.0.0.0 (for connections from all network cards)<br>the address of one of your network card<br>127.0.0.1 by default. |
| api\_port | API protocol receiving port. <br><br>11111 by default.<br>Also can be specified in [Command Line Startup](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#7191). |
| login\_account | Login account. <br><br>Support UserID, Email, Phone, can be specified in [Command Line Startup](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#7191).<br>UserID: Futubull ID<br>Email: xxxx@xx.com <br>Phone: Area code+number, e.g.,+86 xxxxxxxx |
| login\_pwd | Login password in plaintext. <br><br>Also can be specified with login password ciphertext<br>Also can be specified in [Command Line Startup](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#7191). |
| login\_pwd\_md5 | Login password ciphertext (32-bit MD5 encrypted hexadecimal). <br><br>When both ciphertext and plaintext exist, only ciphertext is used.<br>Also can be specified with login password plaintext. |
| Lang | Language.<br><br>Option:<br>Simplified Chinese<br>English |
| log\_level | Log level of OpenD. <br><br>Option: <br>no (no log)<br>debug (the most detailed)<br>info (less detailed)<br>_info_ level by default. |
| push\_proto\_type | API protocol type. <br><br>Determines the format of the package body. Option: 0 (pb)<br>1 (json)<br>PB format by default |
| qot\_push\_frequency | API subscription data push frequency <br><br>In milliseconds.<br>Candlestick and Time Frame are not included.<br>If not set, the frequency will not be limited. |
| telnet\_ip | Remote operation command listening address. <br><br>127.0.0.1 by default. |
| telnet\_port | Remote operation command listening port. <br><br>If not set, remote command will not be enabled. |
| rsa\_private\_key | API protocol [RSA](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#1479) encrypted private key (PKCS#1) file absolute path.<br><br>If not set, the protocol will not be encrypted. |
| price\_reminder\_push | Whether to receive the price reminder. <br><br>Option: 0: not received,<br>1: received (callback function [set\_handler](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html#8418) needs to be set in the script).<br>It will be pushed by default. |
| auto\_hold\_quote\_right | Whether to automatically grab quote right after being kicked. <br><br>Option: 0: No, <br>1: Yes (when this option is enabled, FutuOpenD will automatically grab back quote right after being grabbed. If it is robbed again within 10 seconds, the other terminal will get the highest quote right, and FutuOpenD will not grab it again).<br>The permission will be robbed automatically by default. |
| future\_trade\_api\_time\_zone | Specify the futures trading API time zone. <br><br>When trading API is called with futures accounts, the time involved is in accordance with this parameter. <br>Also can be specified in [Command Line Startup](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#7191). <br>If not set, the exchange time zone will be the default. |
| websocket\_ip | WebSocket listening address. <br><br>Option: <br>127.0.0.1 (for local connections)<br>0.0.0.0 (for connections from all network cards)<br>127.0.0.1 by default. |
| websocket\_port | WebSocket service listening port. <br><br>If not set, WebSocket service will not be enabled. |
| websocket\_key\_md5 | Key ciphertext (32-bit MD5 encrypted hexadecimal). <br><br>Used to judge whether the connection is trusted when JavaScript scripts are connected. |
| websocket\_private\_key | WebSocket certificate private key file path. <br><br>The private key cannot be configured with a password. <br>If not configured, WebSocket is not enabled. <br>It needs to be configured at the same time with the certificate. |
| websocket\_cert | WebSocket certificate file path. <br><br>If not configured, WebSocket is not enabled.<br>It needs to be configured with the private key at the same time. |
| pdt\_protection | Whether to turn on the Pattern Day Trade Protection. <br><br>**Specific parameters for FUTU US**<br>Option: 0: No, <br>1: Yes (We will prevent you from placing orders which might mark you as a Pattern Day Trader(PDT). The Protection can not guarentee that you won't be marked as a PDT. If you are marked as a PDT, you will not be allowed to open new positions until your equity is above $25000.)<br>The Pattern Day Trade Protection will be turned on by default. |
| dtcall\_confirmation | Whether to turn on the Day-Trading Call Warning. <br><br>**Specific parameters for FUTU US**<br>Option: 0: No, <br>1: Yes (We will prevent you from placing orders which might exceed your remaining day-trading buying power. We will alert you that you are placing orders that exceed your remaining day-trading buying power. If you close the positions today, you will receive a Day-Trading Call. The DT Call can ONLY be met by depositing funds in the full amount of the call.)<br>The Day-Trading Call Warning will be turned on by default. |

Tips

- To ensure safety of your trading accounts, if the listening address is not local, you must configure a private key to use the trading interface. The quote interface is not subject to this restriction.

- When the WebSocket listening address is not local, you need to configure SSL to start it, and a password should not be set during the certificate private key generation.

- Ciphertext is represented in hexadecimal after plaintext is encrypted by 32-bit MD5, which can be calculated by searching online MD5 encryption (note that there may be a risk of records colliding with libraries calculated through third-party websites) or by downloading MD5 computing tools. The 32-bit MD5 ciphertext is shown in the red box area (e10adc3949ba59abbe56e057f20f883e):

![md5.png](<Base64-Image-Removed>)

- OpenD reads FutuOpenD.xml in the same directory by default. On MacOS, due to the system protection mechanism, OpenD.app will be assigned a random path at run time, so that the original path can not be found. At this point, there are the following methods:

  - Execute fixrun.sh under tar package
  - Specify the configuration file path with the command line parameter `-cfg_file`, as described below
- The log level defaults to the info level. During the system development phase, it is not recommended to close the log or modify the log to the warning, error, fatal level to prevent failure to locate problems.


### Step 3: Parameter Configuration


- Open and edit the configuration file OpenD.xml as the picture below. For general use, you only need to change your account and login password, and other options can be modified according to the instructions in the following table.

![xml-config](https://openapi.moomoo.com/moomoo-api-doc/assets/img/mmxml.835c5c80.png)

**Configuration item list**：

| Configuration Item | Description |
| --- | --- |
| ip | listening address. <br><br>Option: <br>127.0.0.1 (for local connections)<br>0.0.0.0 (for connections from all network cards)<br>the address of one of your network card<br>127.0.0.1 by default. |
| api\_port | API protocol receiving port. <br><br>11111 by default.<br>Also can be specified in [Command Line Startup](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#7191). |
| login\_account | Login account. <br><br>Support UserID, Email, Phone, can be specified in [Command Line Startup](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#7191).<br>UserID: moomoo ID<br>Email: xxxx@xx.com <br>Phone: Area code+number, e.g.,+1 xxxxxxxx |
| login\_pwd | Login password in plaintext. <br><br>Also can be specified with login password ciphertext<br>Also can be specified in [Command Line Startup](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#7191). |
| login\_pwd\_md5 | Login password ciphertext (32-bit MD5 encrypted hexadecimal). <br><br>When both ciphertext and plaintext exist, only ciphertext is used.<br>Also can be specified with login password plaintext. |
| Lang | Language.<br><br>Option:<br>Simplified Chinese<br>English |
| log\_level | Log level of OpenD. <br><br>Option: <br>no (no log)<br>debug (the most detailed)<br>info (less detailed)<br>_info_ level by default. |
| push\_proto\_type | API protocol type. <br><br>Determines the format of the package body. Option: 0 (pb)<br>1 (json)<br>PB format by default |
| qot\_push\_frequency | API subscription data push frequency <br><br>In milliseconds.<br>Candlestick and Time Frame are not included.<br>If not set, the frequency will not be limited. |
| telnet\_ip | Remote operation command listening address. <br><br>127.0.0.1 by default. |
| telnet\_port | Remote operation command listening port. <br><br>If not set, remote command will not be enabled. |
| rsa\_private\_key | API protocol [RSA](https://openapi.moomoo.com/moomoo-api-doc/en/qa/other.html#1479) encrypted private key (PKCS#1) file absolute path.<br><br>If not set, the protocol will not be encrypted. |
| price\_reminder\_push | Whether to receive the price reminder. <br><br>Option: 0: not received,<br>1: received (callback function [set\_handler](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html#8418) needs to be set in the script).<br>It will be pushed by default. |
| auto\_hold\_quote\_right | Whether to automatically grab quote right after being kicked. <br><br>Option: 0: No, <br>1: Yes (when this option is enabled, FutuOpenD will automatically grab back quote right after being grabbed. If it is robbed again within 10 seconds, the other terminal will get the highest quote right, and FutuOpenD will not grab it again).<br>The permission will be robbed automatically by default. |
| future\_trade\_api\_time\_zone | Specify the futures trading API time zone. <br><br>When trading API is called with futures accounts, the time involved is in accordance with this parameter. <br>Also can be specified in [Command Line Startup](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html#7191). <br>If not set, the exchange time zone will be the default. |
| websocket\_ip | WebSocket listening address. <br><br>Option: <br>127.0.0.1 (for local connections)<br>0.0.0.0 (for connections from all network cards)<br>127.0.0.1 by default. |
| websocket\_port | WebSocket service listening port. <br><br>If not set, WebSocket service will not be enabled. |
| websocket\_key\_md5 | Key ciphertext (32-bit MD5 encrypted hexadecimal). <br><br>Used to judge whether the connection is trusted when JavaScript scripts are connected. |
| websocket\_private\_key | WebSocket certificate private key file path. <br><br>The private key cannot be configured with a password. <br>If not configured, WebSocket is not enabled. <br>It needs to be configured at the same time with the certificate. |
| websocket\_cert | WebSocket certificate file path. <br><br>If not configured, WebSocket is not enabled.<br>It needs to be configured with the private key at the same time. |
| pdt\_protection | Whether to turn on the Pattern Day Trade Protection. <br><br>**Specific parameters for FUTU US**<br>Option: 0: No, <br>1: Yes (We will prevent you from placing orders which might mark you as a Pattern Day Trader(PDT). The Protection can not guarentee that you won't be marked as a PDT. If you are marked as a PDT, you will not be allowed to open new positions until your equity is above $25000.)<br>The Pattern Day Trade Protection will be turned on by default. |
| dtcall\_confirmation | Whether to turn on the Day-Trading Call Warning. <br><br>**Specific parameters for FUTU US**<br>Option: 0: No, <br>1: Yes (We will prevent you from placing orders which might exceed your remaining day-trading buying power. We will alert you that you are placing orders that exceed your remaining day-trading buying power. If you close the positions today, you will receive a Day-Trading Call. The DT Call can ONLY be met by depositing funds in the full amount of the call.)<br>The Day-Trading Call Warning will be turned on by default. |

Tips

- To ensure safety of your trading accounts, if the listening address is not local, you must configure a private key to use the trading interface. The quote interface is not subject to this restriction.

- When the WebSocket listening address is not local, you need to configure SSL to start it, and a password should not be set during the certificate private key generation.

- Ciphertext is represented in hexadecimal after plaintext is encrypted by 32-bit MD5, which can be calculated by searching online MD5 encryption (note that there may be a risk of records colliding with libraries calculated through third-party websites) or by downloading MD5 computing tools. The 32-bit MD5 ciphertext is shown in the red box area (e10adc3949ba59abbe56e057f20f883e):

![md5.png](<Base64-Image-Removed>)

- OpenD reads OpenD.xml in the same directory by default. On MacOS, due to the system protection mechanism, OpenD.app will be assigned a random path at run time, so that the original path can not be found. At this point, there are the following methods:

  - Execute fixrun.sh under tar package
  - Specify the configuration file path with the command line parameter `-cfg_file`, as described below
- The log level defaults to the info level. During the system development phase, it is not recommended to close the log or modify the log to the warning, error, fatal level to prevent failure to locate problems.


### Step 4: Command Line Startup


- On the command line, change the directory to the folder which FutuOpenD is located, and run the following command to start Command Line FutuOpenD with configuration from FutuOpenD.xml.
  - Windows：`FutuOpenD`
  - Linux：`./FutuOpenD`
  - MacOS：`./FutuOpenD.app/Contents/MacOS/FutuOpenD`

Command Line Startup Parameters

- You can also start with parameters on the command line, some of which are the same as the FutuOpenD.xml configuration file. Parameter format: `-key=value`![startup-command-param.png](<Base64-Image-Removed>)

For example:

  - Windows：`FutuOpenD.exe -login_account=100000 -login_pwd=123456 -lang=en`
  - Linux：`FutuOpenD -login_account=100000 -login_pwd=123456 -lang=en`
  - MacOS：`./FutuOpenD.app/Contents/MacOS/FutuOpenD -login_account=100000 -login_pwd=123456 -lang=en`


### Step 4: Command Line Startup


- On the command line, change the directory to the folder which OpenD is located, and run the following command to start Command Line OpenD with configuration from OpenD.xml.
  - Windows：`OpenD`
  - Linux：`./OpenD`
  - MacOS：`./OpenD.app/Contents/MacOS/OpenD`

Command Line Startup Parameters

- You can also start with parameters on the command line, some of which are the same as the OpenD.xml configuration file. Parameter format: `-key=value`![startup-command-param.png](<Base64-Image-Removed>)

For example:

  - Windows：`OpenD.exe -login_account=100000 -login_pwd=123456 -lang=en`
  - Linux：`OpenD -login_account=100000 -login_pwd=123456 -lang=en`
  - MacOS：`./OpenD.app/Contents/MacOS/OpenD -login_account=100000 -login_pwd=123456 -lang=en`

- If the same parameters exist on both the command line and the configuration file, the command line parameters take precedence. For details of the parameters, please see the following table:

**parameter list**:

| Configuration Item | Description |
| --- | --- |
| login\_account | Login account.<br><br>Also can be specified in configuration file. |
| login\_pwd | Plaintext of login password.<br><br>Also can be specified in configuration file. |
| login\_pwd\_md5 | Login password ciphertext (32-bit MD5 encrypted hexadecimal).<br><br>When both ciphertext and plaintext exist, only ciphertext is used. <br>Also can be specified in configuration file. |
| cfg\_file | The absolute path of OpenD configuration file.<br><br>If not set, use **_OpenD.xml_** in the directory where the program is located. |
| console | Whether to display the console. <br><br>Option: <br>0: background operation<br>1: console operation<br>Console operation by default. |
| lang | OpenD language<br><br>Option:<br>Simplified Chinese<br>English |
| api\_ip | API service listening address.<br><br>Option: <br>127.0.0.1 (for local connections)<br>0.0.0.0 (for connections from all network cards)<br>the address of one of your network card |
| api\_port | API listening port. |
| help | Output startup command line parameters and exit the program. |
| log\_level | Log level of OpenD.<br><br>Option: <br>no (no log)<br>debug (the most detailed)<br>info (less detailed) |
| no\_monitor | Whether to start the daemon. <br><br>Option:<br>0: start<br>1: do not start<br>Start with the daemon by default. |
| websocket\_ip | WebSocket listening address.<br><br>Option: <br>127.0.0.1 (for local connections)<br>0.0.0.0 (for connections from all network cards) |
| websocket\_port | WebSocket service listening port. |
| websocket\_private\_key | WebSocket certificate private key file path. <br><br>The private key cannot be configured with a password. <br>If not configured, WebSocket is not enabled. <br>It needs to be configured at the same time with the certificate. |
| websocket\_cert | WebSocket certificate file path.<br><br>If not configured, WebSocket is not enabled.<br>It needs to be configured with the private key at the same time. |
| websocket\_key\_md5 | Key ciphertext (32-bit MD5 encrypted hexadecimal). <br><br>Used to judge whether the connection is trusted when JavaScript scripts are connected. |
| price\_reminder\_push | Whether to receive the price reminder.<br><br>Option: 0: not received,<br>1: received (callback function [set\_handler](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html#8418) needs to be set in the script).<br>It will be pushed by default. |
| auto\_hold\_quote\_right | Whether to automatically grab quote right after being kicked.<br><br>Option: 0: No, <br>1: Yes (when this option is enabled, OpenD will automatically grab back quote right after being grabbed. If it is robbed again within 10 seconds, the other terminal will get the highest quote right, and OpenD will not grab it again).<br>The permission will be robbed automatically by default. |
| future\_trade\_api\_time\_zone | Specify the futures _Trade API_ time zone. <br><br>When _Trade API_ is called with futures accounts, the time involved is in accordance with this parameter. <br>Also can be specified in configuration file. |

:::

| Configuration Item | Description |
| --- | --- |
| login\_account | Login account.<br><br>Also can be specified in configuration file. |
| login\_pwd | Plaintext of login password.<br><br>Also can be specified in configuration file. |
| login\_pwd\_md5 | Login password ciphertext (32-bit MD5 encrypted hexadecimal).<br><br>When both ciphertext and plaintext exist, only ciphertext is used. <br>Also can be specified in configuration file. |
| cfg\_file | The absolute path of OpenD configuration file.<br><br>If not set, use **_OpenD.xml_** in the directory where the program is located. |
| console | Whether to display the console. <br><br>Option: <br>0: background operation<br>1: console operation<br>Console operation by default. |
| lang | OpenD language<br><br>Option:<br>Simplified Chinese<br>English |
| api\_ip | API service listening address.<br><br>Option: <br>127.0.0.1 (for local connections)<br>0.0.0.0 (for connections from all network cards)<br>the address of one of your network card |
| api\_port | API listening port. |
| help | Output startup command line parameters and exit the program. |
| log\_level | Log level of OpenD.<br><br>Option: <br>no (no log)<br>debug (the most detailed)<br>info (less detailed) |
| no\_monitor | Whether to start the daemon. <br><br>Option:<br>0: start<br>1: do not start<br>Start with the daemon by default. |
| websocket\_ip | WebSocket listening address.<br><br>Option: <br>127.0.0.1 (for local connections)<br>0.0.0.0 (for connections from all network cards) |
| websocket\_port | WebSocket service listening port. |
| websocket\_private\_key | WebSocket certificate private key file path. <br><br>The private key cannot be configured with a password. <br>If not configured, WebSocket is not enabled. <br>It needs to be configured at the same time with the certificate. |
| websocket\_cert | WebSocket certificate file path.<br><br>If not configured, WebSocket is not enabled.<br>It needs to be configured with the private key at the same time. |
| websocket\_key\_md5 | Key ciphertext (32-bit MD5 encrypted hexadecimal). <br><br>Used to judge whether the connection is trusted when JavaScript scripts are connected. |
| price\_reminder\_push | Whether to receive the price reminder.<br><br>Option: 0: not received,<br>1: received (callback function [set\_handler](https://openapi.moomoo.com/moomoo-api-doc/en/ftapi/init.html#8418) needs to be set in the script).<br>It will be pushed by default. |
| auto\_hold\_quote\_right | Whether to automatically grab quote right after being kicked.<br><br>Option: 0: No, <br>1: Yes (when this option is enabled, OpenD will automatically grab back quote right after being grabbed. If it is robbed again within 10 seconds, the other terminal will get the highest quote right, and OpenD will not grab it again).<br>The permission will be robbed automatically by default. |
| future\_trade\_api\_time\_zone | Specify the futures _Trade API_ time zone. <br><br>When _Trade API_ is called with futures accounts, the time involved is in accordance with this parameter. <br>Also can be specified in configuration file. |

:::

←
[Overview](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-intro.html)[Operation Command](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-operate.html)
→

## Overview

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-intro.html


- OpenD, which can be runned on your local computer or cloud server, is the gateway program of Futu API. It is responsible for transferring protocol requests to Futu servers and returning the processed data. It is a necessary prerequisite for running Futu API programs.

- OpenD can be runned under 4 operating systems: Windows, MacOS, CentOS and Ubuntu.

- You need to log in to OpenD with your _Futu ID_ (Futubull ID) , _Email_, _Phone number_ and _login password_.

- After a successful login into OpenD, the socket service is started for Futu API to connect and communicate.

- OpenD, which can be runned on your local computer or cloud server, is the gateway program of moomoo API. It is responsible for transferring protocol requests to moomoo servers and returning the processed data. It is a necessary prerequisite for running moomoo API programs.

- OpenD can be runned under 4 operating systems: Windows, MacOS, CentOS and Ubuntu.

- You need to log in to OpenD with your _moomoo ID_, _Email_, _Phone number_ and _login password_.

- After a successful login into OpenD, the socket service is started for moomoo API to connect and communicate.


## Install OpenD


There are 2 modes to run OpenD, you can choose 1 of them below:

- Visualisation OpenD: Provide interface applications, easy to operate, especially suitable for beginners. Please refer to [Visualization OpenD](https://openapi.moomoo.com/moomoo-api-doc/en/quick/opend-base.html) for installation and operation.
- Command Line OpenD: Provide command line execution program, which needs to be configured by yourself, which is suitable for users who are familiar with the command line or running on the server for a long time. Please refer to [Command Line OpenD](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html) for installation and operation.

There are 2 modes to run OpenD, you can choose 1 of them below:

- Visualisation OpenD: Provide interface applications, easy to operate, especially suitable for beginners. Please refer to [Visualization OpenD](https://openapi.moomoo.com/moomoo-api-doc/en/quick/opend-base.html) for installation and operation.
- Command Line OpenD: Provide command line execution program, which needs to be configured by yourself, which is suitable for users who are familiar with the command line or running on the server for a long time. Please refer to [Command Line OpenD](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html) for installation and operation.


## Operation While Running


While OpenD is running, you can view user quota, quote right, connection status, delay statistics, and operate closing API connection, re-login, logging out etc. with Operation Command.

For more information, please see the following table:

| Method | Visualisation OpenD | Command Line OpenD |
| --- | --- | --- |
| Direct Method | through the UI interface | Send [Operation Command](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-operate.html) through command line |
| Indirect Medhod | Send [Operation Command](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-operate.html) through Telnet | Send [Operation Command](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-operate.html) through Telnet |

While OpenD is running, you can view user quota, quote right, connection status, delay statistics, and operate closing API connection, re-login, logging out etc. with Operation Command.

For more information, please see the following table:

| Method | Visualisation OpenD | Command Line OpenD |
| --- | --- | --- |
| Direct Method | through the UI interface | Send [Operation Command](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-operate.html) through command line |
| Indirect Medhod | Send [Operation Command](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-operate.html) through Telnet | Send [Operation Command](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-operate.html) through Telnet |

←
[Strategy Setup](https://openapi.moomoo.com/moomoo-api-doc/en/quick/strategy-sample.html)[Command Line OpenD](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html)
→

## Operation Command

> Source: https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-operate.html


You can do operate OpenD by sending Operation Command from the command line or Telent.

You can do operate OpenD by sending Operation Command from the command line or Telent.

Command format: `cmd -param_key1=param_value1 -param_key2=param_value2`

Using the following example to describe how to use Telnet: `help -cmd=exit`

1. Configure Telnet address and Telnet port in the OpenD set up parameter.
![telnet_GUI](https://openapi.moomoo.com/moomoo-api-doc/assets/img/telnet_GUI.0ac368ba.png)![telnet_CMD](https://openapi.moomoo.com/moomoo-api-doc/assets/img/telnet_CMD.b0d3e174.jpg)
2. Start OpenD (it will also start Telnet).
3. Via Telnet，send the command `help -cmd=exit` to OpenD。

```python
from telnetlib import Telnet
with Telnet('127.0.0.1', 22222) as tn:  # Telnet address is: 127.0.0.1, Telnet port is: 22222
    tn.write(b'help -cmd=exit\r\n')
    reply = b''
    while True:
        msg = tn.read_until(b'\r\n', timeout=0.5)
        reply += msg
        if msg == b'':
            break
    print(reply.decode('gb2312'))

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


### Command Help


`help -cmd=exit`

View the detailed information of the specified command, output the command list if no parameter is specified

- Parameters:
  - cmd: command


### Exit the Program


`Exit`

Exit OpenD

Exit OpenD


### Request Mobile Phone Verification Code


`req_phone_verify_code`

Requested mobile phone verification code. Security verification is required when the device lock is enabled and the device is logged in at the first time.

- Frequency limitations:
  - Maximal 1 request every 60 seconds


### Enter the Phone Verification Code


`Input_phone_verify_code -code=123456`

Enter the phone verification code and continue the login process.

- Parameters:

  - code: mobile phone verification code
- Frequency limitations:

  - Maximal 10 requests every 60 seconds


### Request Graphic Verification Code


`req_pic_verify_code`

Request a graphic verification code. When you enter the wrong login password multiple times, you need to enter the graphic verification code.

- Frequency limitations:
  - Maximal 10 requests every 60 seconds


### Enter Graphic Verification Code


`Input_pic_verify_code -code=1234`

Enter the graphic verification code and continue the login process.

- Parameters:

  - code: Graphic verification code
- Frequency limitations:

  - Maximal 10 requests every 60 seconds


### Relogin


`relogin -login_pwd=123456`

This command can be used when the user is required to log in again when the login password is changed or the device lock is opened midway. You can only relogin to the current account, and changing accounts is not supported.
The password parameter is mainly used to the situation that the login password had been modified. If login\_pwd is not set, the login password at startup will be used.

- Parameters:

  - login\_pwd: login password in plaintext

  - login\_pwd\_md5: login password in ciphertext (32-bit MD5 encrypted hexadecimal)
- Frequency limitations:

  - Maximal 10 requests every hour


### Time Delay Between Detection and Connection Point


`ping`

Delay before detection and connection point

- Frequency limitations:
  - Maximal 10 requests every 60 seconds


### Display Delay Statistics Report


`show_delay_report -detail_report_path=D:/detail.txt -push_count_type=sr2cs`

Display delay statistics report, including push delay, request delay and order delay. Data is cleaned up at 6:00 Beijing time every day.

- Parameters:
  - detail\_report\_path: file output path (MAC system only supports absolute path, not relative path), optional parameter, if not specified, output to the console

  - push\_count\_type: the type of push delay (sr2ss, ss2cr, cr2cs, ss2cs, sr2cs), sr2cs by default.

    - sr refers to the server receiving time (currently only HK stocks support this time)
    - ss refers to the server sending time
    - cr refers to OpenD receiving time
    - cs refers to OpenD sending time


### Display Delay Statistics Report


`show_delay_report -detail_report_path=D:/detail.txt -push_count_type=sr2cs`

Display delay statistics report, including push delay, request delay and order delay. Data is cleaned up at 6:00 Beijing time every day.

- Parameters:
  - detail\_report\_path: file output path (MAC system only supports absolute path, not relative path), optional parameter, if not specified, output to the console

  - push\_count\_type: the type of push delay (sr2ss, ss2cr, cr2cs, ss2cs, sr2cs), sr2cs by default.

    - sr refers to the server receiving time (currently only HK stocks support this time)
    - ss refers to the server sending time
    - cr refers to OpenD receiving time
    - cs refers to OpenD sending time


### Close API Connection


`close_api_conn -conn_id=123456`

Close an API connection, if not specified, close all connections

- Parameters:
  - conn\_id: API connection ID


### Show Subscription Status


`show_sub_info -conn_id=123456 -sub_info_path=D:/detail.txt`

Display the subscription status of a connection, if not specified, display all connections

- Parameters:
  - conn\_id: API connection ID

  - sub\_info\_path: file output path (MAC system only supports absolute path, not relative path), optional parameter, if not specified, output to the console


### Request the Highest Quotation Permission


`request_highest_quote_right`

When the advanced quotation authority is occupied by other devices (such as desktop/mobile terminal), you can use this command to request the highest quotation authority again (And then, other devices that are logged in will not be able to use advanced quote).

- Frequency limitations:
  - Maximal 10 requests every 60 seconds


### Update


`update`

Update

←
[Command Line OpenD](https://openapi.moomoo.com/moomoo-api-doc/en/opend/opend-cmd.html)[Overview](https://openapi.moomoo.com/moomoo-api-doc/en/quote/overview.html)
→