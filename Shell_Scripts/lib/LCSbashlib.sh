if [ "$LCS_DEBUG" = "ON" ]; then
	echo DEBUG: ... ${0:2} loaded
fi

func_load_config() {
	config_file=$1
	result=0
	
	if [ "$config_file" = "" ]; then
		echo "Error: missing argument - configuration filename is required"
		result=1
	fi
	
	if ! . "$config_file"; then
		echo "Error: failed to load configuration file"
		result=1
	fi	
		
	return $result
}

func_is_cmd_in_path() {
	cmd=$1
	mypath=$(echo $2 | tr ':' '\n')
	result=1

	for directory in `echo $mypath`
	do
		if [ -x $directory/$cmd ] ; then
			result=0
		fi
	done
	
	return $result
}

func_check_for_cmd_in_path() {
	var=$1
	
	if [ "$var" != "" ] ; then
		if [ "${var:0:1}" = "/" ] ; then
			if [ ! -x $var ] ; then
				return 1
			fi
		elif ! func_is_cmd_in_path $var "$PATH" ; then
			return 2
		fi
	fi
}

func_check_input_is_alphanum() {
	valid_chars="$(echo $1 | sed -e 's/[^[:alnum:]]//g')"
	
	if [ "$valid_chars" = "$1" ]; then
		return 0
	else
		return 1
	fi	
}