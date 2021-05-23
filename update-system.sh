#!/bin/bash

aptitude update
aptitude safe-upgrade -y
aptitude purge && aptitude autoclean
echo
echo "===[Les packets ont   t   mis    jour et le cache nettoy  .]==="
echo
sleep 2

while true; do
    read -p "Voulez-vous mettre    jour le syst  me entier ? O/N " choice
    case $choice in
        [Oo]* ) echo "===[Le syst  me va etre mit    jour.]===" && aptitude full-upgrade && echo "===[Le systeme a   t   mit    jour]===" && exit;;
        [Nn]* ) echo "===[Vous avez choisi de ne pas mettre    jour le syst  me.]===" && exit;;
            * ) echo "===[Veuillez choisir Oui ou Non.]===";;
    esac
done