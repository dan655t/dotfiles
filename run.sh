if ! command -v rcup &> /dev/null
then
    echo "rcup could not be found"
    echo "please run the following:"
    echo ""
    echo "brew install rcm"
    exit
fi

ln -fs "$HOME/dotfiles/vscode/settings.json" "$HOME/Library/Application Support/Code/User"

source rcrc
rcup