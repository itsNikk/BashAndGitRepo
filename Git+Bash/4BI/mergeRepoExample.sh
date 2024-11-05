#!/bin/bash

cd $HOME/Desktop

rm -rf mergeRepo
git init mergeRepo
cd mergeRepo

# 3 volte, crea file e fai commit
for i in {1..3}; do
	echo "Contenuto del file$i.txt" > file$i.txt
	git add file$i.txt
	git commit -m "Aggiunto file$i.txt"
done

git status
git log --oneline

git checkout -b featureA
echo "nuova riga in f2.txt da featureA" >> file2.txt
git add file2.txt
git commit -m "Commit su FeatureA"

git log --all --graph --oneline
git checkout master

git checkout -b featureB
echo "modifica su file2 in branch B" >> file2.txt
git add file2.txt
git commit -m "Commit su featureB"

git log --all --graph --oneline

git checkout master
echo "--------------------"
git merge featureA
echo "--------------------"
git log --oneline --all --graph
echo "--------------------"
git merge featureB
echo "--------------------"


