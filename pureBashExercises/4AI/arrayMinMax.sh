#!/bin/bash

cd $HOME/Desktop
rm -rf es2Sportello
mkdir es2Sportello
cd es2Sportello

a=()
read -p "Dammi numeri separati da spazio: " -a a


max=${a[0]}
min=${a[0]}
for elem in ${a[@]}
do
	if [ $elem -gt $max ]
	then
		max=$elem
	fi
	if [ $elem -lt $min ]
	then
		min=$elem
	fi
done

echo "Min:$min, Max:$max"
