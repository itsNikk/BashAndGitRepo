#!/bin/bash

contaPari=0
contaDispari=0

i=1
until [ $i -gt 10 ]
do
	read -p "Inserisci numero: " n
	if [ $(($n%2)) -eq 0 ];
	then
		((contaPari++))
	else
		((contaDispari++))
	fi
	((i++))
done

echo "Numeri pari analizzati: $contaPari" > contaNumeri.txt
echo "Numeri dispari analizzati: $contaDispari" >> contaNumeri.txt

cat contaNumeri.txt
