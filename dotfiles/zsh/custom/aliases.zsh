# vim:set ft=bash:

# unix
if [[ "$(uname)" = "Darwin" ]]; then
    alias ls='ls -Ghv'
    alias ll='ls -l'
    alias la='ls -A'
    alias grep='grep --color -s'
    alias df='df -h'
else
    alias ls='ls --color -hv'
    alias ll='ls --color -l'
    alias la='ls --color -A'
    alias grep='grep --color -s'
    alias df='df -h'
fi

# clipboard
alias copy="xclip -selection clipboard -in"
alias paste="xclip -selection clipboard -out"

# git
alias gil='git log --graph --abbrev-commit --stat -C --decorate --date=local'
alias gils="git log --graph --abbrev-commit --pretty=format:'%C(red)%h%C(reset) -%C(yellow)%d%C(reset) %s %C(green)(%cr) %C(bold blue)<%an>%C(reset)' -C --decorate --date=local"
alias gis='git status'
alias gid='git diff -C --date=local'
alias giw='git show -C --date=local --decorate'
alias gic='git checkout'

# rg
alias s='rg -S'

# docker
alias docker-ip="docker inspect -f '{{ .NetworkSettings.IPAddress }}'"

# feh
alias feh="feh --scale-down --auto-zoom --draw-filename --draw-tinted"

# wm
alias hc="herbstclient"
