ZSH=$HOME/.oh-my-zsh

#ZSH_THEME="nebirhos"
ZSH_THEME="robbyrussell"

#plugins=(git github heroku rvm rails)
plugins=(git)

source $ZSH/oh-my-zsh.sh
export EDITOR=/usr/bin/vim
export HISTIGNORE="&:ls:[bf]g:exit"
export CDPATH=".:~:~/Dev:~/Downloads"

alias bower='noglob bower'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM
#PROMPT='%{$fg[white]%}[ %n@%m%{$fg[cyan]%} %2c %{$reset_color%}$(rvm-prompt) %{$fg[white]%}] %{$reset_color%}'
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/activate.sh
