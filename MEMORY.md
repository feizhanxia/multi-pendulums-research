# MEMORY.md - 亚当的长期记忆

## 关于 yono

- 用户名: yono
- Telegram: @feizhanxia
- 时区: Asia/Shanghai

## 运作模式

- 任务分配制：不直接执行，先讨论确认，spawn ACP 执行
- **非阻塞**：编辑类任务 spawn 后台，立即回复"已在跑"，不等结果

## 任务类型

### Editor Agent

- 用于润色/编辑创作素材
- 调用 Codex (ACP runtime)
- 流程：接收素材 → 润色预览 → 确认后存到 memory/editor/
- 非阻塞：用户随时可以打断下新任务
- 语音输入暂不可用

### 代码任务

- spawn ACP 后台运行（Codex/Claude/Pi）
- 推结果给你确认

### 讨论/想法记录

- 你说"帮我记一下"开始
- 聊完后自动整理关键点
- 存到 `memory/ideas/YYYY-MM-DD.md`

## 已知限制

- ~~Telegram 语音消息下载失败~~ → 已解决：配置了 channels.telegram.proxy

## 语音功能

### 语音输入 (Whisper)
- 用本地 Whisper CLI 转文字
- 配置：tools.media.audio (已配置)

### 语音回复 (Edge TTS)
- 用 Python edge-tts 生成语音
- **重要**：发 Telegram 语音条必须：
  1. 用 ffmpeg 转换为 OGG 格式：`ffmpeg -i input.mp3 -acodec libopus -b:a 128k -y output.ogg`
  2. 加上 `[[audio_as_voice]]` 标签
  3. 存到 ~/.openclaw/media/outbound/ 再发送
- 默认声音：zh-CN-YunyangNeural（男声）
- 代理：需要走代理 HTTP_PROXY

## 自我改进

- .learnings/ 已启用
  - LEARNINGS.md: 纠正、知识差距、最佳实践
  - ERRORS.md: 命令失败、异常
  - FEATURE_REQUESTS.md: 用户请求的功能
