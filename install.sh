#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    echo "Use root"
    exit 1
fi

apt update -y
apt install -y git curl whiptail qrencode wireguard ufw htop

cp vpspack /usr/bin/
chmod +x /usr/bin/vpspack

mkdir -p /etc/vpspack
touch /var/log/vpspack.log

echo "Instalado com sucesso! Use: VPSpack v2"
