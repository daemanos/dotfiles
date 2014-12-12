declare -A SWITCHES

SWITCHES[MEDIA_KEYS]=$(xmodmap -pke | grep XF86Audio)
SWITCHES[SLEEP_KEY]=$(xmodmap -pke | grep XF86Sleep)
SWITCHES[BATTERY]=$(ls /sys/class/power_supply | grep BAT)
