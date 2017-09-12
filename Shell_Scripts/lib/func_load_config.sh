# Load configuration file
# func_load_config config_file

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
	
	echo $NAME
	echo $AGE
	
	return $result
}

# func_load_config "/Users/choonsiong/Code/Shell_Scripts/tmp/config.txt"
# func_load_config