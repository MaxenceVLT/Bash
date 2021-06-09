#!/bin/bash

echo "Entrer le reseau a scanner: " && read network
echo "En combien de Bits voulez-vous scanner:" && read networkbits

echo "Scan en cours"
nmap -sP $network/$networkbits
echo "Quelle IP voulez-vous scanner: " && read iptarget
nmap -r $iptarget

