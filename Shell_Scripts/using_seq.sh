#!/bin/bash -

# Using seq to generate sequence for a simple multiplication table

for i in `seq 0 14`;
do
	for j in `seq 0 14`;
	do		
		echo -n $(($i*$j));
		echo -n " "
	done
	
	echo ""
done