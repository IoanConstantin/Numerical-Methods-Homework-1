function x = morse_decode(sir)
  %Intrare: sir-> sirul de '.' si '-'
  %Iesire: x->caracterul corespunzator sirului de intrare sau '*'
  
  a=morse();
  x=' ';
    
    %Se parcurge sirul de intrare
    %Daca caracterul curent este '.' si nodul copil din stanga exista
    %Atunci continui cu nodul copil din stanga
    %Daca caracterul curent este '-' si nodul copil din dreapta exista
    %Atunci continui cu nodul copil din dreapta
    %Daca s-a ajuns la NULL returneaza '*'   
    for i=1:length(sir)
      if(sir(i)=='.') 
         if(length(a{2}))
             aux=a{2};
             a{2}=aux{2};
             a{3}=aux{3};
           else x='*';
         endif
      endif
      if(sir(i)=='-') 
         if(length(a{3}))
             aux=a{3};
             a{3}=aux{3};
             a{2}=aux{2};
           else x='*';
         endif
      endif
    endfor
  if(x!='*') x=aux{1};
  endif
end