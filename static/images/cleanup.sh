#!/bin/bash

for i in `find . -name \*[0-9]x[0-9]\* | sed -En '/-([0-9]+x[0-9]+\.(jpg|png|gif))/p' | tr ' ' '#'`; do 
  i=`echo $i | tr '#' ' '`; 
  rm $i
done
