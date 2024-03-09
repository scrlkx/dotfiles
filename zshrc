# Enable Powerlevel10k instant prompt if it's available
if [[ -f "$HOME/.p10k.zsh" ]]; then
    if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
        source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
    fi
fi

# Set up local bin directory
mkdir -p $HOME/.local/bin
export PATH="$PATH:$HOME/.local/bin"

# Downloads Antigen if it doens't exist yet
[[ -f $HOME/antigen.zsh ]] || curl -L git.io/antigen > $HOME/antigen.zsh

# Source Antigen
source $HOME/antigen.zsh

# Use oh-my-zsh via Antigen
antigen use oh-my-zsh

# Bundle configurations
antigen bundle aliases
antigen bundle alias-finder
antigen bundle command-not-found
antigen bundle docker
antigen bundle extract
antigen bundle git
antigen bundle git-flow
antigen bundle npm
antigen bundle nvm
antigen bundle sudo
antigen bundle z
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Source local configurations
[[ ! -f $HOME/.localrc ]] || source $HOME/.localrc
[[ ! -f $HOME/.aliases ]] || source $HOME/.aliases

# Sets up nvm if it's available
if command -v nvm &> /dev/null; then
    export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
fi

# Initialize Antigen
antigen apply

# Loads last Powerlevel10k parts when it's avilable
if [[ -f "$HOME/.p10k.zsh" ]]; then
    source $HOME/.p10k.zsh
    source $HOME/powerlevel10k/powerlevel10k.zsh-theme
fi
