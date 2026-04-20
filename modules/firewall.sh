#!/bin/bash

apt install -y ufw

ufw allow ssh
ufw allow 51820/udp

ufw enable

echo "Firewall ativo"
