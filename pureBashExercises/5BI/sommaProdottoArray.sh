#!/bin/bash

nums=()
f=results.txt

read -p "Inserisci 6 numeri sep.spazio: " -a nums

sumsSub=(${nums[@]:1:3})
multSubs=(${nums[@]:0:4})

# ovviamente si può fare con un for...

sum=$((${sumsSub[0]}+${sumsSub[1]}+${sumsSub[2]}))
mult=$((${multSubs[0]}*${multSubs[1]}*${multSubs[2]}*${multSubs[3]}))

echo ${nums[0]} > $f
echo "La somma dei numeri dal secondo al quarto è: $sum" >> $f
echo "La moltiplicazione dei numeri dal primo al quarto è: $mult" >> $f
echo "I numeri sommati sono stati: ${sumsSub[@]}" >> $f
echo "I numeri moltiplicati sono stati: ${multSubs[@]}" >> $f
echo "L'ultimo elemento dell'array è: ${nums[-1]}" >> $f

cat $f
