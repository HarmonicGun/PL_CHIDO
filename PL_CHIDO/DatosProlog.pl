usuarios(luis).
usuarios(juan).
usuarios(paco).
usuarios(alan).
usuarios(maria).
usuarios(joca).
usuarios(lucy).
usuarios(ana).

cancion(Beat_it).


caracCancion(Beat_it,[Pop,Ochentas,Michael_Jackson]).
%%(Nombre cancion,[Genero, epoca, artista])


caracteristicasUser(luis,[Rock,noventas,Nirvana]).

valCancion(ghost,[Pop, Dance,Michael_Jackson]).
%%nombre, [genero, subgenerom, artista]

valoresUser(luis,[Rock,Dance,Nirvana]).


matchVal(U,P):- valoresUser(U,ValU),valCancion(P,ValP), analizaV(ValU,ValP).

analizaV([H|T],Y) :-
   member(H, Y) -> true;
   analizaV(T, Y).  
analizaV([],Y):- !, false.

matchCar(U,P):- caracteristicasUser(U,CarU),caracCancion(P,CarP), analizaC(CarU,CarP).

analizaC([H|T],Y) :-
   member(H, Y) -> true;
   analizaC(T, Y).  
analizaC([],Y):- !, false.

member(X,[X|_]).
member(X,[_|T]):-member(X,T).



