# Day 5 - SELinux Installation & Configuration

## Goal

Learn how to check, configure, and manage SELinux modes in Linux.

## What is SELinux?

SELinux (Security-Enhanced Linux) is a security layer that provides additional access control policies beyond standard Linux permissions.

It helps protect systems by restricting what users, processes, and applications can access.

---

## Check SELinux Status

Using sestatus:

```bash
sestatus
```

Using getenforce:

```bash
getenforce
```

Possible outputs:

```text
Enforcing
Permissive
Disabled
```

---

## SELinux Modes

### Enforcing

- SELinux policies are actively enforced.
- Unauthorized actions are blocked.

### Permissive

- SELinux policies are not enforced.
- Violations are logged for auditing.

### Disabled

- SELinux is completely turned off.

---

## Change SELinux Mode Temporarily

### Enforcing → Permissive

```bash
sudo setenforce 0
```

Verify:

```bash
getenforce
```

Output:

```text
Permissive
```

### Permissive → Enforcing

```bash
sudo setenforce 1
```

Verify:

```bash
getenforce
```

Output:

```text
Enforcing
```

---

## Permanent Configuration

Edit SELinux configuration file:

```bash
sudo vi /etc/selinux/config
```

Example:

```text
SELINUX=enforcing
```

Possible values:

```text
SELINUX=enforcing
SELINUX=permissive
SELINUX=disabled
```

Save the file and reboot the system.

---

## Key Learnings

- SELinux provides mandatory access control.
- `sestatus` displays detailed SELinux information.
- `getenforce` shows the current SELinux mode.
- `setenforce 0` switches to Permissive mode.
- `setenforce 1` switches to Enforcing mode.
- Permanent configuration is stored in `/etc/selinux/config`.