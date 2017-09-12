#!/bin/bash -

# Following line use the tr command to replace newline character in each line
# with a + character, and then send the output to bc for calculation.
# Can be modify to use for csv files, when we need to add the values of certain csv fields.

echo "$(cat /Users/choonsiong/Code/Shell_Scripts/tmp/numbers.txt | tr '\n' '+')" | bc