#!/bin/bash

cd $HOME/Desktop

read -p "Quanti commit su main vuoi? " nCommit

rm -rf multiCommitRepo
mkdir multiCommitRepo
cd multiCommitRepo
echo "Tutto setuppato per bene"
echo "--------------------------------"

git init
for i in $(seq 1 ${nCommit}); do
	echo "Contenuto di file$i.txt" > file$i.txt
	git add file$i.txt
	git commit -m "Commit aggiunto: aggiunto file$i.txt"
done

git log --oneline 
git status

for b in {1..3}
do
# -b = crea il branch e, siccome sto usando checkout, ci sposto la HEAD
git checkout -b "BB$b"
echo "Contenuto del file$b su branch BB$b" > file_$b.txt
git add file_$b.txt
git commit -m "Commit $b su branch BB$b"

git checkout master 

git log --all --oneline --graph
git status
done

git checkout master

git log --all --oneline --graph 

