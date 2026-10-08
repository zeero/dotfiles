> For the complete documentation index, see [llms.txt](https://developer.raindrop.io/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://developer.raindrop.io/v1/collections.md).

# Collections

### Fields

| Field            | Type            | Description                                                                                                                                                                                                      |
| ---------------- | --------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| \_id             | `Integer`       | The id of the collection.                                                                                                                                                                                        |
| access           | `Object`        |                                                                                                                                                                                                                  |
| access.level     | `Integer`       | <p></p><ol><li>read only access (equal to <code>public=true</code>)</li><li>collaborator with read only access</li><li>collaborator with write only access</li><li>owner</li></ol>                               |
| access.draggable | `Boolean`       | Does it possible to change parent of this collection?                                                                                                                                                            |
| collaborators    | `Object`        | <p>When this object is present, means that collections is shared. Content of this object is private and not very useful.<br>All sharing API methods <a href="/pages/-M-V4R9doNntP_Hjra7-">described here</a></p> |
| color            | `String`        | Primary color of collection cover as `HEX`                                                                                                                                                                       |
| count            | `Integer`       | Count of raindrops in collection                                                                                                                                                                                 |
| cover            | `Array<String>` | <p>Collection cover URL.<br>This array always have one item due to legacy reasons</p>                                                                                                                            |
| created          | `String`        | When collection is created                                                                                                                                                                                       |
| expanded         | `Boolean`       | Whether the collection’s sub-collections are expanded                                                                                                                                                            |
| lastUpdate       | `String`        | When collection is updated                                                                                                                                                                                       |
| parent           | `Object`        |                                                                                                                                                                                                                  |
| parent.$id       | `Integer`       | The id of the parent collection. Not specified for root collections                                                                                                                                              |
| public           | `Boolean`       | Collection and raindrops that it contains will be accessible without authentication by public link                                                                                                               |
| sort             | `Integer`       | The order of collection (descending). Defines the position of the collection among all the collections with the same `parent.$id`                                                                                |
| title            | `String`        | Name of the collection                                                                                                                                                                                           |
| user             | `Object`        |                                                                                                                                                                                                                  |
| user.$id         | `Integer`       | Owner ID                                                                                                                                                                                                         |
| view             | `String`        | <p>View style of collection, can be:</p><ul><li><code>list</code> (default)</li><li><code>simple</code></li><li><code>grid</code></li><li><code>masonry</code> Pinterest like grid</li></ul>                     |

{% hint style="warning" %}
Our API response could contain **other fields**, not described above. It's **unsafe to use** them in your integration! They could be removed or renamed at any time.
{% endhint %}

### System collections

Every user have several system non-removable collections. They are not contained in any API responses.

| \_id    | Description               |
| ------- | ------------------------- |
| **-1**  | "**Unsorted**" collection |
| **-99** | "**Trash**" collection    |
