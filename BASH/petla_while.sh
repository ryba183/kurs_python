#!/bin/bash


cd /tmp |ls | while read a b
do
       	echo "<a href=" $a">"$a"</a>";
done 

