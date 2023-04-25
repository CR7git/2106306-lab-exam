#!/bin/bash

file=$1
s=0
while read line
do
	((s=s+1))
done<$file


echo $s

