# Use powerline
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
# if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#   source /usr/share/zsh/manjaro-zsh-prompt
# fi
#
bindkey -v

source <(kubectl completion zsh)
source <(helm completion zsh)

# fnm
FNM_PATH="/home/remi/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

# pnpm
export PNPM_HOME="/home/remi/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export EDITOR='nvim'

eval "$(starship init zsh)"

alias ls="exa"
alias ll="exa -l"
alias la="exa -a"

alias v="nvim"
alias nd="nvim -d"

alias k="kubectl"
alias kx="kubectx"
alias kn="kubens"

eval "$(zoxide init zsh)"


