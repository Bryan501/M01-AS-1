#! /bin/bash

# 4) Processar stdin cmostrant per stdout les línies numerades i en majúscules..
# 5) Processar stdin mostrant per stdout les línies de menys de 50 caràcters.
# 6) Processar per stdin línies d’entrada tipus “Tom Snyder” i mostrar per stdout la línia
#   en format → T. Snyder.


# 4 

# contador=0
# while read -r line
# do
#   contador=$((contador+1))
#   echo $contador':' $line | tr 'a-z' 'A-Z'
# done
# exit 0

#5

# contador=1
# while read -r line
# do
#  if echo "$line" | grep -E "^.{1,49}$"; then
#    echo "$contador : $line"
#    ((contador++))
#  fi
# done

while read -r line
do
  if echo "$line" | grep -E "^[A-Z][a-z]+ [A-Z][a-z]+$"; then
    nou_format=$(echo "$line" | sed -E 's/([A-Z])[a-z]+ ([A-Z][a-z]+)/\1. \2/g')
    echo "$nou_format"
  fi
done
exit 0
