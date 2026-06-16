---
name: swift-coder
description: Swiftコーディングにおいて、定義されたコーディングルールを適用するためのスキルです。Swiftコードを記述する場合や、.swidtファイルの修正を依頼された際は、必ずこのスキルを起動してルールを適用してください。
---

# Swift Coding Rules

このスキルは、Swiftコードの一貫性を保つための特定のコーディングルールを適用します。

## コードスタイル

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

