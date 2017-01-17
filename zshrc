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


alias ls="ls -G"
alias gitlast="git for-each-ref --sort=-committerdate refs/heads/"
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export EDITOR=/usr/bin/vim
export HISTIGNORE="&:ls:[bf]g:exit"
export CDPATH=".:~:~/Dev:~/Downloads"
alias bower='noglob bower'
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig
export PATH="$HOME/.cargo/env:/usr/local/sbin:$PATH"
export HISTSIZE=10000
export SAVEHIST=$HISTSIZE
source /opt/nyt/sbx/.nyt

