
#Podstawowe polecenia
# ls --help | less
# ls -lista, jesli chcemu ustawic flage za komenda to jesli jest ona jedno literowa stawiamy -
# w sytulacji kiedy jest ona wieloznakowa stawiamy --. 
# Pionowa kreska | (nad enterem) jest pipline, rura ktora pozwala na przechodzenie pomiedzy poleceniami
# wynik jednego polecenia jest wejsciem do kolejnego programu/polecenia
# Przy pomocy > lub >> przekierowywujemy wyjscie z programu do kolejnego, np zapisywanie wynikow
# Vim mozemy uzywac do edycji programow, w skrypcie Linux:Podstawowe... znajduje sie opis jak dziala
# klawiszologia.
# Przy pomocy komendy cd, mozemy zmieniac katalogii, cd przenosi nas do katalogu glownego, cd <...> wskazana
# sciezka przenosi nas tam gdzie chcemy, jesli chcemy wroci o katalog wczesniej to cd ..
# 
#
#
#PODSTAWOWE OPERACJE
#!/bin/bash

zmiennaA=-91
zmiennaB="qa z"
zmiennaC=98.6 #napisa a nie liczba

echo $zmiennaA ${zmiennaA}AA
echo "$zmiennaA ${zmiennaA}AA"
echo '$zmiennaA ${zmiennaA}AA'

a=12; b=2; x=5; y=6

e=$(( ($a + $b) * 4 -$y ))
c=$(( $x / $y ))

echo $e $c $z

[ \( $a -ge 0 -a $b -lt 2 \) -o $z -eq 5 ]; z=$?
echo $z

a=`echo 'print(3/2)' | python3`
b=$(echo '3/2' | bc -l)
echo $a $b


a=`cat /etc/issuse`
b=$(cat /etc/issuse; cat /etc/resolv.conf)
echo $a
echo $b
echo "$b"



for nazwa in /tmp/* ; do
echo $nazwa;
done

for i in `seq 0 20`; do
echo $i;
done
for (( i=0 ; $i<=20 ; i++ )) ; do
echo $i;
done



# Zadanie 2.0.1
#!/bin/bash
ls ?a[ps]*
find ?a[ps]*

#Zadanie 2.0.2
find -mtime -2

#Zadanie 2.0.3
# https://linuxize.com/post/how-to-create-symbolic-links-in-linux-using-the-ln-command/
cd /tmp
ls -s /tmp/passwd ll1

#Zadanie 2.0.4
ls -l | find -mtime -2

#Zadanie 3.0.2
scp ....@login.icm.edu.pl:/etc/hostname /tmp/hostname


#Zadanie 4.0.1
cat passwd | grep false
cat passwd | grep false | tr a-z A-Z
cat passwd | grep false | tr 'false' FALSE

#Zadanie 4.0.2




#4.3.1
find | egrep /tmp/*abc || echo /tmp/abc nie jest katalogiem


#5.0.1
f() { for i in `seq 1 $1`; do echo $2; done; }
f 2 a
