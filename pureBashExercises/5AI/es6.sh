#!/bin/bash

array=()
read -p "Inserisci gli elementi dell' array separati da virgola: " -a array

echo "${array[@]}"
echo "Gli ultimi 3 elementi dell'array sono: ${array[@]:3:3}"
