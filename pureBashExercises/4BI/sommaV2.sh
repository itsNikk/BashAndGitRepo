#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Errore, i parametri devono essere esattamente 2"
	echo "Uso: $0 n1 n2"
	exit 1
fi

echo "$1+$2=$(($1+$2))"
