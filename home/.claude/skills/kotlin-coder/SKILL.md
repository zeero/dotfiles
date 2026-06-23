---
name: kotlin-coder
description: A skill for applying the defined coding rules to Kotlin coding. Always activate this skill and apply the rules when writing Kotlin code or when asked to modify .kt files.
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

