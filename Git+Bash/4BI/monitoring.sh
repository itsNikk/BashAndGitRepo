#!/bin/bash

# Inizializzazione del repository
cd $HOME/Desktop

rm -rf monitoringRepo
git init monitoringRepo
cd monitoringRepo
echo "Repository inizializzato."

# Creazione di tre file e commit su master
echo "Creazione e commit di file su master..."
for i in {1..3}; do
    echo "Contenuto di file$i.txt" > "file$i.txt"
    git add "file$i.txt"
done
git commit -m "Commit iniziale su master: aggiunti file1.txt, file2.txt, file3.txt"

# Mostra log e stato su master
echo "Log su master dopo commit iniziale:"
git log --oneline --graph --decorate
echo "Stato su master:"
git status
echo "-----------------------------------"

# Creazione e committazione di nuovi file su feature_branch
git checkout -b feature_branch
echo "Passato a feature_branch e aggiunta di nuovi file..."

for i in {4..5}; do
    echo "Contenuto di file$i.txt" > "file$i.txt"
    git add "file$i.txt"
done
git commit -m "Commit su feature_branch: aggiunti file4.txt e file5.txt"

# Visualizza log e stato su feature_branch
echo "Log su feature_branch dopo aggiunta di nuovi file:"
git log --oneline --graph
echo "Stato su feature_branch:"
git status
echo "-----------------------------------"

# Rimozione di un file e commit del cambiamento
git rm file2.txt
git commit -m "Rimosso file2.txt su feature_branch"

# Visualizza log e stato dopo rimozione file
echo "Log su feature_branch dopo rimozione file2.txt:"
git log --oneline --graph
echo "Stato su feature_branch:"
git status
echo "-----------------------------------"

# Rinomina di un file e commit del cambiamento
git mv file3.txt file3-Rinominato.txt
git commit -m "Rinominato file3.txt in file3-Rinominato.txt su feature_branch"

# Visualizza log e stato dopo rinominazione
echo "Log su feature_branch dopo rinomina file3.txt:"
git log --oneline --graph 
echo "Stato su feature_branch:"
git status
echo "-----------------------------------"

# Ritorno su master e visualizzazione log e stato finali
git checkout master
echo "Tornato al branch master."

# Mostra log completo in modalità grafica e stato finale
echo "Log completo in modalità grafica:"
git log --oneline --graph --all
echo "Stato finale su master:"
git status
