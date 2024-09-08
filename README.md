# Clone Repo
```
git clone git@github.com:Aviii06/.dotfiles.git ~/.dotfiles
```


# Install brew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> $HOME/.zshrc

```

# Install nvm
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

nvm install 16
nvm use 16
```

# Install packages
```
brew install neovim fzf lsd wget gpg2 bat cmake ripgrep delta
```

```
brew install --cask alacritty
```

Install fzf-git.

# Use symlinks in proper directories
```
ln -s ~/.dotfiles/.config/* ~/.config/
ln -s ~/.dotfiles/.zshrc ~/
ln -s ~/.dotfiles/.tmux.conf ~/
```

Source zshrc and tmux config.

