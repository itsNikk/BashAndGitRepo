#!/bin/bash

rm -rf $1

mkdir $1
cd $1
mkdir $2 $3

cd $2
touch f1.txt f2.txt f3.txt
cd ..
cd $3
touch f4.txt f5.txt
cd ..

echo "Inserisci nome cartella da visualizzare"
read dirToShow

echo
echo "Ecco il contenuto della cartella ${dirToShow}"
ls $dirToShow

mv "${dirToShow}/f3.txt" $3
