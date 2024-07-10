#! /bin/bash
# @edt ASIX.M01
# Febrer 2023
# Exemple del cinqué programa:
#
# validar nota
# $ prog nota

if [ $# -ne 1 ]
then
 echo "Error: numero arg incorrecte"
 echo "Usage: $0 nota"
 exit 1
fi

if [ $1 -gt 0 -a $1 -lt 10 ] 
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
else
 echo "Aprobat" 
fi
exit 0
