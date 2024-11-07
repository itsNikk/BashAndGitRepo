#!/bin/bash

cd $HOME/Desktop

rm -rf progetto
mkdir progetto
cd progetto
git init

echo "Questo è un progetto di esempio." > README.md

git add README.md
git commit -m "Primo commit"

git log 
