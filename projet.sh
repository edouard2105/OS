#!/bin/bash
set ssh://5371f70e50044613ab000495@projetos-edouard.rhcloud.com/~/git/projetos.git/

#Connexion à Openshift (login : edouard.decarpentry@gmail.com password : rtrxxd)
rhc setup

#Création d'une application en php + ajout bdd mysql + phpmyadmin
rhc app create -a projet -t php-5.3
rhc app cartridge add -a projet -c mysql-5.5
rhc app cartridge add -a projet -c phpmyadmin

#Importer mannuellement la BDD via un dump

#Ajout de la clé ssh sur Openshift
rhc sshkey add cat ~/.ssh/.id_rsa.pub

#Ajout du site web 
git init
git clone $1

#Copie du projet APP (dossier site) dans projet
mkdir projet
cp -R site projet
cd projet
git add -A
git commit -m "Ajout du site"
git push origin master

