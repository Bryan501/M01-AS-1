#! /bin/bash
# @edt ASIX.M01
# Març 2023
# Exemple del 11 programa:
#
# 1) contador creixen des de 1 fins a 10
#    $ prog num
#
# 2) contador decreixent des de n fins a 0
#    $ prog num
#
# 3) Iterà per la llista d'arguments
#    $ prog llista
#
# 4) Procesar entrada estandard línea a línea
#    $ prog llista
#
# 5) numerar stdin línea a línea
#    $ line
#
# 6) sense numerar per stdin linia a linia fins token FI
#    $ FI
# 7) Numero i mostra en majuscules la entrada estandart
#
#
# ------(7)-----------#

cont=1

while read -r line
do
 echo "$cont: $line" | tr 'a-z' 'A-Z'
 ((cont ++))
done
exit 0

#-------(6)----------#

read -r line

while [ "$line" != "FI" ]
do
 echo "$line"
 read -r line 
done
exit 0

#--------(5)---------------#

cont=0

while read -r line
do
 echo "$cont: $line"
 ((cont ++))
done
exit 0


#--------(4)-------------#

while read -r line
do
 echo "$line"
done
		# llegeix una l'inea d'entrada i la mostra < 13.sh o ps | 13.sh
exit 0

#-----------(3)----------#

while [ -n "$1" ]
do
 echo "$1 $# $*"
 shift
done
exit 0

#-------(2)---------------#

num=$1
MIN=0
while [ $num -ge $MIN ]
do 
 echo "$num"
 ((num--))
done
exit 0

#-----------(1)---------------#

MAX=10
num=1

while [ $num -lt $MAX ] 
do 
 echo "$num"
 ((num++))  #Incrementa
done
exit 0
