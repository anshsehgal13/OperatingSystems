#Gross Salary

echo "Enter basic salary : "
read sal
echo "Gross Salary is: Rs. $(echo "0.0165*$sal+0.003*$sal+$sal" | bc)"

#Calculate mean salary if basic salaries are 1200, 1400, 1350, 1800
val1=$(echo "1200+1400+1350+1800" | bc)
val2=$(echo "$val1/4" | bc)
echo "Mean basic salary is: $val2"
