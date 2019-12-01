#!/bin/bas 


for i in `seq 0 10`; do
	ex doo${i}.txt <<-EOF
	:i
	Hi I was change by $i iteration on login.icm
	.
	wq
	EOF
done

