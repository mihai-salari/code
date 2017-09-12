func_load_config() {
	config_file=$1
	
	if [ "$config" = "" ]; then
		echo "Error: missing argument - configuration file name is required"
		exit 1
	fi
	
	if ! . $config_file; then
		echo "Error: failed to load configuration file"
		exit 1
	fi
	
	exit 0
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