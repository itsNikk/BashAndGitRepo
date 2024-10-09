#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Utilizzo: $0 numero1 operazione numero2"
    exit 1
fi

num1=$1
operazione=$2
num2=$3
risultato=0

if [ "$operazione" = "+" ]; 
then
    risultato=$((num1 + num2))
elif [ "$operazione" = "-" ]; 
then
    risultato=$((num1 - num2))
elif [ "$operazione" = "*" ]; 
then
    risultato=$((num1 * num2))
elif [ "$operazione" = "/" ]; 
then
    if [ $num2 -ne 0 ]; then
        risultato=$((num1 / num2))
    else
        echo "Errore: divisione per zero."
        exit 1
    fi
else
    echo "Operazione non valida. Usa +, -, *, o /."
    exit 1
fi

echo "Risultato: $risultato"
echo "Risultato: $risultato" > risultato.txt
