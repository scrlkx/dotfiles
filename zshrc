source /home/dani/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle command-not-found
antigen bundle extract
antigen bundle git
antigen bundle sudo
antigen bundle z
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# workaround for https://github.com/zsh-users/antigen/issues/675
THEME=robbyrussell
antigen list | grep $THEME; if [ $? -ne 0 ]; then antigen theme $THEME; fi

if [[ -a $HOME/.localrc ]]
then
  source $HOME/.localrc
fi

if [[ -a $HOME/.aliases ]]
then
  source $HOME/.aliases
fi

if [[ -a $HOME/.functions ]]
then
  source $HOME/.functions
fi

antigen apply
