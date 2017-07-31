#!/bin/bash -

if [ $# -lt 1 ]; then
	printf "Error. Not enough arguments.\n"
	printf "usage: bgit.sh repository [commit message]\n"
	exit 1
fi

git add .
git commit -m 'First commit'
git push -u $1 master