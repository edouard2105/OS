#!/bin/bash

cat ~/.ssh/.id_rsa.pub
#Copier la clé ssh sur Openshift manuellement à partir du fichier créé (.pub)

git init
git clone ssh://5371f70e50044613ab000495@projetos-edouard.rhcloud.com/~/git/projetos.git/

#Copie du projet APP (dossier site) dans projetos
cp -R site projetos

cd projetos
git add -A
git commit -m "first commit"
git push

