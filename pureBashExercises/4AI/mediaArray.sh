#!/bin/bash


array=()

# read -a permette la memorizzazione di una serie di valori in un singolo comando
# in un array

read -p "Inserisci i valori dell'array separati da spazio: " -a array

somma=0
for elem in "${array[@]}";
do
	((somma+=elem))
done

echo $somma
