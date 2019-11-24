l = ['i', 'c', 0, 'm']
l[0] = "I"
del l[2]
print(l)

for i in range(len(l)):
	print(l[i])
	l[i] = "q"
print(l)

s = 'asdfghjkl'
l = list(s)
l[2] = "X"
del(l[5])
s = "".join(l)
print(s)

l =['i', 'm']
l.insert(1, 'c')
print(l)
l.reverse()
print(l)
l.sort()
print(l)

### STRING
#https://www.tutorialspoint.com/python/string_replace.htm

string = "this is string example....wow!!! this is really string"
print(string.replace("is", "was"))
print(string.replace("is", "was", 3))

#https://www.tutorialspoint.com/python/string_split.htm
string = "Line1-abcdef \nLine2-abc \nLine4-abcd";
print(string.split( ))
print(string.split(' ', 1 ))

#Zadanie 4.3.1

def parse(x):
	t =x.replace("XY", " ")
	return t.split(':')
print(parse("Ala:maXYkotka:i inne:zwierzeta"))

#Zadanie 4.3.2
def sortowanie(x):
	x.sort()
	x.reverse()
	return x
print(sortowanie(['Agata', 'Lukasz', 'Mariusz', 'Szczepan', 'Igor', 'Michal', 'Konstanty']))




#Zadanie 4.3.3

def sortuj(lista):
	l = lista.copy()
	l.sort()
	return l
print(sortuj(['Agata', 'Lukasz', 'Mariusz', 'Szczepan', 'Igor', 'Michal', 'Konstanty']))

# SLOWNIKI

slownik = {"bd" : "xx", 5 : True, "a" : 11}
for klucz in slownik:
	print(klucz, "=>", slownik[klucz])

if "bd" in slownik:
	print("jest elementem slownika o kluczu 'bd'")
	del slownik['bd']
slownik[15] = True
slownik["a"] = "yy"
#for k,v in m.items():
#	print(k, "=>", v)


#https://www.tutorialspoint.com/python/dictionary_get.htm
dict = {'Name': 'Zabra', 'Age': 7}
print("Value", "Age",": ",  dict.get('Age'))
print("Value : ",  dict.get('Education', "Never"))


#Zadanie 4.4.1

def zlicz(x):
	s = {}
	for e in x:
		s[e] = s.get(e, 0) +1
	for k in s:
		print(str(k) + " wystepuje " + str(s[k]) + " razy")
zlicz(["AX", "B", "AX"])

#Zadanie 4.4.2
def konwert(x):
	s={}
	for w in x:
		poz = w.find("=")
		s[w[0:poz]] = w[poz+1:]
	return s
print(konwert(["aa=13", "b=Ala=kot", "f=xyz"]))

mapa = {'5' : 3, 'bd' : 20, 'a' : 101}
lista = sorted(mapa.items())
print(lista)

def k(x):
	return x[1]
lista = sorted(mapa.items(), key=k)
print(lista)


#Funckja jako argument funckji

def dzialanie(operacja):
	if operacja == "dodaj":
		def f(a, b):
			return a+b
		return f
	elif operacja == "mnoz":
		def f(a, b):
			return a*b
		return f
def dwa(funkcja, argument):
	return funkcja(2, argument)
d = dzialanie("dodaj")
a = dwa(d, 1)
b = dzialanie("mnoz")(4,4)
print(a, b)


#Zadanie 4.5.1
def dzialanie_s(x):
	s = { "dodaj" : (lambda a, b: a + b), "mnoz" : (lambda a, b: a * b)}
	return s.get(x)

def dwa(funkcja, argument):
	return funkcja(2, argument)
d = dzialanie_s("mnoz")
a = dwa(d, 88)
b = dzialanie_s("mnoz")(4,5)
print(a, b)


#Zadanie 4.5.2

def wykonaj(lista, funckja):
	for x in lista:
		funckja(x)

print(wykonaj([1, 2, 3], print))
