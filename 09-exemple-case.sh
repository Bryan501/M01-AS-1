#! /bin/bash
# @edt ASIX.M01
# Febrer 2023
# Exemple del 9 programa:
#
# si es nen, nene o no binari
# $ prog nom


# si es una vocal o una consonant
# $ prog lletra

# si es dl , dt ,dc ,dj, dv ---> laborable
# si es ds i dm ---> festiu
# altre


# validar nª arg
# 1-12
# xixa
# nª mes responda los dias


if [ $# -ne 1 ]
then
 echo "Error: numero arg incorrecte"
 echo "Usage: $0 més que vols mostrar els seus dies"
 exit 1
fi

mes=$1

if ! [[ $mes =~ ^[1-9]$|1[0-2]$ ]]
then
  echo "Error: numero arg $1 no vàlida"
  echo "Ha de ser qualsevol número que representi un mes"
  echo "Usage: $0 més que vols mostrar el seus dies"
exit 2
fi

case $mes in
	'1'|'3'|'5'|'6'|'8'|'10'|'12')
         echo "$mes té 31 dies a al mes"
         ;;
 	'4'|'7'|'9'|'11') 
 	echo "$mes té 30 dies al mes"
	 ;;
        '2')
	echo "$mes té 29 dies"
          ;;	
	*)
	echo "$mes és una altra cosa"
esac
exit 0

#--------------------------------#

case $1 in
 [ "dilluns" | "dimarts" | "dimecres" | "dijous" |"divendres" ])
	 echo "dia laborables"
	 ;;
 [ "dissabte" | "diumenge" ])
	 echo "dia festiu"
	 ;;
 *)
 	echo "altra cosa"
	;;
esac
exit 0

----------------

case $1 in
 [aeiou])
  echo "és una vocal"
   ;;
 [bcdfghjklmnpqrtstwxyz])
  echo "és una consonant"
  ;;
 *)
  echo "és una altra cosa"
  ;;
esac
exit 0

------------------

case $1 in
 "pere" | "pau" | "joan")
   echo "és un nen"
    ;;
 "marta" | "anna" | "julia")
   echo "és una nena"
    ;;
 *)
   echo "no binari"
    ;;
esac
exit 0
