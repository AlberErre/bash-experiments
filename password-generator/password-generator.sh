!#/bin/bash

# We can pass the number of passwords we need as first argument (arg) -> $1
# If nothing is pass as arg $1, we set the default value to DEFAULT_PASS_NUM
DEFAULT_PASS_NUM=1
PASS_NUM=${1:-$DEFAULT_PASS_NUM}
 
echo "How many characters should the password have?"

read LEN

# Check operators here -> https://kapeli.com/cheat_sheets/Bash_Test_Operators.docset/Contents/Resources/Documents/index

if [ $PASS_NUM -gt 1 ]; then
        echo "Ok!, these are your ${PASS_NUM} passwords of length ${LEN}:"

	for number in $(seq 1 $PASS_NUM); do
        	openssl rand -base64 48 | cut -c 1-$LEN
	done
else
	echo "Ok!, here is your password of length ${LEN}:"
	echo $(openssl rand -base64 48 | cut -c 1-$LEN)
fi

# Command "openssl rand" explanation:
# Decimals numbers have 9 numbers (0-9)
# Base 64 numbers has 48 base numbers, so we pick 48 which is the maximum
# Then, we pipe a cut instruction to cut the extra chars depending of the LEN of the password specified by the user

