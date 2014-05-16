#!/bin/bash
<<<<<<< HEAD
set ssh://5371f70e50044613ab000495@projetos-edouard.rhcloud.com/~/git/projetos.git/

#Sur openshift, créer une application (PHP 5.3 + MySQL)

#Copier la clé ssh sur Openshift manuellement à partir du fichier créé (.pub) grâce à la commande suivante :
#cat ~/.ssh/.id_rsa.pub

#Ajout du site web 
git init
git clone $1
=======

cat ~/.ssh/.id_rsa.pub
#Copier la clé ssh sur Openshift manuellement à partir du fichier créé (.pub)

git init
git clone ssh://5371f70e50044613ab000495@projetos-edouard.rhcloud.com/~/git/projetos.git/
>>>>>>> 53564f0ba9593c65e76dd2ac60344813d35a483f

#Copie du projet APP (dossier site) dans projetos
cp -R site projetos

cd projetos
git add -A
<<<<<<< HEAD
git commit -m "Ajout du site"
git push origin master

#Ajout de la base de donnée
cd
cp -r bdd.sql projetos
cd projetos
git commit -a -m "Ajout de la base de données"
git push origin

=======
git commit -m "first commit"
git push
>>>>>>> 53564f0ba9593c65e76dd2ac60344813d35a483f

