#!/bin/sh

for d in $*
do
  if [ -d brapps-code/learnjs/$d ]; then
    cp -fr brapps-code/learnjs/$d/public public
    git commit -a -m "loaded $d"
  else
    echo $d not found
  fi
done
