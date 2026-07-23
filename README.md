# Dotfiles

Install homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

Then install all packages using `brew`.

```bash
# install the "formula" packages first
brew install nvim nvm tmux python pipx docker docker-compose gh fzf jq lazygit libpq pnpm ripgrep raine/workmux/wormux tree-sitter rust
# install casks
brew install --cask claude@latest codex cloudflare-warp doll firefox font-fira-code font-fira-code-nerd-font google-chrome obsidian rectangle slack zoom
```

Alacritty will/is deprecated on homebrew. Install from cargo.

```bash
cargo install alacritty
```

Copy config files as needed.

```bash
cd dotfiles
cp -r .claude ~/.claude
cp -r .codex ~/.codex
cp -r .config ~/.config
cp -r .tmux.conf ~/.tmux.conf
cp -r .zprofile ~/.zprofile
cp -r .zshrc ~/.zshrc
```
