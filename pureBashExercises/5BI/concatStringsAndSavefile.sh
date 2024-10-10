#!/bin/bash

echo "Inserisci tre stringhe:"

# si può ovviamente fare con un array
read str1
read str2
read str3

concatenazione="$str1$str2$str3"
echo $concatenazione > concat.txt
cat concat.txt
