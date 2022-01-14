read -p "" edad

while [ $edad -ne 0 ]; do
	if [ $edad -le 6 ]; then
		echo "i"
	elif [ $edad -le 20 ]; then
		echo "j"
	elif [ $edad -lt 65 ]; then
		echo "n"
	else
		echo "3"
	fi
	read -p "" edad
done