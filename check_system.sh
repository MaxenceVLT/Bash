echo "[Machine en marche depuis] :" & uptime -s
echo "[Les utilisateurs connectes] :" & w
echo "[Les dernieres connexions] :" & last -adF | head -40 | grep  -v reboot
echo "[Les processus en cours des utilisateurs] :" & ps -Af
