#leap year
echo "Enter year to check wheather it is leap or not"
read y
a=`expr $y % 4`
b=`expr $y % 100`
c=`expr $y % 400`

if [ $a -eq 0 ] && [ $b -ne 0 ]
then
echo "$y is a leap year"

elif [ $c -eq 0 ] && [ $b -eq 0 ]
then
echo "$y is a leap year"

else
echo "$y is not a leap year"
fi
