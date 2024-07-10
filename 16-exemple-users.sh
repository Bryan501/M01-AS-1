#! /bin/bash

function showUid(){
  uid=$1
  linia=$(grep "^[^:]*:[^:]*:$uid:" /etc/passwd)
  login=$(echo $linia | cut -d: -f1)
  gid=$(echo $linia | cut -d: -f4)
  gecos=$(echo $linia | cut -d: -f5)
  home=$(echo $linia | cut -d: -f6)
  shell=$(echo $linia | cut -d: -f7)

  echo "login: $login"
  echo "uid: $uid"
  echo "gid: $gin"
  echo "gecos: $gecos"
  echo "home: $home"
  echo "shell: $shell"
}

function suma(){
  suma=$(($1+$2))
  echo $suma
 return 0
 exit 0
}

function multiplica(){
  multi=$(($1*$2))
  echo $multi
  return 0
}

function showllistaUID(){
  for uid in $*
  do
    grep -q "^[^:]*:[^:]*:$uid:" /etc/passwd
    if [ $? -ne 0 ]; then
      echo "Error! UID $uid inexistent" >> /dev/stderr
    else
      showUid $uid
      echo "------------"
    fi
  done
}
