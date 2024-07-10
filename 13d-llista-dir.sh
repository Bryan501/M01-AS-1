#! /bin/bash
# 
# prog dir

if [ $# -eq 0 ]
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


for dir in "$*"
do	
 if ! [ -d $dir ]
 then
  echo "ERROR: $dir no és un directori" >> /dev/stderr
 else
  llista_dir=$(ls $dir)
  echo "dir: $dir"
  for nom in $llista_dir
  do
    if [ -h $dir/$elem ]; then
     echo -e "\t$elem: és un simbolic link"
    elif [ -f $dir/$elem ]; then
     echo -e "\t$elem: és un regular file"
    elif [ -d $dir/$elem ]; then
     echo -e "\t$elem: és un directori"
    else
     echo -e "\t$elem: és una altre cosa"
    fi
  done
 fi
done
exit 0


