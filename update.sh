#!/bin/bash

rm -f tools.list
rm -rf docs/tools.md

echo "---" >> docs/tools.md
echo "layout: default" >> docs/tools.md
echo "---" >> docs/tools.md
echo "# [Tools](https://github.com/liatrio/witdot/tree/master/tools)" \
  >> docs/tools.md

for i in $(pwd)/tools/*
do
  tool=$(basename $i | cut -f 1 -d '.')
  url="https://github.com/liatrio/witdot/blob/master/tools/$tool.tool"
  echo "$tool" >> $(pwd)/tools.list
  echo "  - [$tool]($url)" >> $(pwd)/docs/tools.md
done

