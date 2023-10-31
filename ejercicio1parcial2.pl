% Definir a las cinco personas
persona(vampiro).
persona(pirata).
persona(payaso).
persona(ninja).
persona(cientifico_loco).

% Definir los sombreros posibles
sombrero(rojo).
sombrero(negro).
sombrero(azul).
sombrero(verde).
sombrero(amarillo).

% Define una regla para asegurar que los sombreros sean diferentes.
diferentes_sombreros(S1, S2, S3, S4, S5) :-
    dif(S1, S2), dif(S1, S3), dif(S1, S4), dif(S1, S5),
    dif(S2, S3), dif(S2, S4), dif(S2, S5),
    dif(S3, S4), dif(S3, S5),
    dif(S4, S5).

% Reglas para determinar quién lleva qué sombrero
lleva(vampiro, Sombrero) :-
    persona(vampiro),
    sombrero(Sombrero),
    not(Sombrero = rojo).
lleva(pirata, negro) :- persona(pirata).
lleva(payaso, Sombrero) :-
    persona(payaso),
    sombrero(Sombrero),
    not(Sombrero = verde),
    not(Sombrero = negro).
lleva(ninja, Sombrero) :-
    persona(ninja),
    sombrero(Sombrero),
    not(Sombrero = verde),
    not(Sombrero = negro).
lleva(cientifico_loco, Sombrero) :-
    persona(cientifico_loco),
    sombrero(Sombrero),
    not(Sombrero = amarillo).

% Regla de consulta para encontrar la solución
consulta :-
    lleva(vampiro, SombreroVampiro),
    lleva(pirata, SombreroPirata),
    lleva(payaso, SombreroPayaso),
    lleva(ninja, SombreroNinja),
    lleva(cientifico_loco, SombreroCientificoLoco),
    diferentes_sombreros(SombreroVampiro, SombreroPirata, SombreroPayaso, SombreroNinja, SombreroCientificoLoco),
    write('El vampiro lleva el sombrero '), write(SombreroVampiro), nl,
    write('El pirata lleva el sombrero '), write(SombreroPirata), nl,
    write('El payaso lleva el sombrero '), write(SombreroPayaso), nl,
    write('El ninja lleva el sombrero '), write(SombreroNinja), nl,
    write('El científico loco lleva el sombrero '), write(SombreroCientificoLoco), nl.
