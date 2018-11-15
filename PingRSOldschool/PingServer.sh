#!/bin/bash

COUNTER=1
rm -rf list.txt
while [ $COUNTER -lt 226 ]; do
  STRING="ms: World $COUNTER"
  ping oldschool${COUNTER}.runescape.com -c 2 | cut -d= -f 4 | sed -e '/ms/!d' -e "s/ms/$STRING/g" | head -1 >> list.txt
  let COUNTER=COUNTER+1
done

TOP=5
let MAX=TOP+1
COUNT=1
echo -e "Top $TOP lowest ping:"
while [ $COUNT -lt $MAX ]; do
  echo -e "$COUNT: `sort -n list.txt | sed -n "$COUNT p"`"
  let COUNT=COUNT+1
done
