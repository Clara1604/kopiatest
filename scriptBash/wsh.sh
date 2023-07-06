#!/bin/bash

#Variables
KopiaVersion="0.13.0"
version="kopia-${KopiaVersion}-linux-x64"
DownloadURL="https://github.com/kopia/kopia/releases/download/v${KopiaVersion}/${version}.tar.gz"
# Lien : https://github.com/kopia/kopia/releases/download/v0.13.0/kopia-0.13.0-linux-x64.tar.gz


# Création du répertoire 
mkdir app
cd app/
mkdir kopia
cd kopia/

# Téléchargement de Kopia
wget $DownloadURL

# Extraction de l'archive
tar -xzf ${version}.tar.gz

cd ${version}/

# Affichage du chemin vers l'exécutable Kopia
echo "Kopia a été installé dans /app/kopia"

# Exemple d'utilisation :
echo "Pour utiliser Kopia, exécutez /app/kopia/kopia"