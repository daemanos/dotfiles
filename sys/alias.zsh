# file/directory operations
alias mkdir='mkdir -pv'
alias ls='ls -hF --color --group-directories-first'
alias la='ls -A'
alias ll='ls -l'
alias lf='ls -1 | wc -1'
alias untar='tar -xvf'

# for safety
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# pacman
alias pacs='pacaur -S'
alias pacu='pacaur -U'
alias pacq='pacaur -Q'
alias pacr='pacaur -R'
alias pacro='[[ $(pacaur -Qqdt) -eq "" ]] && echo nothing to do || pacaur -Rs $(pacaur -Qqdt)'

# misc system commands
alias ping='ping -c 5'
alias dmesg='dmesg -HL'
alias grep='grep --color'
alias more='less' # more is less, after all
alias cls=' echo -ne "\033c"' # clear the screen
