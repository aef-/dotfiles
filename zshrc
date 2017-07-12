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
alias vim="nvim"
alias gitlast="git for-each-ref --sort=-committerdate refs/heads/"
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export EDITOR=/usr/bin/vim
export HISTIGNORE="&:ls:[bf]g:exit"
export CDPATH=".:~:~/Dev:~/Downloads"
alias bower='noglob bower'
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig
export PATH="$HOME/.cargo/env:/usr/local/sbin:$PATH"
export HISTSIZE=10000
export SAVEHIST=$HISTSIZE
source /opt/nyt/sbx/.nyt


export GOROOT=/usr/local/go/
export GOPATH=/Users/207751/nyt/go-dev
export CGO_CPPFLAGS="$CGO_CPPFLAGS -I /Users/207751/Dev/nytcookie-go/c_nytcookie"
export CGO_LDFLAGS="$CGO_LDFLAGS -L /Users/207751/Dev/nytcookie-go"
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:/Users/207751/Dev/nytcookie-go"
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
