#!/bin/bash
set -e

LOG_DIR="/home/yono/.openclaw/logs"
LOG_FILE="$LOG_DIR/auto-updater.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

mkdir -p "$LOG_DIR"

echo "[$DATE] Starting update..." >> $LOG_FILE

# Update OpenClaw
echo "[$DATE] Updating OpenClaw..." >> $LOG_FILE
npm update -g openclaw --no-fund --no-audit >> $LOG_FILE 2>&1 || echo "[$DATE] OpenClaw update failed" >> $LOG_FILE

# Try to update skills via clawdhub if available
if command -v clawdhub &> /dev/null; then
    echo "[$DATE] Updating skills..." >> $LOG_FILE
    clawdhub update --all >> $LOG_FILE 2>&1 || echo "[$DATE] Skills update failed" >> $LOG_FILE
fi

# Restart gateway
echo "[$DATE] Restarting gateway..." >> $LOG_FILE
openclaw gateway restart >> $LOG_FILE 2>&1 || echo "[$DATE] Gateway restart failed" >> $LOG_FILE

echo "[$DATE] Update complete!" >> $LOG_FILE
