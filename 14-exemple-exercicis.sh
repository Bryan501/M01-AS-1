#! /bin/bash

for args in "$*" ; do 	
	grep "^$args:" /etc/passwd 
	if [ $? -eq 0 ]; then
		echo "Visca"
	else
		echo "kaka" >> /dev/stderr	
	fi
done
exit 0
