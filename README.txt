METODE NUMERICE - Tema 1
========================

1). Exercitiul 1
----------------
->Pentru a converti sirul sursa din baza b1 in baza b2 se face conversia din baza b1 in baza 10 si 
  pe cea din baza 10 in baza b2. Folosind codurile ASCII si de functiile char si toascii se fac
  transformarile din numar in caracter si invers.

2). Exercitiul 2
----------------
->Se parcurge matricea patratica de ordin n pe diagonale. Pentru diagonalele de deasupra celei principale
  inclusiv aceasta se verifica paritatea numarului diagonalei si, folosind indicii liniei si coloanei, 
  se urca pe diagonalele cu numar par si se coboara pe cele cu numar impar asezandu-se valorile consecutive
  crescatoare in matrice. In mod similar se face pentru diagonalele de sub cea principala.
  
3). Exercitiul 3
----------------
->Pentru functia morse se construieste arborele binar folosind cell array-uri;

->Pentru functia morse_decode se parcurge sirul de intrare caracter cu caracter. Daca caracterul curent este 
  '.' si exista nodul copil din stanga se continua cu acesta sau (daca caracterul curent este '-' si exista
  nodul copil din dreapta) se continua cu acesta. Daca se ajunge la NULL valoarea de iesire este '*';

->Pentru functia morse_decode se parcurge arborele in adancime pana se ajunge la ultimul nivel apoi se 
  urca nivel cu nivel pana la ultimul nivel pe care nu au fost verificate ambele noduri copil. Se folosesc
  8 cell arrayuri (cate doua pentru fiecare nivel al arborelui) si un flag care verifica daca cell array-ul 
  cu litera corespunzatoare a fost gasit. Problema acestei functii este faptul ca odata ce se ajunge in 
  urmatorul subarbore, subarborele precedent se suprascrie (motivul pentru care nu am continuat
  dezvoltarea codului dupa primele 5 noduri).

4). Exercitiul 4
----------------
->Se alege daca se incepe cu X sau cu 0. 
  
   


