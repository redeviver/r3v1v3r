#!/bin/bash

LOG="/var/log/vpspack.log"

OPTION=$(whiptail --menu "Usuários" 15 50 4 \
"1" "Criar" \
"2" "Deletar" \
"3" "Senha" \
"0" "Voltar" 3>&1 1>&2 2>&3)

case $OPTION in
    1)
        USER=$(whiptail --inputbox "Nome do usuário" 8 40 3>&1 1>&2 2>&3)
        adduser $USER
        echo "$(date) Criado $USER" >> $LOG
        ;;
    2)
        USER=$(whiptail --inputbox "Nome do usuário" 8 40 3>&1 1>&2 2>&3)
        deluser $USER
        echo "$(date) Deletado $USER" >> $LOG
        ;;
    3)
        USER=$(whiptail --inputbox "Nome do usuário" 8 40 3>&1 1>&2 2>&3)
        passwd $USER
        echo "$(date) Senha alterada $USER" >> $LOG
        ;;
esac
