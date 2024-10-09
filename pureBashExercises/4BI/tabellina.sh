#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Utilizzo: $0 numero"
    exit 1
fi

numero=$1

echo "Tabellina del $numero:" > tabellina.txt

for i in $(seq 1 10); do
    risultato=$((numero * i))
    echo "$numero x $i = $risultato" >> tabellina.txt
done

cat tabellina.txt
