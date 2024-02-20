#!/bin/bash
#pasándole por parámetro una ciudad me devuelva la calificación eco atendiendo a: 
#Si la media es inferior a 400 será ECO si es igual o superior será NO ECO.

echo "La ciudad elegida es: $1"

(cat consumos.txt | tail +4 )

consumo=$(echo "$1" | awk '{print $4}')
if [ $consumo -lt 400 ]; then
echo "El consumo es ECO"
else
echo "El consumo no sera ECO"
fi