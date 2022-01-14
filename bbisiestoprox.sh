#Hacer un script que pregunte una cantidad indeterminada de años y muestre el año bisisesto más proximo.
#Los años bisiestos son aquellos que son divisibles por 4, pero no por 100.
#También son bisiestos los años que son divisibles por 400.
#El script finalizará cuando el usuario introduzca el año 0.
#!/bin/bash

read fecha

while [ $fecha -ne 0 ]
do
	#Comprobar que el año es bisiesto.
	if [ $((fecha % 4)) -eq 0 ] && [ $((fecha % 100)) -ne 0 ] || [ $((fecha % 400)) -eq 0 ]
	then
		echo "$fecha"
	else
		#Si no es bisiesto, buscar el bisiesto más proximo.
			fecha=$((fecha + 4 - (fecha % 4)))
		echo "$fecha"
	fi
	read fecha
done