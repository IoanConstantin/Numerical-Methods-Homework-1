function r = baza(sursa,b1,b2)
  %Intrari: sursa->stringul care trebuie transformat din baza b1 in baza b2
  %         b1->baza sursei
  %         b2->baza rezultat
  %Iesire:  r->rezultatul in baza b2
  
  %Conversia stringului sursa din baza b1 in baza 10
  %s->reprezentarea in baza 10 a stringului
  %k->pozitia curenta din stringul sursa pana la care s-a convertit in baza 10
  
  if((b1>=2)&&(b2<=30))
     a=toascii(sursa)-48;
     s=0;
     k=0;
       for i=length(a):-1:1
          s=s+a(i)*b1^k;
          k=k+1;
       endfor
       
  %Conversia lui s din baza 10 in baza b2
  %Se imparte succesiv s la baza b2 pana cand s=0
  %Rezultatul este vectorul format din resturile impartirilor succesive->v,
  %Citite de la ultimul spre primul
     j=1;
       while(s!=0)
          v(j)=rem(s,b2);
          j=j+1;
          s=fix(s/b2);
       endwhile
       
  %b->contine codurile ASCII ale numerelor mai mari ca 9
  %%Numerele mai mici ca 9 se transforma in corespondentul fiecaruia de tip char
  %Numerele mai mari ca 9 se transforma in litere folosind codurile lor ASCII
  %r->stringul rezultat
     t=1;
     b=toascii(v)+87;
       for i=length(v):-1:1
          if(v(i)<=9)
              r(t)=char(toascii(v(i))+48);
              t=t+1; 
          endif 
          if(v(i)>9)
              r(t)=char(b(i));
              t=t+1;
          endif  
       endfor
  endif
end
