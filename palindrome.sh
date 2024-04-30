read -p "Enter a string: " input_str

rev=$(echo "$input_str" | rev)

if [ "$input_str" == "$rev" ]; then
	echo "string is palindrome"
else
	echo "string is not palindrome"
fi



