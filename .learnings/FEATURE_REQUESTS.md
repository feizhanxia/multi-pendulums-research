# FEATURE_REQUESTS.md - 用户请求的功能

## 格式

```markdown
## [FEAT-YYYYMMDD-XXX] capability_name

**Logged**: ISO-8601 timestamp
**Priority**: medium
**Status**: pending
**Area**: frontend | backend | infra | tests | docs | config

### Requested Capability
What user wanted

### User Context
Why they needed it

### Complexity Estimate
simple | medium | complex

### Suggested Implementation
How to build

### Metadata
- Frequency: first_time | recurring
- Related Features: existing_feature

---
```

---

## 现有条目

## [FEAT-20260309-001] openai-whisper

**Logged**: 2026-03-08T18:10:25Z
**Priority**: low
**Status**: resolved
**Area**: config

### Requested Capability
用户要求安装 openai-whisper skill

### User Context
用户想用 Whisper 转录音频

### Complexity Estimate
simple

### Suggested Implementation
- 本地已有 whisper CLI
- openai-whisper skill 已内置在 ~/.npm-global/lib/node_modules/openclaw/skills/

### Metadata
- Frequency: first_time
- Related Features: 语音转文字

---
