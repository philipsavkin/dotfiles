export EDITOR=nvim

alias ls='ls --color=auto'
alias la='ls -A --color=auto'
alias l='ls -lhsF --color=auto'
alias ll='ls -lAhsF --color=auto'

# -------------------------------------------
# 1. Edit Command Buffer
# -------------------------------------------
# Open the current command in your $EDITOR (e.g., neovim)
# Press Ctrl+X followed by Ctrl+E to trigger
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line

setopt autocd
setopt appendhistory
setopt sharehistory

eval "$(starship init zsh)"

# this is for npm
export DISABLE_OPENCOLLECTIVE=1
export ADBLOCK=1

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vi="nvim"
alias k="kubectl"
alias pn="pnpm"
alias g="git"

# -------------------------------------------
# 5. Suffix Aliases - Open Files by Extension
# -------------------------------------------
# Just type the filename to open it with the associated program
alias -s json=jless
alias -s md='$EDITOR'
alias -s go='$EDITOR'
alias -s txt='$EDITOR'
alias -s py='$EDITOR'
alias -s js='$EDITOR'
alias -s ts='$EDITOR'


eval "$(atuin init zsh --disable-up-arrow)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/philip/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/philip/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/philip/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/philip/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/opt/homebrew/bin:/opt/homebrew/opt/node@24/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/philip/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# pnpm end

# bun completions
[ -s "/Users/philip/.bun/_bun" ] && source "/Users/philip/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


dkrm() {
  for id in "$@"; do
    docker stop "$id" && docker rm "$id"
  done
}

