#!/bin/bash

rm -f tools.list

for i in $(pwd)/tools/*
do
  echo "$(basename $i | cut -f 1 -d '.')" >> $(pwd)/tools.list
done
