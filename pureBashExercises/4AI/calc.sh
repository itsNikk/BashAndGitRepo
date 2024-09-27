#!/bin/bash

if [ $# -ne 3 ];
then
	echo "usage $0 n1 n2 op"
	exit 1
fi

n1=$1
n2=$2
op=$3

if [ "$op" == "+" ];
then
	echo $(($n1+$n2))
elif [ "$op" == "-" ];
then
	echo $(($n1-$n2))
elif [ "$op" == "*" ];
then
	echo $(($n1*$n2))
elif [ "$op" = "/" ];
then
if [ $n2 -gt 0 ]; 
then
	echo $(($n1/$n2))
else
	echo "ERRORE! Divisione per zero!"
	exit 1
fi
else
	echo "Operazione $op non riconosciuta"
fi
