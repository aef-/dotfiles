source "${HOME}/.zgen/zgen.zsh"

#zgen prezto editor key-bindings 'vim'
zgen prezto prompt theme 'paradox'

# prezto and modules
zgen prezto
zgen prezto git
zgen prezto command-not-found
zgen prezto syntax-highlighting
zgen prezto history-substring-search

export EDITOR=/usr/bin/vim
export HISTIGNORE="&:ls:[bf]g:exit"
export CDPATH=".:~:~/Dev:~/Downloads"
alias bower='noglob bower'
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig
export PATH="/usr/local/sbin:$PATH"
source /opt/nyt/sbx/.nyt
