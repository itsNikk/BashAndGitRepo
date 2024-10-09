#!/bin/bash

somma=0
conteggio=0

# numero=1 così entro nel ciclo until
numero=1 

while [ $numero -ne 0 ]
do
	read -p "Inserisci un numero (0 per terminare): " numero
	if [ $numero -ne 0 ]
	then
		((somma+=numero))
		((conteggio++))
	fi
done

media=0
if [ $conteggio -gt 0 ];
then
	media=$((somma/conteggio))
	echo "Somma: $somma, Media: $media" > sommaMediaRes.txt
else
	echo "Nessun numero inserito"
fi
