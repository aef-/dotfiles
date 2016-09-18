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

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM
export WORKON_HOME=$HOME/.virtualenvs
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig
export PATH="/usr/local/sbin:$PATH"
if [ -e /Users/adrian/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/adrian/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
