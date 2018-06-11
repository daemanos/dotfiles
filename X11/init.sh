PATH="$HOME/bin:$PATH"

mpd &
sxhkd &
xrdb -merge ~/.Xresources &
xsetroot -cursor_name left_ptr &
xflux -z 14623 &
xautolock -locker $HOME/.local/bin/lock -corners -000 &
hsetroot -fill ~/img/desktop
compton -b
unclutter --timeout 3 --fork
$HOME/.config/panel/panel &
$HOME/.xinitrc.local &

exec bspwm
