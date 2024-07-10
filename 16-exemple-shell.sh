#! /bin/bash

function informeShell(){
  llista_shells=$1
  (cut -d: -f7 /etc/passwd | uniq -c)
  for shell in $llista_shells
  do
    numlin=$(grep -c ":$shellS" /etc/passwd)
    if [ $numlin -ge 3 ]; then
     echo "Shell: $shell ----------"
      grep ":shells" /etc/passwd | sed -r 's/* (-*)$ /\t\1/'
    fi
    done
}
