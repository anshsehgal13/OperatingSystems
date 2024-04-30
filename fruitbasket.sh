#leap year using switch statements

read -p " There is a fruit basket, pick a fruit and type its colour, I'll tell which fruit it could be " fruit

case $fruit in 

"red")
	echo "It could be an apple"
	;;
"yellow")
	echo "It could be a banana"
	;;
"orange")
	echo "It could be an orange"
	;;
"green")
	echo "It could be a kiwi"
	;;
"purple")
	echo "It could be a grape"
	;;
*)
	echo "Unknown fruit"
	;;
	
esac
