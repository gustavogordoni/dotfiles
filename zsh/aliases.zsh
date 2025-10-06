# ALIAS

# File system
alias ls='eza -lh --group-directories-first --icons=auto'
alias lsa='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"
# alias cd="zd"

alias tree='eza --tree --icons --git'

# Directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Tools
alias d='docker'
alias r='rails'

# Git
alias g='git'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gcad='git commit -a --amend'

# Compression
compress() { tar -czf "${1%/}.tar.gz" "${1%/}"; }
alias decompress="tar -xzf"

alias pa="php artisan"
alias dc="docker compose"
alias sail="./vendor/bin/sail"
alias postgres='docker compose -f ~/dev/Containers/docker-compose-postgres.yml up'
alias mysql='docker compose -f ~/dev/Containers/docker-compose-mysql.yml up'
alias marp='docker run --rm --init -v $(pwd):/home/marp/app -e LANG=$LANG -e MARP_USER="$(id -u):$(id -g)" marpteam/marp-cli'
alias cbnew='/home/gordoni/dev/codeblocks-projects/cb_create_project.sh'
alias cbbuild='/home/gordoni/dev/codeblocks-projects/cb_build_run.sh'
alias cbmain='/home/gordoni/dev/dev/codeblocks-projects/cb_copy_main.sh'
alias nbbuild='/home/gordoni/dev/netbeans-projects/nb_build_run.sh'
alias c='clear'
alias e='exit'
alias python='python3'
alias ngrok='docker compose -f /home/gordoni/dev/Containers/ngrok/docker-compose.yml run --rm ngrok'
alias ngrok-static='docker compose -f /home/gordoni/dev/Containers/ngrok/docker-compose-static.yml run --rm ngrok'
alias scan='/home/gordoni/dev/pentest/scanweb.sh'
alias java-listar-versao='archlinux-java status'
alias java-alterar-versao='sudo archlinux-java set'
