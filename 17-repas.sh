#! /bin/bash
# @edt ASIX.M01
# Abril 2023
# Repàs:
#
# 1. Porcessar els arguments i mostrar per stdout només els 3 o més caracters
#
# 2. processar els arguments i comptar quantes n'hi ha de 3 o més caracters
#
# 3. Processar arguments que són matricules:
#    a) llistar les valides, del tipus: 9999-AAA.
#    b) stdout les que són vàlides, per stderr les no vàlides. Retorna de status el número
#       d'errors (de no vàlides).
#
#

## 1) 

# for args in "$@"
# do
#  contador=$(echo "$args" | grep -E "^.{4,}$")
#	
#  if [ -n "$contador" ]; then 
#     	 echo "$contador"
#  fi
# done
# exit 0

## 2)

# contador=0
#
# for arg in "$@"
# do
#  if echo "$arg" | grep -qE '^.{3,}$'
#  then
#     contador=$((contador+1))
#  fi
# done
#
# echo "$contador"
# exit 0

## 3)

# error=0
# 
# for matricula in "$@"
# do
#   matricula_correcte=$(echo "$matricula" | grep -E "^[0-9]{4}-[A-Z]{3}$")
#   if ! [ $? -eq 0 ]; then
#     ((error++))
#   fi
# done
# echo "matricules incorrectes $error"
# exit 0

