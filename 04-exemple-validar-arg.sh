#! /bin/bash
# @edt ASIX.M01
# Febrer 2023
# Exemple del quart programa:
#
# si num arg no es correcta plegar
# $ prog nom edat
#
# si el numero de arguments no toca plaguem
# $# =/ 2
# misatge error
# misatge usage
# exit


if [ $# -ne 2 ]
then
 echo "Error: numero arg incorrecte"
 echo "Usage: $0 nom edat" 
 exit 1
fi 

echo "nom: $1"
echo "edat: $2"
exit 0
