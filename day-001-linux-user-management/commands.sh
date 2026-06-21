# View available shells
cat /etc/shells

# Create user with non-interactive shell
useradd -s /usr/sbin/nologin testuser

# Create user then modify shell
adduser testuser
usermod -s /usr/sbin/nologin testuser

# Direct creation
adduser --shell /usr/sbin/nologin testuser

# Verify
grep testuser /etc/passwd