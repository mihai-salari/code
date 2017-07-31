#!/bin/bash -

#if grep 'abc' ~/Public/Bash/hello_bash.sh
if grep 'abc' ~/Public/Bash/hello_bash.sh > /dev/null # grep will print out the line matched, so we redirect it to bit bucket
then
  echo "pattern found"
else
  echo "pattern not found"
fi
  