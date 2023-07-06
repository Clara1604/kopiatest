#!/bin/bash

#Variables
KopiaVersion="0.13.0"
version="kopia-${KopiaVersion}-linux-x64"
DownloadURL="https://github.com/kopia/kopia/releases/download/v${KopiaVersion}/${version}.tar.gz"
# Lien : https://github.com/kopia/kopia/releases/download/v0.13.0/kopia-0.13.0-linux-x64.tar.gz


mkdir tmp
cd tmp/
mkdir kopia
cd kopia/

wget $DownloadURL
tar -xzf ${version}.tar.gz

cd ${version}/
