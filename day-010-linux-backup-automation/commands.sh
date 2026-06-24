# Create directories
mkdir -p /archives

# Check zip
which zip

# Install zip
sudo yum install zip -y

# Generate SSH keys
ssh-keygen -t rsa -N ""

# Copy SSH key
ssh-copy-id user@server

# Create archive
zip -r backup.zip /var/www/html

# Transfer archive
scp backup.zip user@server:/archives/

# Make script executable
chmod +x backup.sh

# Run script
./backup.sh