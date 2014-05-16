#!/bin/bash

#Installer ruby et rybygems avec la commande 
#sudo apt-get install ruby-full rubygems git-core

#Installer RHC
#sudo gem install rhc

#Connexion à Openshift (login : edouard.decarpentry@gmail.com psw : rtrxxd)
rhc setup

#Création d'une application en php + ajout bdd mysql + phpmyadmin
rhc app create -a projetos -t php-5.3
rhc app cartridge add -a projetos -c mysql-5.5
rhc app cartridge add -a projetos -c phpmyadmin

