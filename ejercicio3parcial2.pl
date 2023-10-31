% Definir los colores disponibles
color(rojo).
color(verde).
color(azul).

% Definir las parejas
pareja(P1, P2) :- color(P1), color(P2), P1 \= P2.

% Reglas para la deducción
tiene_misma_pareja_color(rojo, azul, G, B) :- pareja(G, verde), pareja(B, azul).
tiene_misma_pareja_color(rojo, verde, G, azul) :- pareja(G, azul), pareja(B, verde).

% Regla de consulta
consulta :- tiene_misma_pareja_color(rojo, R, G, B), write('El compañero de baile de la chica de rojo es '), write(R), write('.'), nl.
