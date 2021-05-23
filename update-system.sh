#!/bin/bash

set meta-flag on && set convert-meta off && set output-meta on #[Permet de mettre les accents]


aptitude update
aptitude safe-upgrade -y
aptitude purge && aptitude autoclean

echo
echo "===[Les packets ont été mis à jour et le cache nettoyé.]==="
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
