#!/bin/bash

cd $HOME/Desktop

# alt+6 = copia
echo "-----------------------"
rm -rf fileManagementRepo
git init fileManagementRepo
cd fileManagementRepo
echo "-----------------------"

echo "contenuto file1" > file1.txt
echo "contenuto file2" > file2.txt
echo "contenuto file3" > file3.txt

echo
echo "-----------------------"
git status
echo "-----------------------"

# * = TUTTO il contenuto della cartella
git add *
echo
echo "-----------------------"
git status
echo "-----------------------"

git commit -m "Initial Commit"

# Punto iii
git branch featureA 
git branch featureB
git checkout featureA

echo "Contenuto modificato in file1" > file1.txt
mkdir dirA/
git mv file2.txt dirA/
git rm file3.txt

git status
echo
git add *
git commit -m "Modifiche su featureA: blabla"

echo
echo "---------------------"
git checkout featureB
touch file4.txt
echo "modifiche su file1.txt" > file1.txt
mkdir dirB/
git mv file2.txt dirB/
git rm --cached dirB/file2.txt
rm dirB/file2.txt

echo "---------------------"

git status
echo
git add *
git commit -m "Commit su featureB"
