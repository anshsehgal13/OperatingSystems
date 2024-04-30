read -p "Enter a string: " input_string

read -p "Enter a character to be searched for: " char_input

occurences=0

for ((i = 0; i < ${#input_string}; i++)); do
	if [ "${input_string:i:1}" == "$char_input" ]; then
		((occurences++))
	fi
done


echo "'$char_input' appears in the given string '$input_string' $occurences times"


