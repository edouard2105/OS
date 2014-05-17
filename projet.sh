#!/bin/bash
#Mettre dans la variable l'URL du projet
set ssh://53760dae4382ec8b61000111@projet-edouard.rhcloud.com/~/git/projet.git/

#Ajout du site web 
git init
git clone $1

#Copie du projet APP (dossier site) dans projet
cd projet
rm index.php
cd
cp -r site/* projet
cd projet
git add -A :/
git commit -m "Ajout du site"
git push origin master

