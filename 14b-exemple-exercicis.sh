#! /bin/bash

ok=0
err=0

for login in "$*" ; do
	grep -q "^$login:" /etc/passwd
	if [ $? -eq 0 ]; then
		echo "$login"
	((ok++))
	else
		echo "$login" >> /dev/stderr
	((err++))
	fi
done
echo "$#, $ok, $err"

if [ $err -ne 0 ] ; then
exit 0
fi

exit 1
