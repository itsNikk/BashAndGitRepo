#!/bin/bash

cd $HOME/Desktop

# mkdir HeadManipulationRepo
# cd HeadManipulationRepo
# git init

rm -rf HeadManipulationRepo
git init HeadManipulationRepo
cd HeadManipulationRepo
echo "-------------------"

echo "Prima riga di fileA.txt" > A.txt
git add A.txt
git commit -m "Aggiunto file A"

echo "Prima riga di fileB.txt" > B.txt
git add B.txt
git commit -m "Aggiunto file B"

echo "Prima riga di fileC.txt" > C.txt
git add C.txt
git commit -m "Aggiunto file C"
echo "-------------------"

git log --oneline

# git branch devTemp
# git checkout devTemp
git checkout -b devTemp
echo "Qualche modifica su fileB in devTemp" >> B.txt
git add B.txt
git commit -m "Fatte modifiche su fileb in devTemp" 

git log --all --oneline --graph

git checkout main
git checkout -b FB
echo "nuova riga su file B da FB" >> B.txt
git add B.txt
git commit -m "Modifiche su fileB in FB"

git log --oneline --all --graph
echo "----------------------------"
git checkout main
git merge devTemp
echo "----------------------------"

git log --oneline --all --graph
echo "----------------------------"
git merge FB
echo "----------------------------"

nano B.txt
git add B.txt
git commit -m "Merged FB in main"

git log --all --graph --oneline 
