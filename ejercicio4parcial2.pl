% Definir las tres personas
persona(ana).
persona(beatriz).
persona(carmen).

% Definir los deportes posibles
deporte(natacion).
deporte(tenis).
deporte(gimnasia).

% Reglas para determinar la altura de las personas
mas_alta_que(ana, beatriz).

% Reglas para determinar quién es soltera
soltera(carmen).

% Reglas para determinar la suegra
suegra(ana, beatriz).

% Reglas para determinar el deporte de cada persona
deportista(ana, Deporte) :- deporte(Deporte), not(Deporte = tenis), not(Deporte = gimnasia).
deportista(beatriz, Deporte) :- deporte(Deporte), not(Deporte = natacion), not(Deporte = gimnasia).
deportista(carmen, Deporte) :- deporte(Deporte), not(Deporte = tenis), not(Deporte = natacion).

% Regla de consulta para encontrar los deportes de cada persona
consulta :-
    deportista(ana, DeporteAna),
    deportista(beatriz, DeporteBeatriz),
    deportista(carmen, DeporteCarmen),
    write('Ana practica '), write(DeporteAna), nl,
    write('Beatriz practica '), write(DeporteBeatriz), nl,
    write('Carmen practica '), write(DeporteCarmen), nl.
