# Connect to server
ssh username@ip-address

# Generate SSH key pair
ssh-keygen -t rsa

# Copy public key to remote server
ssh-copy-id app@server

# Verify keys
ls -la ~/.ssh

# View public key
cat ~/.ssh/id_rsa.pub

# Passwordless login
ssh app@server