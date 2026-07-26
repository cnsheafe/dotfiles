# Dotfiles

Install homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

Then install all packages using `brew`.

install the "formula" packages first
```bash
brew install nvim nvm tmux python pipx docker docker-compose gh fzf jq lazygit libpq pnpm ripgrep raine/workmux/workmux tree-sitter rust
```

install casks
```bash
brew install --cask claude@latest codex cloudflare-warp doll firefox font-fira-code font-fira-code-nerd-font google-chrome obsidian rectangle slack zoom
```

Alacritty will/is deprecated on homebrew. Install from cargo.

```bash
cargo install alacritty
```

Copy config files as needed.

```bash
cp -R .claude/. ~/.claude/
cp -R .codex/. ~/.codex/
cp -R .config/. ~/.config/
cp .tmux.conf ~/.tmux.conf
cp .zprofile ~/.zprofile
cp .zshrc ~/.zshrc
```

Configure git to support branch stacking

```bash
git config --global --add --bool rebase.updateRefs true
```

disable macos key repeat

```bash
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
```
