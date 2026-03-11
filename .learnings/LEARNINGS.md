# LEARNINGS.md - 纠正、知识差距、最佳实践

## 格式

### Learning Entry

```markdown
## [LRN-YYYYMMDD-XXX] category

**Logged**: ISO-8601 timestamp
**Priority**: low | medium | high | critical
**Status**: pending
**Area**: frontend | backend | infra | tests | docs | config

### Summary
One-line description of what was learned

### Details
Full context

### Suggested Action
Specific fix or improvement

### Metadata
- Source: conversation | error | user_feedback
- Related Files: path/to/file.ext
- Tags: tag1, tag2
- See Also: LRN-20250110-001 (if related)
- Pattern-Key: xxx (optional)
- Recurrence-Count: 1 (optional)

---
```

---

---
## 现有条目

## [LRN-20260309-002] self-improving-1-2-10

**Logged**: 2026-03-08T18:29:04Z
**Priority**: medium
**Status**: pending
**Area**: config

### Summary
安装了 self-improving-1-2-10 Pro 版，停用了旧版 self-improving-agent

### Details
- 从 ClawHub 安装了 self-improving-1-2-10
- 功能：Self-reflection + Self-criticism + Self-learning + Self-organizing memory
- 旧版停用并重命名为 self-improving-agent.disabled

### Suggested Action
熟悉新 skill 的运作方式，可能需要按 setup.md 配置

### Metadata
- Source: user_feedback
- Related Features: self-improvement

---

## [LRN-20260309-001] self-improvement启用

**Logged**: 2026-03-08T18:07:25Z
**Priority**: medium
**Status**: pending
**Area**: config

### Summary
启用了 self-improvement skill

### Details
用户要求启用 self-improvement skill。创建了 .learnings 目录和三个文件：
- LEARNINGS.md: 纠正、知识差距、最佳实践
- ERRORS.md: 命令失败、异常
- FEATURE_REQUESTS.md: 用户请求的功能

### Suggested Action
定期回顾 .learnings，重要内容提炼到 MEMORY.md

### Metadata
- Source: user_feedback
- See Also: MEMORY.md

---
