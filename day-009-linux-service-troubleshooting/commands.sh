# Check service status
sudo systemctl status service-name

# Start service
sudo systemctl start service-name

# Restart service
sudo systemctl restart service-name

# Detailed status
sudo systemctl status service-name -l

# View logs
sudo journalctl -xeu service-name --no-pager

# Search configuration
sudo grep -R keyword /etc/

# Verify files/directories
ls -l
ls -ld

# Create symbolic link
sudo ln -s source_path destination_path