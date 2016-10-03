source ~/Dev/dotfiles/antigen/antigen.zsh

export EDITOR=/usr/bin/vim
export HISTIGNORE="&:ls:[bf]g:exit"
export CDPATH=".:~:~/Dev:~/Downloads"
alias bower='noglob bower'

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig
export PATH="/usr/local/sbin:$PATH"
source /opt/nyt/sbx/.nyt
export HOMEBREW_GITHUB_API_TOKEN=077504077f29c4bdd86a0e8206fedf267a96ccb2

antigen use oh-my-zsh
antigen bundle git
antigen bundle vi-mode
antigen bundle zsh-history-substring-search

antigen theme clean
antigen apply
