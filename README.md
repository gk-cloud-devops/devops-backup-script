# DevOps Backup Automation Script

This project contains a simple **Shell Script** to automate server backups, with logging and rotation support.

## 🧠 Features
- Takes timestamped backups using `tar`
- Logs all actions to `backup.log`
- Keeps only the latest 7 backups (rotation)
- Ready for cron automation

## ⚙️ Usage
```bash
chmod +x website_backup.sh
./website_backup.sh
