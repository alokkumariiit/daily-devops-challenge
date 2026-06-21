# Day 4 - Script Execution Permissions

## Goal

Understand Linux file permissions and how to make scripts executable.

## File Permissions in Linux

Every file has permissions for:

- Owner
- Group
- Others

Check permissions using:

```bash
ls -l
```

Example:

```text
-rw-r--r--
```

Breakdown:

```text
-rw- r-- r--
 │    │   │
 │    │   └── Others
 │    └────── Group
 └────────── Owner
```

## Permission Types

| Permission | Symbol | Value |
|------------|--------|--------|
| Read | r | 4 |
| Write | w | 2 |
| Execute | x | 1 |

## Common Permission Values

| Value | Permission |
|---------|------------|
| 777 | rwx rwx rwx |
| 755 | rwx r-x r-x |
| 644 | rw- r-- r-- |
| 700 | rwx --- --- |

## Execute Permission

To run a shell script, execute permission is required.

Example:

```bash
chmod 755 script.sh
```

or

```bash
sudo chmod 755 script.sh
```

Meaning of 755:

```text
Owner  = 7 = rwx
Group  = 5 = r-x
Others = 5 = r-x
```

## Example

Create a script:

```bash
nano hello.sh
```

Content:

```bash
#!/bin/bash
echo "Hello DevOps"
```

Give execute permission:

```bash
chmod 755 hello.sh
```

Run:

```bash
./hello.sh
```

## Key Learnings

- Linux permissions are divided into Owner, Group, and Others.
- Read = 4, Write = 2, Execute = 1.
- Execute permission is required to run scripts.
- `ls -l` displays file permissions.
- `chmod` is used to change permissions.