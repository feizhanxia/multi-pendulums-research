---
name: auto-updater
description: Automatically update OpenClaw and all installed skills once daily. Runs via cron, checks for updates, applies them, and messages the user with a summary of what changed.
metadata:
  { "openclaw": { "emoji": "🔄" } }
---

# Auto-Updater Skill

Automatically update OpenClaw and all installed skills once daily.

## When to Use

- User wants automatic daily updates
- User wants to stay up-to-date with OpenClaw and skills

## Setup

### 1. Create the skill

This skill is stored at: `~/.openclaw/workspace/skills/auto-updater/`

### 2. Set up cron job

```bash
# Add cron job for daily update at 3 AM
crontab -e

# Add this line:
0 3 * * * /home/yono/.openclaw/workspace/skills/auto-updater/update.sh >> /home/yono/.openclaw/logs/auto-updater.log 2>&1
```

## Update Script

Create `update.sh`:

```bash
#!/bin/bash
set -e

LOG_FILE="/home/yono/.openclaw/logs/auto-updater.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

echo "[$DATE] Starting update..." >> $LOG_FILE

# Update OpenClaw
echo "[$DATE] Updating OpenClaw..." >> $LOG_FILE
npm update -g openclaw --no-fund --no-audit >> $LOG_FILE 2>&1 || true

# Update skills from ClawHub
echo "[$DATE] Updating skills..." >> $LOG_FILE
clawdhub update --all >> $LOG_FILE 2>&1 || true

# Restart gateway
echo "[$DATE] Restarting gateway..." >> $LOG_FILE
openclaw gateway restart >> $LOG_FILE 2>&1 || true

echo "[$DATE] Update complete!" >> $LOG_FILE
```

Make it executable:
```bash
chmod +x ~/.openclaw/workspace/skills/auto-updater/update.sh
```

## Manual Run

```bash
~/.openclaw/workspace/skills/auto-updater/update.sh
```

## Notes

- Updates run silently; check log file for details
- Use `--dry-run` with OpenClaw to preview changes first
- Consider notification to user after update (via message tool)
