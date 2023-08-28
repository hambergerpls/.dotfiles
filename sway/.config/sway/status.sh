# The Sway configuration file in ~/.config/sway/config calls this script.
# You should see changes to the status bar after saving this script.
# If not, do "killall swaybar" and $mod+Shift+c to reload the configuration.

# Produces "21 days", for example
uptime_formatted=$(uptime | cut -d ',' -f1  | cut -d ' ' -f4,5)

# The abbreviated weekday (e.g., "Sat"), followed by the ISO-formatted date
# like 2018-10-06 and the time (e.g., 14:01)
date_formatted=$(date "+%a %F %H:%M:%S")

# Get the Linux version but remove the "-1-ARCH" part
#linux_version=$(uname -r | cut -d '-' -f1)

battery_percentage=$(cat /sys/class/power_supply/BAT0/capacity)

#cpu_usage=$(top -bn 2 | grep -F '%Cpu' | tail -n 4 | gawk '{print $2 $3}' | tr -s '\n\:\,[:alpha:]' ' ')

echo $uptime_formatted $battery_percentage% $date_formatted
