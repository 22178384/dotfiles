# ~/.bashrc
export CLICOLOR=1
export EDITOR=vim

alias ll='ls -lah'
alias gs='git status'
alias gd='git diff'
alias gp='git pull --ff-only'

# 进入目录即列文件
cd() { builtin cd "$@" && ls; }
