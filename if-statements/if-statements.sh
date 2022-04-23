!#/bin/bash

echo "what's the easiest programming language?"

read LNG

[ $LNG = "bash" ] && echo "Oh yeah!"

if [ ${LNG} = "bash" ]; then
	echo "You got it!"
else 
	echo "Nope, sorry you missed it."
fi

