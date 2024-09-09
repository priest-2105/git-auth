#!/bin/bash

# Create the necessary scripts directory
mkdir -p ~/.git-account-switcher

# Download the login/logout scripts
curl -o ~/.git-account-switcher/git-account-login.sh https://raw.githubusercontent.com/your-repo/git-account-switcher/main/git-account-login.sh
curl -o ~/.git-account-switcher/git-account-logout.sh https://raw.githubusercontent.com/your-repo/git-account-switcher/main/git-account-logout.sh

# Make the scripts executable
chmod +x ~/.git-account-switcher/git-account-login.sh
chmod +x ~/.git-account-switcher/git-account-logout.sh

# Add Git aliases
git config --global alias.account-login '!sh ~/.git-account-switcher/git-account-login.sh'
git config --global alias.account-logout '!sh ~/.git-account-switcher/git-account-logout.sh'

echo "Git account switcher setup complete!"
