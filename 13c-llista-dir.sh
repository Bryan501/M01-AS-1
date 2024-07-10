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

for elem in $llista
do
if [ -h $dir/$elem ]
then
 echo "$elem: és un simbolic link"
elif [ -f $dir/$elem ]
then
 echo "$elem: és un regular file"
elif [ -d $dir/$elem ]
then
 echo "$elem: és un directori"
else
 echo "$elem: és una altre cosa"
fi
done

exit 0


