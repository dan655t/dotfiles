if ! command -v brew >/dev/null; then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew tap homebrew/bundle
fi

echo "Updating Homebrew..."
brew update
brew bundle --file=$HOME/dotfiles/Brewfile

env RCRC=$HOME/dotfiles/rcrc rcup

ln -fs "$HOME/dotfiles/vscode/settings.json" "$HOME/Library/Application Support/Code/User"