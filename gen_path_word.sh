#!/bin/bash

dir='dataWords'
ls ./save > tmp1.txt

sed -e 's/_.*//g' tmp1.txt > tmp2.txt

cat tmp2.txt | sort | uniq > w_paths.txt

rm tmp1.txt
rm tmp2.txt

if [ ! -d ${dir} ]; then
mkdir ${dir}
echo "Se creó el directorio ${dir}"
fi

cd ${dir}

for line in $(cat ../w_paths.txt); do
if [ ! -d ${line} ]; then
mkdir ${line};
echo "Se creó el directorio ${line}"
else
echo "El directorio ${line} ya existe"
fi
done

