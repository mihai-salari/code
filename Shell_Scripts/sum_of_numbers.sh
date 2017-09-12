#!/bin/bash -

# Following line use the tr command to replace newline character in each line
# with a + character, and then send the output to bc for calculation.

echo "$(cat /Users/choonsiong/Code/Shell_Scripts/tmp/numbers.txt | tr '\n' '+')" | bc