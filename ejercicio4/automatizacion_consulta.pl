:- initialization(main).

main :-
    consult('ejercicio_4.pl'),
    
    writeln("¿Es Sebastian bueno?"),
    (es_buena(sebastian) -> writeln("Sí") ; writeln("No")),
    
    writeln("¿Es Sebastian malo?"),
    (es_mala(sebastian) -> writeln("Sí") ; writeln("No")),
    
    halt.