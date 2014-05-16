#!/bin/bash
set ssh://5371f70e50044613ab000495@projetos-edouard.rhcloud.com/~/git/projetos.git/

#Sur openshift, créer une application (PHP 5.3 + MySQL)

#Copier la clé ssh sur Openshift manuellement à partir du fichier créé (.pub) grâce à la commande suivante :
#cat ~/.ssh/.id_rsa.pub

#Ajout du site web 
git init
git clone $1

#Copie du projet APP (dossier site) dans projetos
cp -R site projetos
cd projetos
git add -A
git commit -m "Ajout du site"
git push origin master


#Ajout de la base de donnée
cd
cp -r bdd.sql projetos
cd projetos
git add bdd.sql
git commit -a -m "Ajout de la base de données"
git push origin


