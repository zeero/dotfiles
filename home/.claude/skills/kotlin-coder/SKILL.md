---
name: kotlin-coder
description: Kotlinコーディングにおいて、定義されたコーディングルールを適用するためのスキルです。Kotlinコードを記述する場合や、.ktファイルの修正を依頼された際は、必ずこのスキルを起動してルールを適用してください。
---

# Kotlin Coding Rules

このスキルは、Kotlinコードの一貫性を保つための特定のコーディングルールを適用します。

### 判定式を値として使う時はカッコで囲みたい

```kotlin
  // not preferred
  val foo = bar == baz

  // preferred ✨
  val foo = (bar == baz)
```

### enum UPPER_SNAKE_CASE で命名する

```kotlin
  // not preferred
  enum class SomeEnum {
      foo, barBaz
  }

  // preferred ✨
  enum class SomeEnum {
      FOO, BAR_BAZ
  }
```

