read -p "Enter a number : " num

originalNum=$num
sum=0

while (( num != 0)); do
	digit=$(( num % 10 ))
	sum=$((sum+digit*digit*digit))
	num=$(( num / 10 ))
done

if [ sum == originalNum ]; then
	echo "Armstrong no"
else
	echo "Not an Armstrong no"
fi
