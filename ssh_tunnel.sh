#!/bin/bash

echo "Tunelamento SSH"

read -p "Host: " host
read -p "Porta local: " lport
read -p "Porta remota: " rport

ssh -L $lport:localhost:$rport $host
