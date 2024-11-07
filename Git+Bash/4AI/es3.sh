#!/bin/bash

cd $HOME/Desktop

rm -rf progetto2
mkdir progetto2
cd progetto2
git init

for i in $(seq 1 100); do
  file1="file1_$i.txt"
  file2="file2_$i.txt"
  echo "Contenuto di $file1" > "$file1"
  echo "Contenuto di $file2" > "$file2"

  git add $file1 $file2
  git commit -m "Commit $i per $file1 e $file2"
done

git log --oneline
