#! /bin/bash
# @edt ASIX.M01
# Febrer 2023
# Exemple del octé programa:
# 
# si es un regular file, un directori i un simbolic link
# $ prog regular file dir link
#

if [ $# -ne 1 ]
then
 echo "Error: numero arg incorrecte"
 echo "Usage: $0 regular file, dir or link"
 exit 1
fi

if [ ! -e $fit ]
then
 echo "Error: $fit no existeix"
 echo "Ha de ser un directori, regular file o simbolic link"
 echo "Usage: $0"
 exit 2

fit=$1

elif [ -f $fit ]
then
 echo "$fit és un regular file"
elif [ -h $fit ]
then
 echo "$fit ñes un fitxer simbolic"
elif [ -d $fit ]
then
 echo "$fit és un fitxer directori"
else
 echo "$fit és una altra cosa"
fi
exit 0
