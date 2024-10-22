#!/bin/bash

read -p "Inserisci righe: " rows
read -p "Inserisci colonne: " cols

num=1
rowToPrint=""
for r in $(seq 1 $rows)
do
for c in $(seq 1 $cols)
do
	# si può fare equivalentemente con echo -n
	rowToPrint+="$num "
	((num++))
done
# se si usa echo -n queste due righe sono superflue, si devono sostituire con echo '' per andare a capo
echo $rowToPrint
rowToPrint=""
done
