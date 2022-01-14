#Hacer un script que pregunte horas y minutos al usuario y muestre el número de segundos que han pasado desde el comienzo del día.
#El script finalizará cuando el usuario introduzca la hora 00:00.
#!/bin/bash
read -p "" hora
read -p "" minuto
segundos=0
while [ $hora -ne 00 ] || [ $minuto -ne 00 ]
do
	segundos=0
	segundos=$((segundos+hora*60*60+minuto*60))
	echo $segundos
	read -p "" hora
	read -p "" minuto
done