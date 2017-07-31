#!/bin/bash -

# This script will automatically convert all the flv files to mp4 file in the directory
# where the script is running.

for f in *.flv
do
	input=$f
	output=$(echo $input | sed 's/[[:space:]]//' | sed 's/.flv/.mp4/' | tr "[:upper:]" "[:lower:]")
	
	# echo "Processing input $input to output $output"
	ffmpeg -i "$input" -codec copy $output
	# echo "Done"
done