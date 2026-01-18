# Powerlevel10k Instant Prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/home/linuxbrew/.linuxbrew/bin"

export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_PREFIX=/home/linuxbrew/.linuxbrew

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

source "${HOME}/.zgenom/zgenom.zsh"

if ! zgenom saved; then
  zgenom oh-my-zsh

  zgenom load ohmyzsh/ohmyzsh plugins/aliases
  zgenom load ohmyzsh/ohmyzsh plugins/alias-finder
  zgenom load ohmyzsh/ohmyzsh plugins/command-not-found
  zgenom load ohmyzsh/ohmyzsh plugins/docker
  zgenom load ohmyzsh/ohmyzsh plugins/docker-compose
  zgenom load ohmyzsh/ohmyzsh plugins/extract
  zgenom load ohmyzsh/ohmyzsh plugins/git
  zgenom load ohmyzsh/ohmyzsh plugins/git-flow
  zgenom load ohmyzsh/ohmyzsh plugins/npm
  zgenom load ohmyzsh/ohmyzsh plugins/nvm
  zgenom load ohmyzsh/ohmyzsh plugins/sudo
  zgenom load ohmyzsh/ohmyzsh plugins/z
  zgenom load zsh-users/zsh-autosuggestions
  zgenom load zsh-users/zsh-syntax-highlighting

  zgenom save
fi

# Source Powerlevel10k
source $HOME/.p10k.zsh
source $HOME/powerlevel10k/powerlevel10k.zsh-theme

# Source local files
source $HOME/.aliases
source $HOME/.localrc

docker_kill() {
  docker ps -a -q | xargs -r docker stop
}
