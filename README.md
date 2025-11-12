# 🧰 DevOps Backup Automation Script

This project automates website backup using a simple **Shell Script**.  
It compresses website files into a `.tar.gz` archive, stores backups with timestamps, and automatically rotates old backups to keep only the latest 7.  
A perfect mini-project for beginners stepping into **DevOps automation** 💪

---

## 🏷️ Badges

![Shell Script](https://img.shields.io/badge/Language-Shell%20Script-green)
![Automation](https://img.shields.io/badge/Category-Automation-blue)
![GitHub last commit](https://img.shields.io/github/last-commit/gk-cloud-devops/devops-backup-script)
![Status](https://img.shields.io/badge/Project%20Status-Active-success)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

---

## 🧩 Features

✅ Automated backup creation  
✅ Backup rotation (keeps only latest 7)  
✅ Logging with date & time  
✅ Easy customization of source and destination paths  
✅ Works on any Linux environment (Ubuntu, WSL, etc.)

---

## ⚙️ How It Works

This script takes a copy of your web directory, compresses it, and stores it with a timestamp.  
Old backups are deleted automatically to save space.

---

## 🧠 Real DevOps Use Case

In real-time DevOps environments, we schedule such scripts using **cron jobs** to back up:

- Web servers (`/var/www/html`)
- Configuration files
- Databases (dump + compress)
- Application logs

These backups help when:

- 🧱 A server crashes  
- 🚫 Deployment fails  
- ⚡ Files get corrupted  

With automation, recovery becomes quick & reliable 🚀

---

## 🖥️ How to Run

```
Make script executable
chmod +x website_backup.sh

Run the script
./website_backup.sh

```


---

## 📦 Output Example

```
Wed Nov 12 02:07:27 UTC 2025: Starting backup /home/ubuntu/backups/backup_2025-11-12_0207.tar.gz
Wed Nov 12 02:07:27 UTC 2025: Backup saved: /home/ubuntu/backups/backup_2025-11-12_0207.tar.gz
Wed Nov 12 02:07:27 UTC 2025: Rotation done, kept latest 7 backups

``` 

---

## 📂 Project Structure

```
shell_practice/
│
├── website_backup.sh     # Main automation script
├── backups/              # Backup output folder
└── backup.log            # Log file with timestamps

```        

---

## 🏷️ Tags

shell-scripting automation devops linux backup bash github

---

## 👨‍💻 Author

Gokul — Aspiring DevOps Engineer in progress 🚀
Learning step by step every day and sharing progress openly!

---

## 📫 Follow my journey

https://www.linkedin.com/in/gokul-cloud-devops/

---

## ⭐ If you like this project

Don’t forget to give it a star on GitHub 🌟

---

## 💬 Feedback

Got ideas to improve this script?

Open a pull request or create an issue — let’s grow together 🤝
