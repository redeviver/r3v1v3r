#!/bin/bash

apt install -y wireguard qrencode

wg genkey | tee server.key | wg pubkey > server.pub

IP="10.0.0.1/24"
PORT="51820"

cat <<EOF > /etc/wireguard/wg0.conf
[Interface]
Address = $IP
ListenPort = $PORT
PrivateKey = $(cat server.key)
EOF

systemctl enable wg-quick@wg0
systemctl start wg-quick@wg0

CLIENT_PRIV=$(wg genkey)
CLIENT_PUB=$(echo $CLIENT_PRIV | wg pubkey)

cat <<EOF > client.conf
[Interface]
PrivateKey = $CLIENT_PRIV
Address = 10.0.0.2/24

[Peer]
PublicKey = $(cat server.pub)
Endpoint = $(curl -s ifconfig.me):$PORT
AllowedIPs = 0.0.0.0/0
EOF

qrencode -t ansiutf8 < client.conf

echo "Cliente gerado!"
