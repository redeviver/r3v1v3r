#!/bin/bash

read -p "Host: " host
read -p "Porta local: " lport
read -p "Destino: " dest
read -p "Porta remota: " rport

ssh -L $lport:$dest:$rport $host
