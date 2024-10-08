#!/bin/bash

# 1) crea cartella SommaN e vi accede
rm -rf SommaN

mkdir SommaN
cd SommaN

read -p "Inserisci numero: " n

# eseguo somma da 1 a n
sum=0
for num in $(seq 1 $n);
do
	sum=$((sum+$num))	
done

# salvare sum su file
echo "la somma è ${sum}" > sumRes.txt

cat sumRes.txt
