#Hacer un script que pregunte dos números y cuente del primero al segundo.
#Los números pueden ser iguales, positivos o negativos.
#!/bin/bash
read num1
read num2
if [ $num1 -lt $num2 ]
then
	while [ $num1 -le $num2 ]
	do
		echo $num1
		num1=$((num1+1))
	done
elif [ $num1 -gt $num2 ]
then
	while [ $num1 -ge $num2 ]
	do
		echo $num1
		num1=$((num1-1))
	done
else
	echo $num1
fi