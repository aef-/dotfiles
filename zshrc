source "${HOME}/.zgen/zgen.zsh"
if ! zgen saved; then
    zgen prezto editor key-bindings 'vi'
    zgen prezto prompt theme 'spidergiggle'

    # prezto and modules
    zgen prezto
    zgen prezto git
    zgen prezto command-not-found
    zgen prezto syntax-highlighting
    zgen prezto history-substring-search
fi


export EDITOR=/usr/bin/vim
export HISTIGNORE="&:ls:[bf]g:exit"
export CDPATH=".:~:~/Dev:~/Downloads"
alias bower='noglob bower'
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig
export PATH="/usr/local/sbin:$PATH"
source /opt/nyt/sbx/.nyt
