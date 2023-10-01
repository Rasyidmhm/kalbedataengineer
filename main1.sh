#!/bin/bash

path=/hdfs/data/data1
name_of_directory=data1
dir=$path/$name_of_directory
filename_excel=daily_market_price.xlsx
source_dir=/local/data/market

if [ -d "$dir" ]; then
    echo "Ada Direktori ${name_of_directory}!"
    cp $source_dir/$filename_excel $dir/
    echo  "File Pindah Berhasil!"
else
    echo "Direktori ${name_of_directory} Tidak ada!"
    mkdir "$dir"
    exit 1
fi
