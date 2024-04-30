echo "Enter the amount balance: "
read ab

echo "Enter amount to be withdrawn: "
read wb

if [ $wb -lt 1500 ]
then 
	tax=$(echo "0.03 * $wb" | bc)
	echo "Tax is: $tax"
	final_amount=$(echo "$wb - $tax" | bc)
	echo "Final withdrawal amount is: $final_amount"

elif [ $wb -gt 1500 ] || [ $wb -eq 1500 ] && [ $wb -lt 3000 ]
then
	tax=$(echo "0.04 * $wb" | bc)
	echo "Tax is: $tax"
	final_amount= $(echo "$wb - $tax" | bc)
	echo "Final withdrawal amount is: $final_amount" 
	
elif [ $wb -gt 3000 ] || [ $wb -eq 3000 ]
then
	tax=$(echo "0.05 * $wb" | bc)
	echo "Tax is: $tax"
	final_amount=$(echo "$wb - $tax" | bc)
	echo "Final withdrawal amount is: $final_amount" 
	
else
echo "Balance is not sufficient"
fi
