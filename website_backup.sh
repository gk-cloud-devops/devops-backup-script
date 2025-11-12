#!/bin/bash


SRC="$HOME/test_www/html"           # Source folder (your test files)
DEST_DIR="$HOME/backups"            # Backup storage folder
KEEP=7                              # Keep last 7 backups
LOG="$DEST_DIR/backup.log"

mkdir -p "$DEST_DIR"

TIMESTAMP=$(date +%F_%H%M)
OUT="$DEST_DIR/backup_${TIMESTAMP}.tar.gz"

echo "$(date): Starting backup $OUT" >> "$LOG"

if [ -d "$SRC" ]; then
  tar -czf "$OUT" -C "$SRC" .
  if [ $? -eq 0 ]; then
    echo "$(date): Backup saved: $OUT" >> "$LOG"
  else
    echo "$(date): Backup FAILED" >> "$LOG"
    exit 1
  fi
else
  echo "$(date): Source not found: $SRC" >> "$LOG"
  exit 1
fi

# Rotation: delete older backups (keep $KEEP latest)
cd "$DEST_DIR" || exit 0
ls -1t backup_*.tar.gz 2>/dev/null | tail -n +$((KEEP + 1)) | xargs -r rm --
echo "$(date): Rotation done, kept latest $KEEP backups" >> "$LOG"

