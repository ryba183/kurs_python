#!/bin/bash


for i in `seq 0 10`; do
	echo "hi I'm a thred $i" > doo${i}.txt

done
