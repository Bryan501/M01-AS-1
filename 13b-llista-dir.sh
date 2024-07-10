#! /bin/bash
# 
# prog dir

if [ $# -ne 1 ]
then
 echo "Error: numero arg incorrecte"
 echo "Usage: $0 dir"
exit 1
fi

dir=$1

if ! [ -d $dir ]
then
 echo "ERROR: $dir no es un directori"
 echo "USAGE: $0 dir"
exit 2
fi

llista=$(ls $dir)

cont=1

for elem in $llista
do
 echo "$cont: $elem"
 ((cont++))
done

exit 0
