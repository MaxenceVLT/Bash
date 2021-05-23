#!/bin/bash

aptitude update
aptitude safe-upgrade -y
aptitude purge && aptitude autoclean
echo
echo "===[Les packets ont   t   mis    jour et le cache nettoy  .]==="
echo
sleep 2

while true; do
    read -p "Voulez-vous mettre à jour le système entier ? O/N " choice
    case $choice in
        [Oo]* ) echo "===[Le système va etre mit à jour.]===" && aptitude full-upgrade && echo "===[Le systeme a été mit à jour]===" && exit;;
        [Nn]* ) echo "===[Vous avez choisi de ne pas mettre à jour le système.]===" && exit;;
            * ) echo "===[Veuillez choisir Oui ou Non.]===";;
    esac
done
