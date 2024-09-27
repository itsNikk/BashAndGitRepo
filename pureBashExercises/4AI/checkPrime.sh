#!/bin/bash

# read -p è lo stesso di 
# echo "inserisci numero" read num

read -p "Inserisci un numero: " num

if [ $num -lt 2 ];
then
	echo "Il numero non è primo"
fi

for i in $(seq 2 $((num-1)))
do
	if [ $((num % i)) -eq 0 ];
	then
		echo "Il numero non è primo, ecco i suoi divisori"
		for j in $(seq 1 $num)
		do
			if [ $((num % j)) -eq 0 ];
			then
				echo $j
			fi
		done
		exit 0
	fi
done

echo "Il numero è primo"
