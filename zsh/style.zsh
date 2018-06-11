source $HOME/.config/colors/colors.sh
autoload colors && colors
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
PROMPT="%{$fg_bold[white]%}%(1j $fg[green] )>%{$fg[white]%}%(?  $fg[red])>%{$reset_color%} "
RPROMPT="%{$fg_bold[black]%}%m:%~%{$reset_color%}"
if [ -n "$TMUX" ]; then
    export TERM=screen-256color
else
    export TERM=xterm-256color
fi
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
export _JAVA_AWT_WM_NONREPARENTING=1
