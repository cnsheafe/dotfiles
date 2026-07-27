# Dotfiles

Install homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

Then install all packages using `brew`.

install the "formula" packages first

```bash
brew install nvim nvm tmux python pipx docker docker-compose gh fzf jq lazygit libpq pnpm ripgrep raine/workmux/workmux tree-sitter rust rustup scdoc
```

install casks

```bash
brew install --cask claude@latest codex cloudflare-warp docker-desktop doll firefox font-fira-code font-fira-code-nerd-font google-chrome obsidian rectangle slack zoom
```

Build Alacritty from source - homebrew has deprecated install due to [signing/notary](https://github.com/alacritty/alacritty/issues/8749) issues.
Follow [build](https://github.com/alacritty/alacritty/blob/master/INSTALL.md#macos) and [post-build term instructions](https://github.com/alacritty/alacritty/blob/master/INSTALL.md#macos).

```bash
mkdir ~/alacritty && cd ~/alacritty
gh repo clone alacritty/alacritty
cd alacritty
make app
cp -r target/release/osx/Alacritty.app /Applications/
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

install npm with `nvm`

```bash
nvm install --lts
source ~/.zshrc
```

install nix https://nixos.org/download/

```bash
curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install | sh
```

install tmux package manager and install plugins

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cd ~/.tmux/plugins/tpm/bin && sh install_plugins
```

Configure git to support branch stacking

```bash
git config --global --add --bool rebase.updateRefs true
```

disable macos key repeat

```bash
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
```

## Troubleshooting neovim

Run `MasonLog` inside the neovim editor to debug failing package installs

## Troubleshooting tmux

If backspaces are registering as regular spaces, then the terminfo needs to be configured. Follow
[terminfo instructions](https://github.com/alacritty/alacritty/blob/master/INSTALL.md#terminfo).
