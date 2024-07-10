#! /bin/bash
# @edt ASIX.M01
# Febrer 2023
# Exemple del segon programa:
#
# Aprendre de procesar arguments

echo '$*: ' $*
echo '$@: ' $@
echo '$#: ' $#
echo '$0: ' $0
echo '$1: ' $1
echo '$2: ' $2
echo '$9: ' $9
echo '$10: ' $10
echo '$10: ' ${10}
echo '$11: ' $11
echo '$11: ' ${11}
echo '$$: ' $$
nom="puig"
echo "${nom}deworld"

