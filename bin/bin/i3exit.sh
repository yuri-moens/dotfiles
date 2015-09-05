#!/bin/sh
#
# $HOME/bin/i3exit.sh
#
# Handle the system state menu.

case "$1" in
    lock)
        ~/bin/lock.sh
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        ~/bin/lock.sh && systemctl suspend
        ;;
    hibernate)
        ~/bin/lock.sh && systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
