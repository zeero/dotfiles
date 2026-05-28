---
paths: **/*.swift
---

# Swift コーディング ノウハウ

## 目次

1. [コードスタイル](#コードスタイル)

---

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

