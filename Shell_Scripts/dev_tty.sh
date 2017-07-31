#!/bin/bash -

# Use /dev/tty to read from real terminal

printf "Enter new password: "
stty -echo # turn off echoing of typed characters

read password1 < /dev/tty

printf "\nEnter again: "
read password2 < /dev/tty

stty echo # turn back echoing on

echo ""

if [ $password1 == $password2 ];
then
	echo "Password matched"
	printf "Your password is: %s\n" $password1
else
	echo "Password doesn't matched, re-enter your password!"
fi