# Day 7 - Linux SSH Authentication

## Goal

Learn how SSH authentication works and configure passwordless SSH using SSH keys.

## What is SSH?

SSH (Secure Shell) is a secure protocol used to remotely access Linux servers.

Connect to a server:

```bash
ssh username@ip-address
```

Example:

```bash
ssh ubuntu@192.168.1.10
```

---

## SSH Key Authentication

Instead of using passwords, SSH can use a public-private key pair for authentication.

Benefits:

- More secure than passwords
- Enables passwordless login
- Commonly used in DevOps automation

---

## Generate SSH Key Pair

```bash
ssh-keygen -t rsa
```

Explanation:

- `ssh-keygen` → Generate SSH keys
- `-t rsa` → Use RSA algorithm

Generated files:

```text
~/.ssh/id_rsa
~/.ssh/id_rsa.pub
```

- `id_rsa` → Private Key
- `id_rsa.pub` → Public Key

---

## Copy Public Key to Remote Server

```bash
ssh-copy-id app@server
```

Example:

```bash
ssh-copy-id ubuntu@192.168.1.10
```

This copies the public key to the remote server.

---

## Passwordless SSH Login

After copying the key:

```bash
ssh app@server
```

You should be able to log in without entering a password.

---

## Verify SSH Keys

```bash
ls -la ~/.ssh
```

View public key:

```bash
cat ~/.ssh/id_rsa.pub
```

---

## Key Learnings

- SSH provides secure remote access.
- SSH keys are more secure than passwords.
- `ssh-keygen` creates a public-private key pair.
- `ssh-copy-id` copies the public key to a server.
- Passwordless authentication is widely used in DevOps automation.