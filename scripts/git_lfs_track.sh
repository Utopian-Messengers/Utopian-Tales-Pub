#!/bin/bash
rep_dir=$(cd "$(dirname "$0")/../"; pwd)
size=51200
cd $rep_dir
find -type f -size +${size}k | grep -v .git | awk '{printf "%s\n",substr($0,3) }' > tmp.txt
cat tmp.txt | while read line
do
  # echo "${line}"
  git lfs track "$line"
done
rm -rf tmp.txt
