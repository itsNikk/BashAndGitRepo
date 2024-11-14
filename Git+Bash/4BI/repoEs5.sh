#!/bin/bash

cd $HOME/Desktop

repoName="branchRepo"

# mkdir $repoName
# cd $repoName
# git init

#alt+6 = copia ctrl+u=incolla
echo "--------------------"
rm -rf $repoName
git init $repoName
cd $repoName
echo "--------------------"

touch file1.txt file2.txt file3.txt
echo "Prima modifica per file1" > file1.txt
git add file1.txt
echo "--------------------"
git commit -m "C1: prima modifica  su file 1"
echo "--------------------"

git log --oneline

# punto 2)
git checkout -b F1
echo "Modifica su F1 per C2" >> file2.txt
git add file2.txt
git commit -m "C2: Modifica su file2 in F1"

# PUNTO 3
git checkout master
echo "Modifica su main per C3" >> file3.txt
git add file3.txt
git commit -m "C3: Modifica su file3.txt su main"

git log --oneline --all --graph

git checkout -b F2
echo "Modifica su F2 per C4" >> file1.txt
git add file1.txt
git commit -m "C4: Modifica su file1.txt in F2"

git log --oneline --all --graph

git checkout master
echo "Modifica su main per C5" >> file2.txt
git add file2.txt
git commit -m "C5: Modifica su file2.txt su main"
git log --oneline --all --graph

# punto branch multipli
for branch in HF3 HF4 HF5; do
git branch $branch
git checkout $branch

numCommits=${branch: -1}

for i in $(seq 1 $numCommits); do
fileNum=$(( (i-1) % 3 +1))
fileName="file${fileNum}.txt"

echo "Mododifica su $branch per Commit $i" >> $fileName
git add $fileName
git commit -m "Commit $i su $branch in $fileName"
done
done

git checkout master
git log --all --graph --oneline
