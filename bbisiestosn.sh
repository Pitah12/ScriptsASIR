#Hacer un script que pregunte un año al usuario y muestre una s o una n en función de si el año es bisisesto o no.
#Los años bisiestos son aquellos que son divisibles por 4, pero no por 100.
#También son bisiestos los años que son divisibles por 400.
#El script finalizará cuando el usuario introduzca el año 0.
#!/bin/bash

read fecha
while [ $fecha -ne 0 ]
do
	if [ $((fecha % 4)) -eq 0 ] && [ $((fecha % 100)) -ne 0 ] || [ $((fecha % 400)) -eq 0 ]
	then
		echo "s"
	else
		echo "n"
	fi
	read fecha
done