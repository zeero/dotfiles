---
name: swift-coder
description: Swiftコーディングにおいて、定義されたコーディングルールを適用するためのスキルです。Swiftコードを記述する場合や、.swidtファイルの修正を依頼された際は、必ずこのスキルを起動してルールを適用してください。
---

# Swift Coding Rules

このスキルは、Swiftコードの一貫性を保つための特定のコーディングルールを適用します。

## 📝 コードスタイル

### `self.` の省略

```swift
// preferred ✨
func updateLabel() {
    titleLabel.text = title
}

// not preferred
func updateLabel() {
    self.titleLabel.text = self.title
}

// クロージャ内も `guard let self` で省略 または `self?.` を使う
fetch { [weak self] result in
    guard let self else { return }
    titleLabel.text = result.title
}

// イニシャライザでの同名プロパティへの `self.` は許容
init(title: String) {
    self.title = title
}
```

### `return` の省略

```swift
// preferred ✨
func getTitle() -> String {
    "Hello, Swift"
}

// not preferred
func getTitle() -> String {
    return "Hello, Swift"
}

// クロージャでも省略可能
let mapped = names.map { $0.uppercased() }

// switch 式でも省略可能
let message = switch status {
case .active: "Active"
case .inactive: "Inactive"
}
```

### 三項演算子の括弧

```swift
// シンプルな条件は括弧不要
let message = isSuccess ? "OK" : "NG"


// 条件式になる時は括弧で囲む ✨
let color = (count > 0) ? .green : .red
```

### KeyPathアクセスを好む

```swift
// preferred ✨
let titles = items.map(\.title)
let activeItems = items.filter(\.isActive)
let validItems = items.compactMap(\.self)

// not preferred
let titles = items.map { $0.title }
let activeItems = items.filter { $0.isActive }
let validItems = items.compactMap { $0 }
```

### `reduce(initValue, +)`を好む

```swift
// preferred ✨
let sum = numbers.reduce(0, +)
let product = numbers.reduce(1, *)

// not preferred
let sum = numbers.reduce(0) { $0 + $1 }
let product = numbers.reduce(1) { $0 * $1 }
```

### インナータイプは `extension` に切り出す

```swift
// preferred ✨
class User {
    let id: Int
}

// MARK: Configuration
extension User {
    struct Configuration {
        let isAdmin: Bool
    }
}

// not preferred
class User {
    let id: Int

    struct Configuration {
        let isAdmin: Bool
    }
}
```

## 🖼️ SwiftUI

### Stack内の要素間に空行を入れる

```swift
// preferred ✨
VStack {
    HeaderView()

    ContentView()
}

// not preferred
VStack {
    HeaderView()
    ContentView()
}
```

## 🏛️ 状態管理

### ステートを持つ場所を限定する

アーキテクチャ上許可された場所（ReduxのState、MVVMのViewModel）でのみ状態を持つ。それ以外のアクター（Service、Repository など）はステートレスを保つ。どうしても必要な場合はユーザーに承認を得る。

状態の分散はSSOT原則を破り、バグの温床となるため。

## 📐 型設計

### 排他的な状態はenumで表現する

相互排他的なフィールド群 + フラグ → enum の associated value に統合し、不可能な状態を型レベルで排除する。

```swift
// preferred ✨
struct Order {
    var fulfillment: Fullfillment

    enum Fullfillment {
        case delivery(address: String)
        case pickup(storeID: String)
    }
}

// not preferred
struct Order {
    var deliveryAddress: String
    var pickupStoreID: String
    let isDelivery: Bool
}
```

### モデルに責務を持たせる

自身のデータに関するロジック（バリデーション、値の算出、他の型からの変換 など）はモデル自身に実装する。

```swift
// preferred ✨
enum Fullfillment {
    case delivery(address: String)
    case pickup(storeID: String)
}

extension Fullfillment {
    init(from source: OrderSource) {
        if source.storeID.isEmpty {
            self = .delivery(address: source.address)
        } else {
            self = .pickup(storeID: source.storeID)
        }
    }
    
    var isValid: Bool {
        switch self {
            case .delivery(let address): !address.isEmpty
            case .pickup(let storeID): !storeID.isEmpty
        }
    }
}
```

### 命名は意図を表現する

実装（何をチェックするか）ではなく、意図（なぜチェックするか）を名前にする。

```swift
// preferred ✨
var isValid: Bool // 「有効かどうか」が呼び出し側の関心事

// not preferred
var isEmpty: Bool // 「空かどうか」は実装の詳細
```

## 重要文献
- [API Design Guidelines | Swift.org](https://www.swift.org/documentation/api-design-guidelines/)

