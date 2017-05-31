#!/bin/bash

rm -f toolList.txt

for i in $(pwd)/txt/*
do
  echo "$(basename $i | cut -f 1 -d '.')" >> $(pwd)/toolList.txt
done
