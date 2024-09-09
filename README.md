# Git Auth

This tool helps you easily switch between multiple GitHub accounts by automating login/logout using GitHub CLI and Git aliases.

## Setup Instructions

Follow these steps to set up the Git Auth on your system:

### 1. Clone this repository:

To download the tool, clone the repository using the following command:

```bash
git clone https://github.com/priest-2105/git-auth.git

```


## Run the setup script:

Navigate to the cloned repository and execute the setup script to configure everything:

```bash

cd git-account-switcher
bash setup.sh
```


## Use the following commands to switch accounts:

Once the setup is complete, you can use the following commands to switch between GitHub accounts:

```bash
git account-login
```


This will use the GitHub CLI to prompt for a login (either via web or the CLI directly).


## Requirements


Ensure that the following are installed and available on your system:

Git: The version control tool.

GitHub CLI (gh): Required for handling GitHub account logins.


## How It Works

Logout: Removes GitHub credentials from the Windows Credential Manager (or system credential storage).

Login: Initiates the GitHub CLI login process, allowing you to sign in to a different account.


## Issues and Contributions

Feel free to open issues or contribute to the project by submitting pull requests. We welcome any feedback or improvements!

