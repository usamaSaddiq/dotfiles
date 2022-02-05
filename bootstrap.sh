#### Bootstrap script
#### Only meant to be ever run once.

echo
echo "Setting up your development environment..."
echo "Checking if brew exists..."

if ! type "brew" > /dev/null; then
  echo "Couldn't find brew. Installing via sh -c 'curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)'"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "brew executable found!"
echo "Running 'brew bundle' on the Brewfile"

brew bundle

echo "Successfully installed brew dependencies."

echo
echo "Now installing oh-my-zsh..."
echo "Please note you might need to update the remote url if it's changed since the time you last installed."

echo "ZSH will be installed at ~/dotfiles/.oh-my-zsh"

echo "Checking if $HOME/oh-my-zsh/ exists..."

if [ ! -d "$HOME/oh-my-zsh/" ]; then
  echo "$HOME/dotfiles/oh-my-zsh/ not found, installing oh-my-zsh using  using 'sh -c curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh'"
  
  ZSH="$HOME/oh-my-zsh" sh -c \
    "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  
  echo "Successfully installed ZSH"
fi

echo "$HOME/oh-my-zsh/ already exists!"
echo
echo "Now load all your zsh files by running..."
echo
echo "source ~/.zsrhc"
