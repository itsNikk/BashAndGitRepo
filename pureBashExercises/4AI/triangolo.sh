#!/bin/bash

read -p "Inserisci numero di righe del triangolo: " n

for i in $(seq 1 $n)
do
	row=''
	for e in $(seq 1 $i)
	do
		row+="*"
	done
	echo "$row"
	row=""
done
