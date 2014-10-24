# shortcuts for common superuser functionality
if [ $UID -ne 0 ]; then
    alias reboot='sudo systemctl reboot'
    alias poweroff='sudo systemctl poweroff'
    alias netctl='sudo netctl'
fi
