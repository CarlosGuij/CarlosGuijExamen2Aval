#!/bin/bash
#pasándole como parámetro una ciudad, me devuelva la media de sus consumos

sumConsum=0
numCiudad=0
echo "La ciudad introducida es: $1"

while read -r $1; do
ciudad=$(echo "$1" | awk '{print $1}')
consumo=$(echo "$1" | awk '{print $4}')

sumConsum=$((sumConsum+consumo))
numCiudad=$((numCiudad+1))

media=$((sumConsum/numCiudad))

echo "La media es $media."