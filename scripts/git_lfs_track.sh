#!/bin/bash
rep_dir=$(cd "$(dirname "$0")/../"; pwd)
size=51200
cd $rep_dir
files=$(find -type f -size +${size}k | grep -v '.git')
for file in "$files":
do
  git lfs track "$file"
done
