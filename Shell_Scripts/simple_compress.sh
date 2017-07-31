#!/bin/bash -

# Generate test data
mkdir /tmp/test_dir
echo 'testing... testing...' > /tmp/test_dir/test.txt

# Compress it, and remove only if the compression succeeded
if tar cz /tmp/test_dir > /tmp/test_dir.tgz; then
	echo "Compression OK, removing directory"
	rm -r /tmp/test_dir
else
	echo "Compression failed. Doing nothing."
fi
