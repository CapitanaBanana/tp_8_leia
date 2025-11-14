% Hechos del dominio %
es_algo(mentir, malo).
es_algo(ayudar, bueno).

hace_algo(sebastian, ayudar).
hace_algo(sebastian, mentir).

% Reglas del dominio %

% Una persona es buena si esa Persona hace_algo Algo y ese Algo es_algo bueno %
es_buena(Persona) :- hace_algo(Persona, Algo), es_algo(Algo, bueno).

es_mala(Persona):- hace_algo(Persona, Algo), es_algo(Algo, malo).


