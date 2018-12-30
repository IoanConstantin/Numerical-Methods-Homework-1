function x = morse_encode(c)
  %Intrare: caracterul c
  %Iesire: sirul x de '.' si '-' rezultat dupa codificare
  
  %aux1 si aux2->cell array-uri care retin primul nivel 
  %aux3 si aux4->cell array-uri care retin al doilea nivel
  %aux5 si aux6->cell array-uri care retin al treilea nivel
  %aux7 si aux8->cell array-uri care retin al patrulea nivel
  %ok-> flag care verifica daca caracterul a fost gasit
  %Se parcurge arborele in adancime pana se ajung pe ultimul nivel
  %Apoi se urca nivel cu nivel pana la ultimul nivel pe care 
  %Nu au fost verificate ambele noduri copil
  a=morse();
  i=1;
  ok=1;
  aux1=a{2};
  aux2{1}=aux1{1};
  aux2{2}=aux1{2};
  aux2{3}=aux1{3};
  x(i)='.';
  if(aux2{1}==c) ok=0;
  endif;
  if(ok==1)
     i=i+1;
     aux3=aux2{2};
     aux4{1}=aux3{1};
     aux4{2}=aux3{2};
     aux4{3}=aux3{3};
     x(i)='.';
     if(aux4{1}==c) ok=0;
     endif
  endif
  if(ok==1)
     i=i+1;
     aux5=aux4{2};
     aux6{1}=aux5{1};
     aux6{2}=aux5{2};
     aux6{3}=aux5{3};
     x(i)='.';
     if(aux6{1}==c) ok=0;
     endif
  endif
  if(ok==1)
     i=i+1;
     aux7=aux6{2};
     aux8{1}=aux7{1};
     aux8{2}=aux7{2};
     aux8{3}=aux7{3};
     x(i)='.';
     if(aux8{1}==c) ok=0;
     endif
  endif
  if(ok==1)
      aux7=aux6{2};
      aux8{1}=aux7{1};
      aux8{2}=aux7{2};
      aux8{3}=aux7{3};
      x(i)='-';
      if(aux8{1}==c) ok=0;
      endif
  endif
  %if(ok==1)
  %    i=i-1;
  %    aux5=aux4{3};
  %    aux6{1}=aux5{1};
  %    aux6{2}=aux5{2};
  %    aux6{3}=aux5{3};
  %    x(i)='-';
  %    x(i+1)=' '; 
  %    if(aux6{1}==c) ok=0;
  %    endif  
  %endif
end
