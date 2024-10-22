#!/bin/bash

cd $HOME/Desktop
rm -rf sommaCoppie
mkdir sommaCoppie
cd sommaCoppie

a=()
b=()

# Si può fare equivalentemente con read -p "Inserisci 5 numeri separati da spazio per il primo array" -a a
echo "Inserisci 5 numeri per il primo array"
for i in {0..4}
do
	read -p "Inserisci numero $((i+1))) del primo array: " n
	a[$i]=$n
done

echo "Inserisci ora 5 numeri per il secondo array"
for i in {0..4}
do
	read -p "Inserisci numero $((i+1))) del secondo array: " n
	b[$i]=$n
done

res="results.txt"
echo "Ecco la somma a coppie degli array:" > $res

sum=0
for n in $(seq 0 $((${#a[@]}-1)))
do
	# Generalmente è superfluo usare il $ all'interno di (())
	sum=$((a[n]+b[n]))
	echo "${a[n]} + ${b[n]} = $sum" >> $res
done

echo "Tutto salvato correttamente! :)"


