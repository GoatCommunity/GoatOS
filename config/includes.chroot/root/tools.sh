#!/bin/bash
echo "Instalando ferramentas externas"

# VSCodium
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' | tee /etc/apt/sources.list.d/vscodium.list
apt update && apt install codium -y

# Insomnia 
curl -1sLf 'https://packages.konghq.com/public/insomnia/setup.deb.sh' | bash
apt install insomnia -y

echo "Pronto!"

