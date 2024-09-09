#!/bin/bash

#  Adding Git aliases to global config
echo "Adding Git aliases for account login/logout..."
git config --global alias.account-logout '!sh ~/git-account-logout.sh'
git config --global alias.account-login '!sh ~/git-account-login.sh'

#  Creating 'git-account-login.sh' file
echo "Creating git-account-login.sh script..."
cat <<EOL > ~/git-account-login.sh
#!/bin/bash
# Use Windows Command Prompt to trigger GitHub CLI login
winpty gh auth login
echo "GitHub account login triggered via GitHub CLI."
EOL

# Creating 'git-account-logout.sh' file
echo "Creating git-account-logout.sh script..."
cat <<EOL > ~/git-account-logout.sh
#!/bin/bash
# Delete GitHub credentials from Windows Credential Manager
cmdkey /delete:git:https://github.com
echo "GitHub credentials removed from Windows Credential Manager."
EOL

#  Making the scripts executable
chmod +x ~/git-account-login.sh
chmod +x ~/git-account-logout.sh

# GitHub CLI installation Verification
if ! command -v gh &> /dev/null
then
    echo "GitHub CLI (gh) not found. Please install GitHub CLI to continue."
    exit
fi

echo "Setup completed successfully! You can now use git account-login and git account-logout commands."
