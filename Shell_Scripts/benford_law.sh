#!/bin/bash -

# Benford's Law, also called the first-digit law, is an observation about the frequency
# distribution of leading digits in many real-life sets of numerical data. The law states
# that in many naturally occurring collections of numbers, the leading significant digit
# is likely to be small.
#
# https://en.wikipedia.org/wiki/Benford%27s_law

# For each digit i, search for the (nondigit)i sequence in the text;
# count those lines.
	
for i in 0 1 2 3 4 5 6 7 8 9;
do
	# the head of the line, or a nondigit followed by the digit we are looking for
	grep -E '(^|[^0-9.])'$i *.c > lines_with_${i};
done

wc -l lines_with_*