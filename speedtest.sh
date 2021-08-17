file_result=/home/maxence/result.txt
echo ""
date >> $file_result
speedtest --simple >> $file_result
echo "_____________________________" >> $file_result
tail -n 5 $file_result | grep -v "_____________________________"
echo ""
echo "Le resultat est enregistre dans" $file_result
