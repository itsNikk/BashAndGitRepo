#!/bin/bash

read -p "Inserisci il primo numero: " a
read -p "Inserisci il secondo numero: " b

if [ $a -lt $b ]; then
	echo "$b è maggiore di $a"
elif [ $a -gt $b ]; then
	echo "$a è maggiore di $b"
else
	echo "I due numeri sono uguali"
fi
