#!/bin/bash -

# Ensures that input consists only of alphabetical and numeric characters.

valid_alphanum() {
	# Validate arg: return 0 if all upper+lower+digits; 1 otherwise
	
	# Remove all unacceptable chars.
	valid_chars="$(echo $1 | sed -e 's/[^[:alnum:]]//g')"
	
	
}