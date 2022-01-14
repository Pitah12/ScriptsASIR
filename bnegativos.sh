#Hacer un script que pregunte números al usuario y que finalice cuando se introduzca un cero.
#El script debe mostrar en pantalla la cantidad de números negativos y de números positivos introducidos.
#!/bin/bash
read -p "" num
positivos=0
negativos=0
while [ $num -ne 0 ]
do
	if [ $num -lt 0 ]
	then
		negativos=$((negativos+1))
	else
		positivos=$((positivos+1))
	fi
	read -p "" num
done
echo "$negativos"
echo "$positivos"