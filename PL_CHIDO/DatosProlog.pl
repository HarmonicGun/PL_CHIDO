usuarios(luis).
usuarios(juan).
usuarios(paco).
usuarios(alan).
usuarios(maria).
usuarios(joca).
usuarios(lucy).
usuarios(ana).

pelicula(ghost).
pelicula(it).
pelicula(titanic).
pelicula(la_mascara).
pelicula(lalaland).
pelicula(cowspiracy).
pelicula(rapido_y_furioso).
pelicula(toy_story).
pelicula(avatar).
pelicula(codigo_da_vinci).

caracteristicasPeli(ghost,[romance,drama,actores_reconocidos]).
caracteristicasPeli(it,[terror,suspenso,efectos_especiales]).
caracteristicasPeli(titanic,[romance,drama,efectos_especiales]).
caracteristicasPeli(la_mascara,[comedia,romance,accion]).
caracteristicasPeli(laland,[musical,romance,drama]).
caracteristicasPeli(cowspiracy,[documental,concientizacion,ecologista]).
caracteristicasPeli(rapido_y_furioso,[accion,crimen,efectos_especiales]).
caracteristicasPeli(toy_story,[animada,disney,pixar]).
caracteristicasPeli(avatar,[aventura,ciencia_ficcion,accion,romance]).
caracteristicasPeli(codigo_da_vinci,[conspiracion,suspenso,accion]).

caracteristicasUser(luis,[efectos_especiales,aventura,crimen]).
caracteristicasUser(juan,[conspiracion,concientizacion,suspenso]).
caracteristicasUser(paco,[terror,suspenso,ciencia_ficcion]).
caracteristicasUser(alan,[accion,aventura,ciencia_ficcion]).
caracteristicasUser(maria,[romance,drama,comedia]).
caracteristicasUser(joca,[aventura,disney,ciencia_ficcion]).
caracteristicasUser(lucy,[animada,ecologia,musical]) .
caracteristicasUser(ana,[accion,suspenso,actores_reconocidos]).

valoresPeli(ghost,[desnudos,acciones_de_pareja,delincuencia]).
valoresPeli(it,[literatura,misterio,retrospectiva]).
valoresPeli(titanic,[desnudos,acciones_de_pareja,historia]).
valoresPeli(la_mascara,[delincuencia,apuestas,justicia]).
valoresPeli(lalaland,[moraleja,acciones_de_pareja,aceptacion]).
valoresPeli(cowspiracy,[consumismo,retrospectiva,moraleja]).
valoresPeli(rapido_y_furioso,[delincuencia,amistad,familia]).
valoresPeli(toy_story,[aceptacion,trabajo_en_equipo,amistad]).
valoresPeli(avatar,[abuso_de_poder,respeto,justicia]).
valoresPeli(codigo_da_vincio,[conflicto_de_interes,busqueda_de_verdad,teorias]).

valoresUser(luis,[familiar,delincuencia,moraleja]).
valoresUser(juan,[abuso_de_poder,retrospectiva,justicia]).
valoresUser(paco,[literatura,retrospectiva,teorias]).
valoresUser(alan,[amistad,trabajo_en_equipo,familia]).
valoresUser(maria,[moraleja,acciones_de_pareja,familia]).
valoresUser(joca,[amistad,retrospectiva,aceptacion]).
valoresUser(lucy,[familiar,vocabulario_coloquial,moraleja]).
valoresUser(ana,[familiar,vocabulario_coloquial,moraleja]).

matchVal(U,P):- valoresUser(U,ValU),valoresPeli(P,ValP), analizaV(ValU,ValP).

analizaV([H|T],Y) :-
   member(H, Y) -> true;
   analizaV(T, Y).  
analizaV([],Y):- !, false.

matchCar(U,P):- caracteristicasUser(U,CarU),caracteristicasPeli(P,CarP), analizaC(CarU,CarP).

analizaC([H|T],Y) :-
   member(H, Y) -> true;
   analizaC(T, Y).  
analizaC([],Y):- !, false.

member(X,[X|_]).
member(X,[_|T]):-member(X,T).

usuarios(saul).
caracteristicasUser(saul,[terror,suspenso,ciencia_ficcion]).
valoresUser(saul,[moraleja,delincuencia,amistad]).

pelicula(up).
caracteristicasPeli(up,[familiar,comica,animada]).
valoresPeli(up,[amistad,trabajo_en_equipo]).

pelicula(spiderman).
caracteristicasPeli(spiderman,[accion,aventura]).
valoresPeli(spiderman,[amistad,inspiracion,aceptacion]).

usuarios(daniel).
caracteristicasUser(daniel,[accion,aventura]).
valoresUser(daniel,[moraleja,familiar,vocabulario_coloquial]).

pelicula(aliens).
caracteristicasPeli(aliens,[accion,suspenso,ciencia_ficcion]).
valoresPeli(aliens,[miedo,delincuencia,guerra]).

usuarios(eduardo).
caracteristicasUser(eduardo,[terror,suspenso,animada]).
valoresUser(eduardo,[miedo,delincuencia]).

pelicula(anabel).
caracteristicasPeli(anabel,[suspenso,terror]).
valoresPeli(anabel,[miedo]).