#!/bin/bash

rm -f tools.list docs/tools.md

echo -e "---\nlayout: default\n---\n# [Tools](https://github." \
"com/liatrio/witdot/tree/master/tools)" >> docs/tools.md

for i in $(pwd)/tools/*
do
  tool=$(basename $i | cut -f 1 -d '.')
  url="https://github.com/liatrio/witdot/blob/master/tools/$tool.tool"
  echo "$tool" >> $(pwd)/tools.list
  echo "  - [$tool]($url)" >> $(pwd)/docs/tools.md
done

echo -e "\n[back](./)\n\n<small>This page was automatically generated" \
"via [this script](https://github.com/liatrio/witdot/blob/" \
"master/update.sh).</small>" >> docs/tools.md
