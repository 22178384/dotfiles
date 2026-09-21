#!/usr/bin/env bash
# 常用 shell 别名与函数集合。用法：source ~/.aliases.sh

# ---- 目录 / 文件 ----
alias ll='ls -lh'
alias la='ls -lAh'
alias ..='cd ..'
alias ...='cd ../..'

# ---- Git ----
alias gs='git status -sb'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate -n 20'

# ---- 系统 ----
alias df='df -h'
alias free='free -h'
alias psg='ps aux | grep -i'

# ---- 函数 ----

# 在指定目录里按名称递归查找文件
ff() {
  local name="$1" dir="${2:-.}"
  find "$dir" -iname "*${name}*" -not -path '*/.git/*' 2>/dev/null
}

# 查看指定端口被哪个进程占用
port() {
  local p="$1"
  (command -v lsof >/dev/null && lsof -iTCP:"$p" -sTCP:LISTEN) \
    || (command -v netstat >/dev/null && netstat -ano | grep ":$p ")
}

# 解压：自动识别常见格式
extract() {
  local f="$1"
  case "$f" in
    *.tar.gz|*.tgz) tar -xzf "$f" ;;
    *.tar.bz2)      tar -xjf "$f" ;;
    *.zip)          command -v unzip >/dev/null && unzip "$f" || tar -xf "$f" ;;
    *.7z)           7z x "$f" ;;
    *) echo "不支持的格式: $f" ;;
  esac
}
