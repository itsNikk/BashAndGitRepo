#!/bin/bash

sum=0
for numIndex in $(seq 1 5)
do
	read -p "Inserisci il $numIndex° numero" num
	sum=$((sum+num))
done

echo "La somma è $sum" > sumRes.txt

echo "Ecco il risultato nel file"
cat sumRes.txt

