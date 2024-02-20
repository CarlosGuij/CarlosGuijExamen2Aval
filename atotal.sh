#!/bin/bash
#calcule el total de consumo de una ciudad que se pide por parámetro. 
#Si la ciudad no existe el script se vuelve a ejecutar hasta que introduzca una ciudad correcta2

fichero="consumos.txt"
echo "La ciudad introducida es: "$1

ciudadVal=$(awk '{print $1}'| $fichero)

if [ $1 -ne $ciudadVal ]; then
echo "La ciudad que has introducido no se encuentra disponible"
else
echo "Empecemos a jugar"

consumo=$(awk '{print $4}' | $fichero)

echo "El consumo de la ciudad elegida es $consumo"