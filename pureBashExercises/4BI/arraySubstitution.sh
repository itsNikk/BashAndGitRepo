#!/bin/bash

array=(1 ciao 4 gatto)

read -p "Inserisci l'elemento da sostituire: " newElem

echo "Array originale: ${array[@]}"

array[1]=$newElem

echo "Array modificato: ${array[@]}"
