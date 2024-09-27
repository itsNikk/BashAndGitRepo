#!/bin/bash

read -p "Inserisci il primo numero: " n1
read -p "Inserisci il secondo numero: " n2
read -p "Inserisci il terzo numero: " n3

somma=$((n1+n2+n3))
echo "La media tra $n1,$n2,$n3 è $((somma/3))"
