#!/bin/bash

f1() {
	echo "wywolanie z $# parametrami, parametry to: $@"

	[ $# -lt 2] && return;
	echo -e "drugi: $2\npierwszy: $1"

	#albo kolejnych w petli
	for a in "$@"; do echo $a; done

	#lub z uzcyiem polecnia shift
	for i in `seq 1 $#`; do
		echo $1
		shift   # powoduje zapomienie $1
			# i przenumerowanie argumentow pozycyjnych o 1
			# wylywa na wartosci $@ $# itp
		done
		# funkacja moze zwracac tylko warosc numeryczna -- tzw kod powrotu
		return 83
	}




f1 a "c b" d
