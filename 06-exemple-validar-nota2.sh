#! /bin/bash
# @edt ASIX.M01
# Febrer 2023
# Exemple del sisé programa:
#
# validar nota
# suspés aprobat notable excelent
# $ prog nota

if [ $# -ne 1 ]
then
 echo "Error: numero arg incorrecte"
 echo "Usage: $0 nota"
 exit 1
fi

if ! [ $1 -ge 0 -a $1 -le 10 ]  
then
 echo "Error: numero valor $1 no vàlida"
 echo "nota pren valor de 0 a 10"
 echo "Usage: $0 nota" 
 exit 2
fi

nota=$1

if [ $nota -lt 5 ]
then
 echo "Suspés"
elif [ $nota -ge 5 -a $nota -le 6 ]
then 
 echo "Aprobat"
elif [ $nota -ge 7 -a $nota -le 8 ]
then
 echo "Notable"
else
 echo "Execelent" 
fi
exit 0

