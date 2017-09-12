func_load_config() {
	config=$1
	
	if ! . $config; then
		echo "Error: failed to load configuration file"
		exit 1
	fi
	
	echo $NAME
	echo $AGE
	
	exit 0
}

func_load_config "/Users/choonsiong/Code/Shell_Scripts/tmp/config.txt"