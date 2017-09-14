#!/bin/bash -

export LCS_DEBUG="ON"

. lib/LCSbashlib.sh

input="abc###"
input="abcdef"
input="abc123"
input="abc def"
input="@#$%"

if func_check_input_is_alphanum "$input"; then
	echo "Input is valid"
else
	echo "Input is invalid"
fi