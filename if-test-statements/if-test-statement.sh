!#/bin/bash

# For more information about conditional file test/checks see this documentation:
# https://tldp.org/LDP/abs/html/fto.html

if [ -d /bin ]; then
	echo "Ok, you have a /bin directory, all correct"
fi

if [ -e /bin/cat ]; then
	echo "Looks like you have the cat command, great!"
else 
	echo "Ups, you should install cat, it's very useful."
fi

