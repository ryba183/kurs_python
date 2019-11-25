#!/bin/bash




f() {
	case $1 in
		2 | 3 | 4)
			echo "Ala ma $1 koty"
			;;
		1)
			echo "Ala ma kota"
			;;
		*)
			echo "Ala ma $1 kotow"
			;;
	esac
}

f 5
f 1
f 3

