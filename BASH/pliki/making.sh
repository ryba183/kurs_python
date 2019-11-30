#!/bin/bash


for i in `seq 0 10` ; do
	ex foo${i}.txt <<-EOF
		:i
		"Hi i am ${i} iteration"
		.
		wq
	EOF
done
