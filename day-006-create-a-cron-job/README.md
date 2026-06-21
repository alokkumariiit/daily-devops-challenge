# Day 6 - Create a Cron Job

## Goal

Learn how to schedule automated tasks in Linux using Cron Jobs.

## What is a Cron Job?

A Cron Job is a scheduled task that runs automatically at a specified time or interval.

Common use cases:

- Automated backups
- Log cleanup
- Health checks
- Scheduled scripts
- System maintenance

---

## Install Cron Service

### Ubuntu/Debian

```bash
sudo apt install -y cron
```

### RHEL/CentOS

```bash
sudo yum install -y cronie
```

---

## Enable and Start Cron Service

```bash
sudo systemctl enable crond
sudo systemctl start crond
```

Check status:

```bash
sudo systemctl status crond
```

---

## Create a Cron Job

Open root user's crontab:

```bash
sudo crontab -e
```

Example:

```bash
* * * * * echo "Hello DevOps" >> /tmp/output.txt
```

This runs every minute.

---

## Cron Schedule Format

```text
* * * * *
│ │ │ │ │
│ │ │ │ └── Day of Week (0-7)
│ │ │ └──── Month (1-12)
│ │ └────── Day of Month (1-31)
│ └──────── Hour (0-23)
└────────── Minute (0-59)
```

Example:

```bash
0 2 * * * /home/user/backup.sh
```

Runs every day at 2:00 AM.

---

## Verify Cron Jobs

List configured cron jobs:

```bash
sudo crontab -l
```

---

## Key Learnings

- Cron automates repetitive tasks.
- `crontab -e` is used to create or edit cron jobs.
- `crontab -l` lists existing cron jobs.
- `crond` is the cron service daemon.
- Cron jobs use a five-field scheduling format.