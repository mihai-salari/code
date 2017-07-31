#!/bin/bash -

for i in `seq 1 1000`; do
	. hello_bash.sh > /tmp/hello_bash_${i}.out;
done

output='/tmp/hello_bash.out'

for i in `seq 1 1000`; do
	echo "output for run $i:" >> $output;
	. hello_bash.sh >> $output;
done