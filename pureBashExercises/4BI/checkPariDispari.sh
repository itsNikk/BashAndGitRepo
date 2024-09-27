#!/bin/bash

read -p "Inserisci il numero da controllare: " n

if [ $((n%2)) -eq 0 ];
then
	echo "Il numero $n è pari"
else
	echo "Il nuero $n è dispari"
fi
