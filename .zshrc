# Created by oLuqueJs in Debian Trixie

# < Figlet >
figlet -f sub-zero "Debian" | lolcat
 
# < Paths >
typeset -U path
path=("$HOME/.local/bin" "$HOME/bin" $path)
export PATH

# < NODE >
# nvm
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME/global/bin:$PATH"

# < Starship >
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

# < Extra >
alias ls='ls --color=auto'

# < Sdkman >
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
