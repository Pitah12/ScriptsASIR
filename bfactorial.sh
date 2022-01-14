#Hacer un script que pregunte números al usuario y muestre su factorial.
#El factorial de un entero positivo n se define como el producto de todos los números enteros positivos desde 1 hasta n.
#El script finalizará cuando el usuario introduzca el valor 0 (mostrando su factorial, que es 1).
#!/bin/bash
read numero
while [ $numero -ne 0 ]
do
	factorial=1
	while [ $numero -gt 0 ]
	do
	factorial=$(( $factorial * $numero ))
	numero=$(( $numero - 1 ))
	done
	echo $factorial
	read numero
done
if [ $numero -eq 0 ]
then
	echo "1"
fi