#!/bin/bash
#que me devuelva la ciudad, el mes y el año de consumo máximo y mínimo.

echo "Elige una ciudad "
read ciudad

line=$(awk -v n="$ciudad" '$1 == n' consumos.txt)

if [ -n "$line" ]; then

        mes=$(echo "$line" | awk '{print $2}')
        year=$(echo "$line" | awk '{print $3}')
        consumo=$(echo "$line" | awk '{print $4}')

echo "La ciudad que elegiste tiene:"
    echo "Ciudad: $ciudad"
    echo "Mes: $mes"
    echo "Year: $year"
    echo "Consumo: $consumo"
fi