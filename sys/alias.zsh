# file/directory operations
alias mkdir='mkdir -pv'
alias ls='ls -hHF --color --group-directories-first'
alias la='ls -A'
alias ll='ls -l'
alias lal='ls -Al'
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
alias pac='pacaur --noedit'
alias pacs='pac -S'
alias paci='pac -Si'
alias pacr='pac -R'
alias pacq='pac -Q'
alias pacls='pac -Ql'
alias pacil='pac -Qi'
alias pacu='pac -Syu'
alias paco='pac -Qqdt'
alias pacro='pac -R $(paco)'
alias pacad='pac -D --asexplicit'

# misc system commands
alias ping='ping -c 5'
alias dmesg='dmesg -HL'
alias grep='grep --color'
alias more='less' # more is less, after all
alias cls=' echo -ne "\033c"' # clear the screen
alias handbrake='HandBrakeCLI' # I love you handbrake, but wtf
