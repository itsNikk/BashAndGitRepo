#!/bin/bash
clear
cd $HOME/Desktop

rm -rf MergeRepo
git init MergeRepo
cd MergeRepo

for i in {1..3}; do
echo "Header file$i.txt" > file$i.txt
git add file$i.txt
git commit -m "Aggiunto file$i.txt"
done
echo "----------------"
git log --oneline
echo "----------------"
echo
git branch featureA
git branch featureB
echo "----------------"
git log --oneline
echo "----------------"

git checkout featureA
echo "seconda linea di file2 in FeatureA" >> file2.txt
git add file2.txt
git commit -m "modificato file2 in featureA"

git checkout featureB
echo "seconda linea da ffeatureB" >> file2.txt
git add file2.txt
git commit -m "Modificato file 2 in feature B"
echo
# --all=tutti i commit su tutti i branch
# --graph = grafico
git log --oneline --all --graph
echo
git status
echo
# merge main -> featureA
git checkout main
echo "-----------------------"
git merge featureA
git branch -d featureA
git log --all --oneline --graph
echo "-----------------------"
echo
echo "-----------------------"
git merge featureB
echo "-----------------------"
git status

# gestione del conflitto
nano file2.txt
git add file2.txt
git commit -m "Merged featureB in main"
git branch -d featureB
git log --oneline --all --graph
