#!/bin/bash

#Mettre dans les variables : 
#1.URL du projet 
#2.Nom de la base de données 
#3.User BDD
#4.Password BDD
set ssh://53760dae4382ec8b61000111@projet-edouard.rhcloud.com/~/git/projet.git/ projet adminQjM djffP

#Ajout du site web 
git init
git clone $1

#Copie du projet APP (dossier site) dans projet
cd projet
rm index.php
cd
cp -r site/* projet
cd projet

#Modification des identifiants de la base de données
echo '<?php
define("DB_HOST", "localhost");
define("DB_LOGIN", "'$2'");
define("DB_PASS", "'$3'");
define("DB_BDD", "'$1'");
 ?>' > config.php

#Commit
git add -A :/
git commit -m "Ajout du site"
git push origin master

