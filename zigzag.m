function Z = zigzag(n)
  %Intrari: n-> ordinul matricei zigzag
  %Iesiri: Z-> matricea zigzag rezultata
  
  s=1;
  Z=zeros(n,n);
  
  %k-> numarul diagonalei curente
  %i-> numarul liniei curente 
  %j-> numarul coloanei curente
  %s-> valoarea care urmeaza sa fie asezata in matricea Z
  %Se parcurg diagonalele de deasupra diagonalei principale inclusiv 
  %Pe diagonalele cu numar par se coboara
  %Pe diagonalele cu numar impar se urca  
  for k=2:n
      if(rem(k,2)==0)
           for i=1:k
             for j=k:-1:1
               if((i+j)==(k+1))
                    Z(i,j)=s;
                    s=s+1;
               endif
             endfor
            endfor
       endif
       if(rem(k,2)==1)
           for i=k:-1:1
             for j=1:k
               if((i+j)==(k+1))
                    Z(i,j)=s;
                    s=s+1;
               endif
             endfor
            endfor
       endif
   endfor
   
   %Se parcurg diagonalele de sub diagonala principala
   %Pe diagonalele cu numar par se coboara
   %Pe diagonalele cu numar impar se urca 
   for k=(n-1):-1:2
        if(rem(k,2)==0)
           for i=(n-k+1):n
             for j=n:-1:(n-k+1)
               if((i+j)==(2*n-k+1))
                    Z(i,j)=s;
                    s=s+1;
               endif
             endfor
            endfor
       endif
       if(rem(k,2)==1)
           for i=n:-1:(n-k+1)
             for j=(n-k+1):n
               if((i+j)==(2*n-k+1))
                    Z(i,j)=s;
                    s=s+1;
               endif
             endfor
            endfor
       endif
   endfor
   
   %Se stabileste valoarea ultimului element 
   Z(n,n)=n*n-1;
end