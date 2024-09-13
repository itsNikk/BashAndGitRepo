#!/bin/bash

echo "Inserisci il nome della cartella"
read dirName

mkdir ${dirName}
cd ${dirName}

touch file1.txt file2.txt file3.txt
