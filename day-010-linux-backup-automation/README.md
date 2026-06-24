# Day 10 - Linux Backup Automation Using Bash, ZIP, SCP and SSH Keys

## Goal

Learn how to automate backups in Linux using Bash scripting, ZIP compression, SSH key authentication, and SCP file transfer.

---

## Why Backup Automation Matters

Backup automation is a common DevOps task used for:

- Website backups
- Application backups
- Configuration backups
- Database dump transfers
- Disaster recovery
- Log archival

Manual backups are error-prone, while automated backups are reliable and repeatable.

---

## Linux Paths

### Absolute Path

Starts from root (/).

Examples:

```bash
/var/www/html
/etc/nginx
/archives
```

### Relative Path

Starts from the current directory.

Examples:

```bash
scripts
archives
backup.sh
```

---

## Creating Directories

Create directories safely:

```bash
mkdir -p /archives
```

### Why Use -p ?

```bash
mkdir -p /opt/devops/backups
```

Benefits:

- Creates parent directories automatically
- Does not fail if directories already exist
- Makes scripts idempotent

---

## ZIP Compression

Check ZIP installation:

```bash
which zip
```

Install if missing:

### Ubuntu

```bash
sudo apt install zip -y
```

### RHEL/CentOS

```bash
sudo yum install zip -y
```

Create archive:

```bash
zip -r backup.zip /var/www/html
```

### Option

| Option | Meaning |
|----------|----------|
| -r | Recursive compression |

---

## SSH Key Authentication

### Generate SSH Key Pair

```bash
ssh-keygen -t rsa -N ""
```

Generated files:

```text
~/.ssh/id_rsa
~/.ssh/id_rsa.pub
```

| File | Purpose |
|---------|---------|
| id_rsa | Private Key |
| id_rsa.pub | Public Key |

---

## Copy Public Key to Remote Server

```bash
ssh-copy-id user@server
```

Example:

```bash
ssh-copy-id natasha@ststor01
```

Verify:

```bash
ssh natasha@ststor01
```

Password should not be required.

---

## SCP (Secure Copy)

Transfer files securely over SSH.

Syntax:

```bash
scp source_file user@server:/destination
```

Example:

```bash
scp backup.zip natasha@ststor01:/archives/
```

---

## Bash Scripting

A Bash script automates multiple commands.

Example:

```bash
#!/bin/bash

echo "Backup Started"
```

### Shebang

```bash
#!/bin/bash
```

Tells Linux to execute the script using Bash.

---

## Script Permissions

Make script executable:

```bash
chmod +x backup.sh
```

Verify:

```bash
ls -l backup.sh
```

Example:

```text
-rwxr-xr-x
```

---

## Backup Workflow

```text
Website Files
      |
      v
ZIP Archive
      |
      v
Local Backup Storage
      |
      v
SCP Transfer
      |
      v
Remote Storage Server
```

---

## Example Backup Script

```bash
#!/bin/bash

zip -r /archives/website_backup.zip /var/www/html

scp /archives/website_backup.zip user@storage-server:/archives/
```

Run:

```bash
./backup.sh
```

---

## Key Learnings

- Linux filesystem navigation
- Absolute vs Relative paths
- mkdir -p
- ZIP compression
- SSH key authentication
- SCP file transfer
- Bash scripting
- Script permissions
- Backup automation concepts