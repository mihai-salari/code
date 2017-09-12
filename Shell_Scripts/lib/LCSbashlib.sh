# Load configuration file
# func_load_config config_file
func_load_config() {
	config_file=$1
	
	if ! . $config_file; then
		echo "Error: failed to load configuration file"
		exit 1
	fi
	
	exit 0
}
