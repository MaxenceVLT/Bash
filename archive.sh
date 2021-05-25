#!/bin/bash
set meta-flag on && set convert-meta off && set output-meta on #[Permet de mettre les accents]

cd /mnt/d/Maxence/Documents/Important/Logement_Quittances/
echo "vous étes ici: "&& pwd

sleep 2

echo""
echo "Les dossiers à compresser: "
ls

sleep 2

echo""
echo "Début de la compression"
tar -cvf Century21.tar Century21/
echo""
echo "Fin de la Compression"

sleep 2

echo""
echo "Déplacement de l'archive dans le dossier .Archive/"
mv Century21.tar .Archives/