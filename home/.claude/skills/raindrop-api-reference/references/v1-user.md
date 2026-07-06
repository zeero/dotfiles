> For the complete documentation index, see [llms.txt](https://developer.raindrop.io/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://developer.raindrop.io/v1/user.md).

# User

### Main fields

| Field                | Publicly visible | Type            | Description                                                   |
| -------------------- | ---------------- | --------------- | ------------------------------------------------------------- |
| \_id                 | **Yes**          | `Integer`       | Unique user ID                                                |
| config               | No               | `Object`        | More details in "Config fields"                               |
| email                | No               | `String`        | Only visible for you                                          |
| email\_MD5           | **Yes**          | `String`        | MD5 hash of email. Useful for using with Gravatar for example |
| files.used           | No               | `Integer`       | How much space used for files this month                      |
| files.size           | No               | `Integer`       | Total space for file uploads                                  |
| files.lastCheckPoint | No               | `String`        | When space for file uploads is reseted last time              |
| fullName             | **Yes**          | `String`        | Full name, max 1000 chars                                     |
| groups               | No               | `Array<Object>` | More details below in "Groups"                                |
| password             | No               | `Boolean`       | Does user have a password                                     |
| pro                  | **Yes**          | `Boolean`       | PRO subscription                                              |
| proExpire            | No               | `String`        | When PRO subscription will expire                             |
| registered           | No               | `String`        | Registration date                                             |

### Config fields

| Field                   | Publicly visible | Type      | Description                                                                                                                                                                                 |
| ----------------------- | ---------------- | --------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| config.broken\_level    | No               | `String`  | <p>Broken links finder configuration, possible values:</p><p><code>basic</code> <code>default</code> <code>strict</code> or <code>off</code></p>                                            |
| config.font\_color      | No               | `String`  | Bookmark preview style: `sunset` `night` or empty                                                                                                                                           |
| config.font\_size       | No               | `Integer` | Bookmark preview font size: from 0 to 9                                                                                                                                                     |
| config.lang             | No               | `String`  | UI language in 2 char code                                                                                                                                                                  |
| config.last\_collection | No               | `Integer` | Last viewed collection ID                                                                                                                                                                   |
| config.raindrops\_sort  | No               | `String`  | <p>Default bookmark sort:</p><p><code>title</code> <code>-title</code> <code>-sort</code> <code>domain</code> <code>-domain</code> <code>+lastUpdate</code> or <code>-lastUpdate</code></p> |
| config.raindrops\_view  | No               | `String`  | <p>Default bookmark view:</p><p><code>grid</code> <code>list</code> <code>simple</code> or <code>masonry</code></p>                                                                         |

### Groups object fields <a href="#single-group-detail" id="single-group-detail"></a>

| Field       | Type             | Description              |
| ----------- | ---------------- | ------------------------ |
| title       | `String`         | Name of group            |
| hidden      | `Boolean`        | Does group is collapsed  |
| sort        | `Integer`        | Ascending order position |
| collections | `Array<Integer>` | Collection ID's in order |

### Other fields

| Field             | Publicly visible | Type      | Description                         |
| ----------------- | ---------------- | --------- | ----------------------------------- |
| facebook.enabled  | No               | `Boolean` | Does Facebook account is linked     |
| twitter.enabled   | No               | `Boolean` | Does Twitter account is linked      |
| vkontakte.enabled | No               | `Boolean` | Does Vkontakte account is linked    |
| google.enabled    | No               | `Boolean` | Does Google account is linked       |
| dropbox.enabled   | No               | `Boolean` | Does Dropbox backup is enabled      |
| gdrive.enabled    | No               | `Boolean` | Does Google Drive backup is enabled |

{% hint style="warning" %}
Our API response could contain **other fields**, not described above. It's **unsafe to use** them in your integration! They could be removed or renamed at any time.
{% endhint %}
