# Day 3 - Secure Root SSH Access

## Goal

Disable direct SSH login for the root user to improve server security.

## Why Disable Root SSH Login?

Allowing direct root login over SSH is a security risk because attackers only need to guess the root password.

Instead:

1. Login with a normal user account.
2. Use sudo when administrative privileges are required.

---

## Direct Root Login

```bash
ssh root@server-name
```

This allows direct access to the root account.

---

## Recommended Method

```bash
ssh username@server-name
```

After login:

```bash
sudo su -
```

or

```bash
sudo <command>
```

---

## SSH Configuration File

SSH server settings are stored in:

```bash
/etc/ssh/sshd_config
```

---

## Disable Root Login

Open the SSH configuration file:

```bash
sudo nano /etc/ssh/sshd_config
```

Find:

```text
PermitRootLogin yes
```

Change it to:

```text
PermitRootLogin no
```

Save the file.

---

## Restart SSH Service

```bash
sudo systemctl restart sshd
```

Verify service status:

```bash
sudo systemctl status sshd
```

---

## Security Benefits

- Prevents direct root login.
- Forces accountability through individual user accounts.
- Reduces brute-force attack risks.
- Follows security best practices.

---

## Key Learnings

- SSH allows remote access to Linux servers.
- Root login should be disabled whenever possible.
- SSH settings are managed through `/etc/ssh/sshd_config`.
- `PermitRootLogin no` blocks direct root SSH access.
- SSH service must be restarted after configuration changes.