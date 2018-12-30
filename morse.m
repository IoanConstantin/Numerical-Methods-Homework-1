function m = morse()
  %Intrari: Nu exista
  %Iesiri: m->cell array reprezentand codul morse
  
  %Pe prima pozitie din cell array este litera
  %Pe a doua pozitie din cell array este fiul din stanga
  %Pe a treia pozitie din cell array este fiul din dreapta
  %ultimul nivel
  h={'H' {} {}};
  v={'V' {} {}};
  f={'F' {} {}};
  l={'L' {} {}};
  p={'P' {} {}};
  j={'J' {} {}};
  b={'B' {} {}};
  x={'X' {} {}};
  c={'C' {} {}};
  y={'Y' {} {}};
  z={'Z' {} {}};
  q={'Q' {} {}};
  
  %penultimul nivel
  s={'S' h v};
  u={'U' f {}};
  r={'R' l {}};
  w={'W' p j};
  d={'D' b x};
  k={'K' c y};
  g={'G' z q};
  o={'O' {} {}};
  
  %al doilea nivel
  i={'I' s u};
  a={'A' r w};
  n={'N' d k};
  m={'M' g o};
  
  %primul nivel
  e={'E' i a};
  t={'T' n m};
  
  %nodul radacina
  m={' ' e t};
end