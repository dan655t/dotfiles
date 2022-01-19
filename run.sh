if ! command -v brew >/dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew tap homebrew/bundle
fi

echo "Updating Homebrew..."
brew update
brew bundle --file=$HOME/dotfiles/Brewfile

rm -rf Brewfile.lock.json

env RCRC=$HOME/dotfiles/rcrc rcup

ln -fs "$HOME/dotfiles/vscode/settings.json" "$HOME/Library/Application Support/Code/User"