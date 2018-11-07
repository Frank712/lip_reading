#!/bin/bash

dir='../dataWords'
file_count='../count.txt'

if [ -f ${file_count} ]; then
rm ${file_count}
fi
touch '../count.txt'
cd ${dir}
ls
for line in $(cat ../w_paths.txt); do
cd ${line}
#ls | wc -l
#cat >> ${file_count}
ls | wc -l | cat >> '../../count.txt'
cd ..
done




