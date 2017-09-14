#!/bin/bash -

# Normalizes month field in date specification to three letters,
# first letter capitalized. Exit with 0 if no error.

month_num_to_name() {
	# Sets the 'month' variable to the appropriate value
	case $1 in
		1 ) month="Jan" ;;
		2 ) month="Feb" ;;
		3 ) month="Mar" ;;
		4 ) month="Apr" ;;
		5 ) month="May" ;;
		6 ) month="Jun" ;;
		7 ) month="Jul" ;;
		8 ) month="Aug" ;;
		9 ) month="Sep" ;;
		10 ) month="Oct" ;;
		11 ) month="Nov" ;;
		12 ) month="Dec" ;;
		* ) echo "${0:2}: Unknown month value $1" >&2; exit 1
	esac
	
	return 0
}