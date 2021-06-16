# File/directory operations
alias mkdir='mkdir -pv'
alias ds='du -hs'
alias l='ls -hHF --color --group-directories-first'
alias la='l -A'
alias ll='l -l'
alias lal='l -Al'
alias lf='l -1 | wc -l'
lh() { du -h $1/* | sort -hr; }
alias ..='cd ..'
alias ...='cd ../..'
del() { mv -t $TRASH $1 }
empty() { rm -r $1 && mkdir $1 >/dev/null }
alias dus='du -hs $(find -mindepth 1 -maxdepth 1) 2>/dev/null | sort -hr'
alias fm="$FILE_MANAGER"
alias o="rifle"

# For safety
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'
alias rm='rm -I'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# Pacman
alias pacman='sudo pacman'
alias pacs='pacaur -S'
alias pacu='sudo pacman -U'
alias pacup='pacaur -Syu'
alias pacul='pacaur -S linux linux-headers'
alias pacr='sudo pacman -R'
alias pacd='sudo pacman -Rs'
alias pacq='pacman -Q'
pacls() { pacman -Ql $1 | sed -r "s/^$1 (.*)$/\1/g" ; }
alias paci='pacman -Qi'
alias paco='pacman -Qtdq'
alias pacoo='pacman -Qttdq'

# Git
eval "$(hub alias -s)"
alias gs='git status'
alias go='git commit'
alias gd='git diff'
alias ga='git add'
alias gcb='git checkout -b'

# Task
alias t='task'
alias ta='task add'
alias fin='task done'
alias tw='timew'

# Systemd
alias stl='sudo systemctl'
alias snow='sudo systemctl enable --now'
alias jtl='journalctl'

# OpenVPN
export OVPN_ROOT=/etc/openvpn
ovpn() {
    sudo openvpn "$OVPN_ROOT/$1.ovpn"
}

# Toilet
toilet_sample() {
    for fontfile in /usr/share/figlet/*; do
        fontname="$(basename ${fontfile%.tlf})"
        echo $fontname
        toilet -f $fontname $1
        echo
    done
}

# Misc. system commands
alias ping='ping -c 5'
alias dmesg='dmesg -HL'
alias cls=' echo -ne "\033c"' # clear the screen
alias svim='vim --servername'
alias clip='xclip -selection clipboard'
alias c="cd"
mc() { mkdir -p "$1" && cd "$1" ; }
alias e="$EDITOR"
alias ydl=youtube-dl
alias x='exit'
whee() { e "$(which $1)" }
alias lk='luakit'
