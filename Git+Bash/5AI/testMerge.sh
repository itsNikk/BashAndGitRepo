#!/bin/bash

cd $HOME/Desktop

repoName="TestMergeRepo"

rm -rf $repoName
git init $repoName
cd $repoName

touch file1.txt file2.txt file3.txt README.md

# prima riga file2
echo "Header file2" >> file2.txt
git add *
git commit -m "Initial commit"

echo "---------------------------"
# fa vedere la storia dei commit sul BRANCH ATTUALE in versione ridotta
git log --oneline
echo "---------------------------"

git checkout -b F1
echo "Some data from F1 in file2" >> file2.txt
git add file2.txt
git commit -m "Commit in branch F1 con modifiche su file2"

git checkout main

git checkout -b F2
echo "Some NEW data from F2 in file2" >> file2.txt
git add file2.txt
git commit -m "Commit in branch F2 con modifiche su file2"

echo
echo "---------------------------"
git checkout main

# --all = visiona lo storico di tutti i branch
# --graph = ...in versione grafica
git log --graph --all --oneline
echo "---------------------------"

# primo merge F1 into main
echo
echo "---------------------------"
git merge F1
echo "---------------------------"
git log --all --graph --oneline
git branch -d F1

# secondo merge F2 into main -> CONFLICT
echo
echo "---------------------------"
git merge F2
echo "---------------------------"

# Per risolvere il conflitto devi interpreatare cosa ti dice git dopo l'esecuzione di git merge F2

nano file2.txt
git add file2.txt
echo
git commit -m "Merge F2 into main"
git branch -d F2
git log --all --graph --oneline
