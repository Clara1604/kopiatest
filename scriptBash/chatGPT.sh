#!/bin/bash

# Définition des variables
KopiaVersion="0.13.0"
DownloadURL="https://github.com/kopia/kopia/releases/download/v${KopiaVersion}/kopia-${KopiaVersion}-linux-arm64.tar.gz"
TempDir="/tmp/kopia"

# Création du répertoire temporaire
mkdir -p $TempDir
cd $TempDir

# Téléchargement de Kopia
wget $DownloadURL

# Extraction de l'archive
tar -xzf kopia_${KopiaVersion}_linux_x86_64.tar.gz

# Déplacement des fichiers dans le dossier d'installation
mkdir -p /opt/kopia
cp -r kopia_${KopiaVersion}_linux_x86_64/* /opt/kopia

# Nettoyage des fichiers temporaires
rm -rf $TempDir

# Affichage du chemin vers l'exécutable Kopia
echo "Kopia a été installé dans /opt/kopia"

# Exemple d'utilisation :
echo "Pour utiliser Kopia, exécutez /opt/kopia/kopia"



#Ce script télécharge la version spécifiée de Kopia à partir 
#de GitHub, extrait l'archive, déplace les fichiers dans le 
#dossier /opt/kopia sur votre serveur Clever Cloud, puis nettoie 
#les fichiers temporaires. Enfin, il affiche le chemin vers 
#l'exécutable Kopia et donne un exemple d'utilisation.

#Assurez-vous d'exécuter le script en tant qu'utilisateur disposant 
#des permissions nécessaires pour créer des répertoires et copier 
#des fichiers sur votre serveur Clever Cloud. Vous pouvez enregistrer 
#ce script dans un fichier avec une extension .sh, par exemple install-kopia.sh, 
#puis exécuter le script en utilisant la commande bash install-kopia.sh.