#!/bin/bash

fileName=$2
dirName=$1

rm -rf $dirName

mkdir $dirName
cd $dirName

touch "${fileName}.txt"
echo "Intestazione del file ${fileName}.txt" > "${fileName}.txt"

cp "./${fileName}.txt" "./${fileName}_copia.txt"
echo "La seconda riga del file copiato :)">> "${fileName}_copia.txt"


rm "${fileName}.txt"
