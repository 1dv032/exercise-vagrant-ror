
#!bin/bash

# Update & Install
echo "Updating and installing system packages..."
# redirect messages to dev/null (less chatty)
apt-get update >/dev/null 2>&1
apt-get install -y build-essential git curl nodejs
