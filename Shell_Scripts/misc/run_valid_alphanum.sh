#!/bin/bash -

# run script for valid_alphanum.sh

source valid_alphanum.sh

/bin/echo -n "Enter input: "
read input

# Input validation
if ! valid_alphanum "$input"; then
	echo "Please enter only letters and numbers." >&2
	exit 1
else
	echo "Input is valid."
fi

exit 0