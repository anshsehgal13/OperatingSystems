echo "Enter max number of stars: "
read num
echo
for ((i=1;i<=num;i++))
do
	for ((j=1;j<=n-i;j++))
	do
		echo -n " "
	done
	
	for ((j=1;j<=i;j++))
	do
		echo -n "*"
	done
	echo
done

for ((i=num-1;i>=1;i--))
do
	for ((j=1;j<n-i;j++))
	do
		echo -n " "
	done
	for ((j=1;j<=i;j++))
	do
		echo -n "*"
	done
	echo
done
