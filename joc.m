function [] = joc()
  %nu are parametri
   
   %Alegerea inceperii cu X sau 0
   do
     var=input("Introdu 1 pentru a juca cu X sau 0 pentru a juca cu 0");
       if(var==1) disp("Ai ales sa joci cu X");
       endif
       if(var==0) disp("Ai ales sa joci cu 0");
       endif
   until((var==0)||(var==1))
   
   %Reprezentarea primei mutari intr-o matrice 3*3
  A(1:3,1:3)='A';
   do
     m=input("Introdu numarul liniei de pe care incepi jocul");
     n=input("Introdu numarul coloanei de pe care incepi jocul");
       if(((m==1)||(m==2)||(m==3))&&((n==1)||(n==2)||(n==3)))
          if(var==0) A(m,n)='0';
            else A(m,n)='X';
          endif
       endif
   until(((m==1)||(m==2)||(m==3))&&((n==1)||(n==2)||(n==3)))
end