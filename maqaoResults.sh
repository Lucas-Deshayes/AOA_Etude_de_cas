#!/bin/sh

tempName="html_one_TEMP"
maqaoBase="maqao"
htmlBaseOne="html_one"
[ ! -d "$htmlBaseOne" ] && mkdir "$htmlBaseOne"
cd "$maqaoBase" || exit

echo "###"
echo "Debut du script"
echo "###"
for maqaoFolder in maqao_*
do
    echo "---"
    echo "Traitement de $maqaoFolder..."
    html_one=$(ls "$maqaoFolder/RESULTS/")
    if [ -n "$html_one" ]; then
        if [ ! -d "../$htmlBaseOne/${maqaoFolder}_one_html" ]; then
            echo "Copie de $maqaoFolder/RESULTS/$html_one ..."
            cp -r "$maqaoFolder/RESULTS/$html_one" $tempName 
            echo "Deplacement de $tempName a ../$htmlBaseOne ..."
            mv $tempName "../$htmlBaseOne"
            mv "../$htmlBaseOne/$tempName" "../$htmlBaseOne/${maqaoFolder}_one_html"
            echo "Traitement de $maqaoFolder fini !"
        else
            >&2 echo "erreur: Traitement deja realise pour \"$maqaoFolder\" dans \"$htmlBaseOne\""
        fi
    else
        >&2 echo "erreur: \"$maqaoFolder\": Dossier \"RESULTS\" introuveable"
    fi
    echo "---"
done
echo "###"
echo "Fin du script"
echo "###"