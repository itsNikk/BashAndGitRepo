#!/bin/bash

num=$1

f=1
while [ $num -gt 1 ];
do
	f=$((f*num))
	((num--))
done

echo "Il fattoriale di $1 è $f"
