#!/bin/bash
#
# $HOME/bin/screen.sh
#
# scrot wrapper to quickly save screenshots

directory=$HOME/pictures/screens/

if [ ! -d "$directory" ]; then
  mkdir -p $directory
fi

case "$1" in
    root)
	scrot '%F-%T.png' -e 'mv $f '$directory''
        ;;
    active)
       	scrot -u '%F-%T.png' -e 'mv $f '$directory''
        ;;
    *)
        echo "Usage: $0 {root|active}"
        exit 2
esac

exit 0

