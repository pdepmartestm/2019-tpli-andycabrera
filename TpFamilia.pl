hijo(Andres,Liliana).
hijo(Andres,Horacio).
hijo(Horacio,Ricardo).
hijo(Liliana, Pina).
hijo(Sandra, Pina).
hijo(Patricia, Pina).
hijo(Julieta, Patricia).
hijo(Sofia, Sandra).
hijo(Agustin, Roberto).
hijo(Pina, Josefa).
hijo(Carmen, Josefa).
hijo(Marcos, Carmen).
hijo(Sofia, Marcos).

%Reglas 

sonHermanos(Fam1, Fam2):-
  hijo(Fam1,X),
  hijo(Fam2,X),
  Fam1 \= Fam2.
  
esPadre(Fam1,Fam2):-
  hijo(Fam2,Fam1).

esMadre(Madre, Hijo):-
  hijo(Hijo,Madre).
  
esTio(Tio,Sobrino):-
  sonHermanos(Tio,X),
  hijo(Sobrino,X).
  
esCuniado(Cunia,Fam):-
  esHermano(Fam,X),
  pareja(X,Cunia).
  
esAbuelo(Abuelo, Nieto):-
  hijo(X,Abuelo),
  hijo(Nieto,X).
  
esPrimo(Primo1, Primo2):-
  sonHermanos(X,Y),
  hijo(Primo1,X),
  hijo(Primo2,Y),
  Primo1 \= Primo2.
  
esPrimoSegundo(Primo1,Primo2):-
  esPrimo(X,Y),
  hijo(Primo1,X),
  hijo(Primo2,Y),
  Primo1 \= Primo2.
 
descendientes(Des,Familiar):-
  hijo(Familiar,X).
  
descendientes(Des,Familiar):-
  hijo(Familiar,X),
  descentiente(Des,X).
 
