#!/bin/bash

if [ "$(id -u)" != "0" ]; then
   echo "Execute como root"
   exit 1
fi

apt update -y || yum update -y

apt install -y git curl || yum install -y git curl

cp vpspack /usr/bin/
chmod +x /usr/bin/vpspack

mkdir -p /etc/vpspack

echo "Instalado! Use: vpspack"
