# Open SSH configuration
sudo nano /etc/ssh/sshd_config

# Disable direct root login
PermitRootLogin no

# Restart SSH service
sudo systemctl restart sshd

# Check SSH service status
sudo systemctl status sshd