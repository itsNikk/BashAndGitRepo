#!/bin/bash

arr=("mela" "banana" "arancia" "uva")
echo "L'array prima dell' aggiornamento è: ${arr[@]}"
arr[2]="pesca"
echo "L'array aggiornato è: ${arr[@]}"