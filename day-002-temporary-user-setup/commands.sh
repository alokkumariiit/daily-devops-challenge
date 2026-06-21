# Create temporary user
sudo useradd -e 2026-08-01 alok

# Set password
sudo passwd alok

# Switch user
su - alok

# Check expiry details
sudo chage -l alok

# Change expiry date
sudo chage -E 2026-12-31 alok

# Create user with home directory
sudo useradd -m username