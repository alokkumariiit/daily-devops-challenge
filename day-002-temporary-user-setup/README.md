# Day 2 - Temporary User Setup with Expiry

## Goal

Create a temporary Linux user account that automatically expires after a specified date.

## Why Use Temporary Users?

Temporary users are useful for:

- Interns
- Contractors
- Vendors
- Short-term project access

The account automatically becomes inaccessible after the expiry date.

---

## Create User with Expiry Date

```bash
sudo useradd -e 2026-08-01 alok
```

### Explanation

- `sudo` → Run command as administrator
- `useradd` → Create a new user
- `-e` → Specify account expiry date
- `2026-08-01` → Expiry date (YYYY-MM-DD)
- `alok` → Username

---

## Set Password

```bash
sudo passwd alok
```

---

## Switch User

```bash
su - alok
```

### Explanation

- `su` → Switch user
- `-` → Start a full login shell
- `alok` → Username

---

## Check User Expiry Details

```bash
sudo chage -l alok
```

### Sample Output

```text
Account expires : Aug 01, 2026
Password expires : never
Password inactive : never
```

---

## Change Expiry Date

```bash
sudo chage -E 2026-12-31 alok
```

### Explanation

- `chage` → Change aging information
- `-E` → Set account expiry date

---

## Automatically Create Home Directory

```bash
sudo useradd -m username
```

### Explanation

- `-m` creates a home directory automatically.

---

## Key Learnings

- Temporary accounts can be created using `useradd -e`.
- User expiry information can be viewed using `chage -l`.
- Expiry dates can be modified using `chage -E`.
- Temporary users are useful for short-term access management.
- Linux can automatically disable access after the expiry date.