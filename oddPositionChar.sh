read -p "Enter a string: " input_string

echo "Characters at odd positions in \"$input_string\":"
for ((i = 0; i < ${#input_string}; i+= 2)); do
	echo -n "${input_string:i:1} "
done
echo


