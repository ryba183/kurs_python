#!/bin/bash



if grep '^root:' /etc/passwd > /dev/null; then
	echo /etc/passwd zawiera root-a;
fi


grep '^root:' /etc/passwd > /dev/null && echo /etc/passwd zawiera root-a
