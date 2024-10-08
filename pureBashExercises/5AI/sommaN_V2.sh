#!/bin/bash

# 1) crea cartella SommaN e vi accede

if [ $# -eq 1 ];
then 
rm -rf SommaN

mkdir SommaN
cd SommaN

n=$1
# eseguo somma da 1 a n
sum=0
for num in $(seq 1 $n);
do
	sum=$((sum+$num))	
done

# salvare sum su file
echo "la somma è ${sum}" > sumRes.txt

cat sumRes.txt
else
echo "Errore"
fi
