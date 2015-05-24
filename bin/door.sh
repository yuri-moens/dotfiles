#!/bin/bash
#
# $HOME/bin/door.sh
#
# Requires openbsd netcat
# Arch packages: openbsd-netcat
#
# Opens the door at school when inside.

echo o | nc -q 1 d.isw 3333
