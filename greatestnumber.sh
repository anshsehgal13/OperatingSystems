#Greatest out of 3 numbers
echo "Enter number 1 : "
read num1
echo "Enter number 2 : "
read num2
echo "Enter number 3 : "
read num3
if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then 
	echo "$num1 is greatest"
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
then
	echo "$num2 is greatest"
else 
	echo "$num3 is greatest"
fiS
