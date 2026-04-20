#!/bin/bash

echo "Configuração de VPN"

echo "[1] Instalar WireGuard"
echo "[2] Instalar OpenVPN"
read -p "Escolha: " vpn

case $vpn in
    1)
        apt install -y wireguard
        echo "WireGuard instalado"
        ;;
    2)
        apt install -y openvpn
        echo "OpenVPN instalado"
        ;;
esac
