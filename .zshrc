# install nvm first: brew install nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# install pipx first, then install powerline-shell
# brew install pipx
# pipx install powerline-shell
export PATH="$PATH:/Users/cnsheafe/Library/Python/3.9/bin"

function powerline_precmd() {
    PS1="$(powerline-shell --shell zsh $?)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" -a -x "$(command -v powerline-shell)" ]; then
    install_powerline_precmd
fi

export EDITOR=nvim

# install workmux first: brew install raine/workmux/workmux
eval "$(workmux completions zsh)"
alias wm='workmux'

# install codex first: brew install --cask codex
eval "$(codex completion zsh)"

export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/homebrew/opt/libpg/bin:$PATH"
