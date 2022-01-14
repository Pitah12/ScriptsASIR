#Hacer un script que pregunte números al usuario y que finalice cuando se introduzca un cero.
#El script debe mostrar en pantalla el máximo de los números pares y el máximo de los números impares.
#!/bin/bash
read -p "" num
maxpar=0
maximpar=0
while [ $num -ne 0 ]
do
	if [ $((num%2)) -eq 0 ]
	then
		if [ $num -gt $maxpar ]
		then
			maxpar=$num
		fi
	else
		if [ $num -gt $maximpar ]
		then
			maximpar=$num
		fi
	fi
	read -p "" num
done
echo "$maxpar"
echo "$maximpar"