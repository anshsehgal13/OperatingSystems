#implement arithemetic

read -p "Enter 1st number: " a
read -p "Enter 2nd number: " b
add=$(echo "$a + $b" | bc)
echo "Addition is :$add"
sub=$(echo "$a - $b" | bc)
echo "Subtraction is :$sub"
mul=$(echo "$a * $b" | bc)
echo "Multiplication is :$mul"
div=$(echo "$a / $b" | bc)
echo "Division is :$div"

