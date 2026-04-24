---
paths: Taskfile*.yml
---

# Taskfile コーディングルール

### default は task --list

defaultタスクは以下の通りとする。

```yaml
  default:
    cmds:
      - task --list
    silent: true
```

