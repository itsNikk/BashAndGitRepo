#!/bin/bash

cd $HOME/Desktop
read -p "Inserisci il numero di file/commit da creare su master: " num_commits

# Inizializzare il repository
rm -rf multiRepo
git init multiRepo
cd multiRepo
echo "Repository inizializzato."

# Creare e committare N file su master
for ((i=1; i<=num_commits; i++)); do
    file_name="file_master_$i.txt"
    echo "Contenuto del file $file_name" > "$file_name"
    git add "$file_name"
    git commit -m "Commit $i su master: aggiunto $file_name"
done

echo "Log su master dopo i commit iniziali:"
git log --oneline --graph
echo "Stato su master:"
git status

# Creare e spostarsi nei branch feature1, feature2, feature3
for branch in feature1 feature2 feature3; do
    git checkout -b "$branch"  # Crea e sposta nel branch
    file_name="file_${branch}.txt"
    
    # Creare e committare un file sul branch corrente
    echo "Contenuto di $file_name su $branch" > "$file_name"
    git add "$file_name"
    git commit -m "Commit su $branch: aggiunto $file_name"
    
    # Mostrare il log e lo stato sul branch corrente
    echo "Log su $branch:"
    git log --oneline --graph
    echo "Stato su $branch:"
    git status
done

git checkout main
echo "Back to main"

echo "Log finale su master:"
git log --oneline --all --graph
echo "Stato finale su master:"
git status
