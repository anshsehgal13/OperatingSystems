#area and perimeter of circle
read -p "Enter radius of the cirle: " r
area=$(echo "3.14* $r * $r" | bc)
echo "Area is $area"
perimeter=$(echo "2 * 3.14 * $r" | bc)
echo "Perimeter is $perimeter"
