autoload colors && colors
PROMPT="%{$fg_bold[white]%}[%n@%m %1~]%#%{$reset_color%} "
RPROMPT="%(?..[%{$fg[red]%}%?%{$reset_color%}])"
