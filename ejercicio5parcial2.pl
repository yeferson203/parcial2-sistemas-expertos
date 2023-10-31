caballo(mac).
caballo(smith).
caballo(jack).
caballo(willy).

mas_oscuro_que(mac, smith).
mas_rapido_que(mac, jack).
mas_viejo_que(mac, jack).
mas_lento_que(jack, willy).
mas_joven_que(willy, mac).
mas_viejo_que(mac, smith).
mas_claro_que(smith, willy).
mas_lento_que(jack, smith).
mas_oscuro_que(jack, smith).

caballo_mas_viejo(X) :- mas_viejo_que(X, ), not(mas_viejo_que(, X)).
caballo_mas_lento(X) :- mas_lento_que(X, ), not(mas_lento_que(, X)).
caballo_mas_claro(X) :- mas_claro_que(X, ), not(mas_claro_que(, X)).