echo "Lets get brewing ☕️"

if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Installing Visual Studio Code..."
brew install --cask visual-studio-code

echo "Installing iTerm2..."
brew install --cask iterm2

echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing Firefox..."
brew install --cask firefox

echo "Installing Postman..."
brew install --cask postman

echo "Installing Rectangle window manager..."
brew install --cask rectangle

echo "Installing alt tab..."
brew install alt-tab

echo "Enjoy  ☕️"