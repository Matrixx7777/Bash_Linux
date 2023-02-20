#!/bin/bash

#Zad 1
stat ./Desktop/folder/bash.sh
echo "Dawid Kocik"
lsb_release -a
echo $BASH_VERSION
cd ./Desktop/folder
ls -l
ls | wc -l
cd

#Zad 2
echo who -all > ./Desktop/folder/who.txt
echo /etc/passwd > ./Desktop/folder/passwd_1.txt

#Zad 3
echo String=Dawid
echo "Imię autora skryptu to: $String jako String"

#Zad 4
cd./Desktop/folder
if[ $(ls | wc -l) -gt 10 ];
then
echo "Liczba plików w lokalizacji jest mniejsza od 10"
echo "Pusto tutaj, dodam plik"
touch plik.sh
chmod 751 plik.sh
$(ls -l) > plik.sh
./plik.sh

#Zad 5
df -h | awk 'NR>1{print $1 $2 $3 $4 "/" $5}'

#Zad 6
rand=$(( ( RANDOM % 3 )  + 1 ))

while : ; do
     read -p "Enter an integer between 0 and 10 :  " input
    [ "$input" -eq "$rand" ] && echo -e "\nCorrect\n" && break
    echo -e "\n  Try again...\n"
done

#Zad 7
GREEN='\033[0;32m'
NC='\033[0m' #No color
echo -e "$(tput bold)Project$(tput sgr0) ${GREEN}${HOSTNAME}${NC}"
