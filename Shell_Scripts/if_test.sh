#!/bin/bash -

# An if/then statement built around test.

if test ! -e test_file; then
	echo "Text file 'test_file' had not existed"
	touch test_file
else
	echo "Text file 'test_file' existed"
	rm test_file
fi

if [ ! -e another_file ]; then
	echo "another_file had not existed"
	touch another_file
else
	echo "another_file existed"
	rm another_file
fi