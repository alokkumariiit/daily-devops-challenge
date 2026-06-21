# Install cron
sudo apt install -y cron

# RHEL/CentOS
sudo yum install -y cronie

# Enable service
sudo systemctl enable crond

# Start service
sudo systemctl start crond

# Create cron job
sudo crontab -e

# View cron jobs
sudo crontab -l

# Check service
sudo systemctl status crond