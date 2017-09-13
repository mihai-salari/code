#!/bin/bash -

# Ensures that input consists only of alphabetical and numeric characters.

valid_alphanum() {
	# Validate arg: return 0 if all upper+lower+digits; 1 otherwise
	
	# Remove all unacceptable ASCII characters
	valid_chars="$(echo $1 | sed -e 's/[^[:alnum:]]//g')"
	
	if [ "$valid_chars" = "$1" ]; then
		return 0
	else
		return 1
	fi
}