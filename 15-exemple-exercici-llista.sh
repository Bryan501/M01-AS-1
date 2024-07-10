#! /bin/bash
# Març 2023
# @edt ASIX M01
# itera i afegir elements a una llista
#
# $ prog [ -a -b -c -d ] arg...

opcions=""
arguments=""

for arg in "$*" 
do
	case $arg in
		"-a"|"-b"|"-c"|"-d")
			opcions="$opcions $arg" ;;
		*)
			arguments="$arguments $arg" ;;
	esac
done
echo "opcions: $opcions"
echo "arguments: $arguments"

