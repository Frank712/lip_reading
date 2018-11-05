#!/bin/bash

file_loss='loss.txt'

ls ./align/ > tmp0.txt

sed -e 's/.align//g' tmp0.txt > d_paths.txt

rm tmp0.txt

if [ -f file_loss ]; then
rm ${file_loss}
fi
touch ${file_loss}
