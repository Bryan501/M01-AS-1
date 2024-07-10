#! /bin/bash
# @edt ASIX.M01
# Febrer 2023
# Exemple del seté programa:
#
# si es un directori
# $ prog directori
#
# 1. numero de arg $#
# 2. $1 directori
# 3. ls $1

if [ $# -ne 1 ]
then
 echo "Error: numero arg incorrecte"
 echo "Usage: $0 directori"
 exit 1
fi

if [ ! -d $1 ]
then
 echo "Error: numero arg $1 no vàlida"
 echo "Ha de ser un directori, no pot ser un fitxer"
 echo "Usage: $0 directori"
 exit 2
fi

directori=$1

ls $directori
exit 0

