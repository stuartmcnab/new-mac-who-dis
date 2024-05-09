#!/bin/bash

echo "New mac, who dis?"

current_user=$(logname)

echo "Adding user: $current_user to the sudoers list"
if [[ $(id -u) -ne 0 ]]; then
    echo "This script must be run as root."
    exit 1
fi

echo "$current_user ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers > /dev/null

echo "User $current_user added to sudoers list."


echo "Installing Xcode Command Line Tools..."
xcode-select --install

echo "Installing Node.js..."
nvm install node

echo "Installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Complete!"

