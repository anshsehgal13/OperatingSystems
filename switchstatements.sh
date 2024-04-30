#check whether number is 1/2/3 digit

echo "Enter a number: "
read num

case $num in 
[0-9])
echo "Entered number is a single digit number"
;;

[0][0-9])
num="${num#0}"
echo "Entered number is single digit number"
;;

[1-9][0-9])
echo "Entered number is a double digit number"
;;

[1-9][0-9][0-9])
echo "Entered number is a triple digit number"
;;

*)

echo "Entered number is greater than 999"
;;

esac

