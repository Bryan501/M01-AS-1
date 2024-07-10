#! /bin/bash
# @edt ASIX.M01
# Febrer 2023
# Exemple del tercer programa:
#
# if: indicar si és major d'edat, poblacio activa o jubilat
# $ prog edat


# validar si existeix un argumemt

if [ $# -ne 1 ]
then
 echo "Error: numero arg incorrecte"
 echo "Usage: $0 edat"
 exit 1
fi

edat=$1

if [ $edat -lt 18 ]
then
 echo "menor d'edat"
elif [ $edat -lt 65 ]
then
 echo "poblacio activa"
else
 echo "jubilat"
fi
exit 0
