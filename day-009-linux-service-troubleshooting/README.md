# Day 9 - Linux Service Troubleshooting

## Goal

Learn a structured approach to troubleshooting failed Linux services using systemd, logs, configuration files, and filesystem verification.

---

## Why Service Troubleshooting Matters

In production environments, applications often depend on services such as:

- MariaDB
- MySQL
- Nginx
- Apache
- Docker
- Jenkins

When a service stops working, a systematic troubleshooting process is required to identify and resolve the issue quickly.

---

## Step 1: Check Service Status

View the current status of a service:

```bash
sudo systemctl status <service-name>
```

Example:

```bash
sudo systemctl status mariadb
```

Possible states:

```text
active (running)
inactive (dead)
failed
```

---

## Step 2: Attempt Service Restart

Try starting the service:

```bash
sudo systemctl start <service-name>
```

Example:

```bash
sudo systemctl start mariadb
```

If startup fails, continue investigation.

---

## Step 3: Read Detailed Logs

View detailed service information:

```bash
sudo systemctl status <service-name> -l
```

View systemd logs:

```bash
sudo journalctl -xeu <service-name> --no-pager
```

Example:

```bash
sudo journalctl -xeu mariadb --no-pager
```

Logs usually reveal the actual root cause.

---

## Step 4: Verify Configuration

Check configuration files used by the service.

Examples:

```bash
/etc/my.cnf
/etc/nginx/nginx.conf
/etc/httpd/conf/httpd.conf
```

Search configuration values:

```bash
sudo grep -R keyword /etc/
```

Example:

```bash
sudo grep -R datadir /etc/my.cnf.d/
```

---

## Step 5: Verify Filesystem Resources

Check whether required files and directories exist.

Examples:

```bash
ls -l
ls -ld
```

Verify:

- Directories
- Configuration files
- Symlinks
- Permissions
- Ownership

---

## Step 6: Fix the Root Cause

Common fixes include:

- Correct configuration values
- Fix permissions
- Create missing directories
- Create symbolic links
- Restore missing files
- Update ownership

Example:

```bash
sudo ln -s source_path destination_path
```

---

## Step 7: Restart Service

After fixing the issue:

```bash
sudo systemctl restart <service-name>
```

Example:

```bash
sudo systemctl restart mariadb
```

---

## Step 8: Validate Service Health

Confirm service is running:

```bash
sudo systemctl status <service-name>
```

Expected:

```text
active (running)
```

---

## Real Example

Issue:

```text
Configured Directory : /var/lib/mysql
Actual Directory     : /var/lib/mysqld
```

Solution:

```bash
sudo ln -s /var/lib/mysqld /var/lib/mysql
```

Result:

```text
MariaDB started successfully.
```

---

## Troubleshooting Workflow

```text
Service Down
      ↓
Check Status
      ↓
Read Logs
      ↓
Verify Configuration
      ↓
Verify Filesystem
      ↓
Fix Root Cause
      ↓
Restart Service
      ↓
Validate
```

---

## Key Learnings

- Always start with service status.
- Logs provide the most valuable troubleshooting information.
- Configuration and filesystem mismatches are common causes of failures.
- Never guess; verify each layer systematically.
- Follow a repeatable troubleshooting workflow.