#!/bin/bash -

# Verifies that a specified program is either valid as is or can
# be found in the PATH directory list.

in_path() {
	# Given a command and the PATH, tries to find the command. Returns 0
	# if found and executable; 1 if not. Note that this temporarily modifies
	# the IFS (internal field separator) but restores it upon completion.
	
	# Note:
	# The original script try to replace the IFS with : so that it can retrieves
	# each directory in the for-loop, but somehow it is not working. Therefore,
	# I have use tr command to replace : with newline character and use echo
	# to get the list of directory in the for-loop.
	
	cmd=$1
	ourpath=$2
	mypath=$(echo $2 | tr ':' '\n')
	result=1
	#oldIFS=$IFS
	#IFS=":"
		
	#for directory in "$ourpath"
	for directory in `echo $mypath`
	do
		#echo "$directory/$cmd"
		#echo ""
		if [ -x $directory/$cmd ] ; then
			result=0 # If we're here, we found the command.
		fi
	done
	
	#IFS=$oldIFS
	
	return $result
}

check_for_cmd_in_path() {
	var=$1
	
	if [ "$var" != "" ] ; then
		if [ "${var:0:1}" = "/" ] ; then # check whether var has a leading slash
			if [ ! -x $var ] ; then # absolute path, check whether it is exists
				return 1
			fi
		elif ! in_path $var "$PATH" ; then # not exist, so we check in PATH
			return 2
		fi
	fi
}

#echo executing in_path.sh