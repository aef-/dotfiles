if status is-interactive
    # Commands to run in interactive sessions can go here
    set PATH $PATH /usr/lib/psql12/bin
    set PATH $PATH $HOME/.local/bin
    set PATH $PATH $HOME/.mix/escripts
    set PATH $PATH $HOME/.cargo/env
    set PATH $PATH $HOME/.cargo/bin
    set PATH $PATH $HOME/Dev/rebar3
    ulimit -n 65536
    fzf --fish | source
end


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /usr/local/Caskroom/miniconda/base/bin/conda
    eval /usr/local/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

