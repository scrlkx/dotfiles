# Sources Powerlevel10k Instant Prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/home/linuxbrew/.linuxbrew/bin"

export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_PREFIX=/home/linuxbrew/.linuxbrew

# Setup nvm files including
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Source local configurations
source $HOME/.aliases
source $HOME/.localrc

# Source Antigen
source $HOMEBREW_PREFIX/share/antigen/antigen.zsh

# Antigen bundles setup
antigen use oh-my-zsh
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

antigen apply

# Sources Powerlevel10k
source $HOME/.p10k.zsh
source $HOME/powerlevel10k/powerlevel10k.zsh-theme
