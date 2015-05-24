#!/bin/bash

case "$1" in
    root)
	scrot '%F-%T.png' -e 'mv $f /home/ymo/pictures/screens/'
        ;;
    active)
       	scrot -u '%F-%T.png' -e 'mv $f /home/ymo/pictures/screens/'
        ;;
    *)
        echo "Usage: $0 {root|active}"
        exit 2
esac

exit 0

