#! /bin/bash

grup=$1
err=0

for login in "$*"; do
	shift
	sudo usermod -G $grup $login
	if [ $? -ne 0 ] ; then
		echo "$grup $login no associat" >> /dev/stderr
	((err++))
	fi
done
exit $err
