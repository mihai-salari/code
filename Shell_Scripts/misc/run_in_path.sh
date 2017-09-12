#!/bin/bash -

# Supporting script to run in_path.sh

source in_path.sh

if [ $# -ne 1 ] ; then
	echo "Usage: ${0:2} command" >&2
	exit 1
fi

check_for_cmd_in_path "$1"

case $? in
	0 ) echo "$1 found in PATH" ;;
	1 ) echo "$1 not found or not executable" ;;
	2 ) echo "$1 not found in PATH" ;;
esac

exit 0