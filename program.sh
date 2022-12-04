#!/bin/bash
url='https://www.initiatives-coeur.fr/resume-dons'
output=beta.txt
touch $output value.txt
curl -o $output $url
grep -oP '(?<=p class="font-weight-light font-size-lg-5 font-size-405 animate-compteur" data-value=").*?(?="></p>)' $ou>#less value.txt
Msg=$(head -n 2 value.txt)
Token="PUT-YOUR-TOKEN-HERE"
ID="PUT-YOUR-ID-HERE"
curl -s "https://api.telegram.org/bot$Token/sendMessage?chat_id=$ID&text=$Msg"
rm value.txt
