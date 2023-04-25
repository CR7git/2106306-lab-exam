#!/bin/bash


file=$1
field=$2 
value=$3
arg=1
x="${file:0:2}""_""$field""_""$value"
touch $x.csv
lines=$( grep -iw "$value" "$file"|wc -l )
head=$( head -n $arg<"$file" )
echo "FIle name $file field name $field field value $value total number of lines $lines">>$x.csv
echo "Header $head">>$x.csv
echo $( grep -iw $value $file )>>$x.csv


