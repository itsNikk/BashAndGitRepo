#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Utilizzo: $0 numero"
    exit 1
fi

numero=$1

echo "Multipli di $numero da 1 a 50:" > multipli.txt

for i in $(seq 1 50); do
    if [ $((i % numero)) -eq 0 ]; then
        echo "$i" >> multipli.txt
    fi
done

cat multipli.txt
