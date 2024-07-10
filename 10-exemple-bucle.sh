#! /bin/bash
# @edt ASIX.M01
# Febrer 2023
# Exemple del 11 programa:
#
# 1) Iterà per un conjunt d'elements
#    $ prog for 1 iteracio
#
# 2) Iterà per un conjunt d'elements 2
#    $ prog for 4 iteracions
#
# 3) Iterà per el valor d'una variable
#    $ prog for ls
#
# 4) Iterà i mostrar la llista d'arguments
#    $ prog for $*
#
# 5) Encapsular el "$*" 
#    $ prog for "$*"
#
# 6) Tota la llista, s'expandeix aunque estigui encapsulat
#    $ prog for "$@"
#
# 7) Iterà cada valor i un contador
#    $ prog for cont
#
# 8) Llista el fitxers del directori actiu numerats
#    $ prog for $*
#
# 9) llistar tots el logins numerats
#    $ prog for llistat_login
#
# 10) Li pasem arg que son numeros i los suma, diu el total
#     $ prog for num..
#
# 11) Li pasem arg que son notas i diu si suspés, aprova, notable o exelent 
#	$ prog for notas...

#-----(11)----#

sum=0

for notas in $@
do
 if ! [ $notas -ge 0 -a $notas -le 10 ];
then
 echo "Error: nota ($notas) ha de ser entre [0-10]" >> /dev/stderr
 elif [ $notas -lt 5 ];
then
 echo "Tens una nota de $notas has suspés"
 elif [ $notas -lt 7 ];
then
 echo "Tens una nota de $notas has aprovat"
 elif [ $notas -lt 9 ];
then
 echo "Tens una nota de $notas has tret un notable"
 else
 echo "Tens una nota de $notas has tret un excel*lent"
fi
done
exit 0

#------(10)--------#

sum=0

for num in $@
do
 sum=$((sum + num))
done
 echo "La suma dels números ingresats són: $sum"
exit 0  

#---------(9)--------#

llistat_login=$(cut -d: -f1 /etc/passwd | sort)
cont=1

for login in $llistat_login
do 
 echo "$cont: $login"   
 ((cont++)) 
done
exit 0

#------(8)---------#
llistat_actiu=$(ls)
cont=1

for actiu in $llistat_actiu
do
 echo "$cont: $actiu"
 ((cont ++))
done
exit 0

#---------(7)-------#

cont=1

for arg in $* 
do 
 echo "$cont: $arg"   
 cont=$((cont+1)) 
done
exit 0

#---------(6)----------#

for arg in "$@"  
do
 echo "$arg"
done
exit 0

#-------(5)----------#

for arg in "$*"  
do
 echo "$arg"
done
exit 0

#-------(4)--------#

for arg in $*  # por cada arg de los args posats fara el seu echo
do
 echo "$nom"
done
exit 0

#-------(3)---------#

llistat=$(ls) # command substitution

for nom in $llistat
do 
 echo "$nom"   # Obtenir una llista de valors, aplicarlo i fer una acció 
done
exit 0

#-----(2)--------#

for nom in "pere marta pau anna"
do
 echo "$nom"   # 1 iteració
done
exit 0

#-----(1)-------#

for nom in "pere" "marta" "pau" "anna"
do
 echo "$nom"  # 4 iteracions
done
exit 0
