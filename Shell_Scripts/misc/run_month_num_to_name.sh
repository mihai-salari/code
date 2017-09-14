#!/bin/bash -

. month_num_to_name.sh

if [ $# -eq 1 ]; then
	echo $1
	set -- $(echo $1 | sed 's/[\/\-]/ /g')
	echo $1
fi

if [ $# -ne 3 ]; then
	echo "Usage: ${0:2} month day year" >&2
	echo "Formats are August 3 1962 and 8 3 1962" >&2
	exit 1
fi

if [ $3 -le 99 ]; then
	echo "${0:2}: expected 4-digit year value" >&2
	exit 1
fi

# Strips out all digits, test whether it is blank with -z
# If it is blank, then the month is digit and we call the function directly
if [ -z $(echo $1 | sed 's/[[:digit:]]//g') ]; then
	month_num_to_name $1
else
	# We got a month string...
	# Normalize the first 3 letters, first upper and then lowercase
	#month="$(echo $1 | cut -c1 | tr '[:lower:]' '[:upper:]')"
	# Using POSIX method below
	month="$(echo ${1%${1#?}} | tr '[:lower:]' '[:upper:]')"
	month="$month$(echo $1 | cut -c2-3 | tr '[:upper:]' '[:lower:]')"
fi

echo $month $2 $3

exit 0