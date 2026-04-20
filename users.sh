#!/bin/bash

echo "[1] Criar usuário"
echo "[2] Deletar usuário"
echo "[3] Redefinir senha"

read -p "Escolha: " userop

case $userop in
    1)
        read -p "Nome: " user
        adduser $user
        ;;
    2)
        read -p "Nome: " user
        deluser $user
        ;;
    3)
        read -p "Nome: " user
        passwd $user
        ;;
esac
