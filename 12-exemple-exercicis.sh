#! /bin/bash
# @edt ASIX.M01
# Febrer 2023
# Exemple 12 repàs:
#
# 1) Mostrar l'entrada estandard numerat linea a linea
#    $ prog read -r line
#  
# 2) Mostra els arguments rebuts linea a linea, numerats
#    $ prog read
# 
# 3) Fer un comptador des de zero fins al valor idicat per l'argument rebut
#    $ prog cont
#
# 4) Fer un programa que rep com a arguments numeros de mes i indica per a cada
# mes rebuts quants dies te
#    $ prog mes
#
# 5) Nostrar linia a linia l'entrada estandard, retallant nomes els primers 50 carac.
#    $ prog cut
#
# 6) Fer un programa que rep com a arg noms de dies de la setmana i mostra quants dies
# eren laborables i quants festius. Si l'argument no es un dia de la setmana genera error
# pero el prog segueix 
#    $ prog dies
#
# 7) Processar linia a linea l'entrada estandard, si la linea te mes de 60 caracters la
# mostra, si no no
#    $ prog line
#
# 8) Fer un programa que rep com a args noms d'usuari, si existeixen en el sistema mostra
# el nom per stdout. SI no existeix el mostra per stderr
#    $ prog user
#
# 9) Fer un programa que rep per stdin noms d'usuari un per linea, si existeixen en el sistema
# mostra el nom per stdout. Si no existeix per stderr
#    $ prog user
#
# 10) Fer un programa que rep com a arg un numero indicatiu del numero maxim de linies a mostrar. 
# El programa processa stdin linia a linia i mostra numerades un maxim de num linies
#    $ prog num


#-----------(10)-------------#

MAX=$1
num=1

while [ $num -le $MAX ]
do
 echo "$num"
 ((num++))
done
exit 0

#-----------(9)-------------#

user=$1

while read -r user; do
	grep -q "^$user:" /etc/passwd
	if [ "$?" -eq 0 ]; then
		echo "$?"
	else
 		echo "ERROR: $user" >> /dev/stderr
fi
done
exit 0

#-----------(8)-------------#

user=$1

for user in "$@"
do
grep "^$user:" /etc/passwd
 if [ $? -eq 0 ] 
then
 echo "$?"
else
 echo "ERROR: $user" >> /dev/stderr
fi
done
exit 0

#-----------(7)-------------#

while read -r line
do
 echo "$line" | grep "^.{61}"
done
exit 0

#-----------(6)-------------#

for dia in "$@"
do
case "$dia" in
 'dilluns'|'dimarts'|'dimecres'|'dijous'|'divendres')
  echo "$dia es un dia laborable"	    
 ;; 	
 'dissabte'|'diumenge')
 echo "$dia es un dia festiu"
 ;;
 *)
 echo "Error: $dia no es un dia de la setmana" >> /dev/stderr
 exit 1
 ;;
esac

done

exit 0


#-----------(5)-------------#

while read -r line
do
 echo "$line" | cut -c1-50
done

exit 0

#-----------(4)-------------#

mes=$1

case $mes in
	'1'|'3'|'5'|'6'|'8'|'10'|'11')
	echo "el mes $mes te 30 dies"
	;;
  	'4'|'7'|'9'|'12')
	echo "el mes $mes te 31 dies"
	;;
	'2')
	echo "el mes $mes te 29 dies"
	;;
	*)
	echo "$mes es una altre cosa"
esac
exit 0


#-----------(3)-------------#

num=$1
cont=0

while [ $num -ge $cont ]
do
 echo "$cont"
 ((cont++))
done
exit 0


#-----------(2)-------------#

cont=0

for args in "$@"
do
echo "$cont: $args"
 ((cont++))
done
exit 0

#-----------(1)-------------#

cont=0

while read -r line
do
echo "$cont: $line"
 ((cont++))
done
exit 0
