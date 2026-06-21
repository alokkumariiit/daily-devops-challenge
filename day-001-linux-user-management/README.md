# Day 1 - Linux User Setup with Non-Interactive Shell

## Goal

Create Linux users that exist in the system but cannot log in through SSH or terminal.

## What is a Shell?

A shell is the command interface a user gets after login.

Examples:

```bash
/bin/bash
/bin/sh
```

View available shells:

```bash
cat /etc/shells
```

## Non-Interactive Shell

A non-interactive shell prevents a user from opening a terminal session.

Common non-interactive shells:

```bash
/usr/sbin/nologin
/bin/false
```

These are mainly used for service accounts.

Examples:

- Apache → apache user
- MySQL → mysql user

## Linux File System Basics

```text
/
├── bin
├── etc
├── home
├── usr
└── var
```

| Directory | Purpose |
|------------|----------|
| /etc | Configuration files |
| /home | User home directories |
| /usr | Programs and software |
| /var | Logs and variable data |

## Commands Practiced

Create a user with a non-interactive shell:

```bash
useradd -s /usr/sbin/nologin testuser
```

Create a user and modify its shell:

```bash
adduser testuser
usermod -s /usr/sbin/nologin testuser
```

Create a user directly with a non-interactive shell:

```bash
adduser --shell /usr/sbin/nologin testuser
```

Verify:

```bash
grep testuser /etc/passwd
```

## Key Learnings

- Shell controls user interaction with Linux.
- `/usr/sbin/nologin` blocks interactive login.
- Service accounts should not have login access.
- User information is stored in `/etc/passwd`.