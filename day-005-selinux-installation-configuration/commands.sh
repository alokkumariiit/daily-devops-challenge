# Check SELinux status
sestatus

# Check current mode
getenforce

# Switch to Permissive mode
sudo setenforce 0

# Switch to Enforcing mode
sudo setenforce 1

# Edit SELinux configuration
sudo vi /etc/selinux/config