#!/bin/bash

# Descarga e instalación del comando figurine para que se ejecute en cada terminal
#

wget https://github.com/arsham/figurine/releases/download/v1.3.0/figurine_linux_amd64_v1.3.0.tar.gz
tar -xzf figurine_linux_amd64_v1.3.0.tar.gz
cd deploy
mv figurine /usr/local/bin/
figurine -f "Banner.flf" "$USER@$(hostname)"
echo 'figurine -f "Banner.flf" "$USER@$(hostname)"' >> ~/.bashrc
source ~/.bashrc

