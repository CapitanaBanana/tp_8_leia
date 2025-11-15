:- initialization(main).

main :-
    consult('vacunas_base.pl'),
    
    writeln("¿Puede Claudia vacunarse con Moderna?"),
    (puede_vacunarse(claudia, moderna) -> writeln(true) ; writeln(false)),

    writeln("¿Puede Claudia vacunarse con Spikevax?"),
    (puede_vacunarse(claudia, spikevax) -> writeln(true) ; writeln(false)),

    writeln("¿Puede Claudia vacunarse con Comirnaty?"),
    (puede_vacunarse(claudia, comirnaty) -> writeln(true) ; writeln(false)),
    writeln("--------------------"),
    % --------------- %
    writeln("¿Puede Hernan vacunarse con Moderna?"),
    (puede_vacunarse(hernan, moderna) -> writeln(true) ; writeln(false)),

    writeln("¿Puede Hernan vacunarse con Spikevax?"),
    (puede_vacunarse(hernan, spikevax) -> writeln(true) ; writeln(false)),

    writeln("¿Puede Hernan vacunarse con Comirnaty?"),
    (puede_vacunarse(hernan, comirnaty) -> writeln(true) ; writeln(false)),
     writeln("--------------------"),
    % --------------- %
    writeln("¿Puede Clara vacunarse con Moderna?"),
    (puede_vacunarse(clara, moderna) -> writeln(true) ; writeln(false)),

    writeln("¿Puede Clara vacunarse con Spikevax?"),
    (puede_vacunarse(clara, spikevax) -> writeln(true) ; writeln(false)),

    writeln("¿Puede Clara vacunarse con Comirnaty?"),
    (puede_vacunarse(clara, comirnaty) -> writeln(true) ; writeln(false)),
     writeln("--------------------"),
    % --------------- %

    writeln("¿Puede Joaquín vacunarse con Moderna?"),
    (puede_vacunarse(joaquin, moderna) -> writeln(true) ; writeln(false)),

    writeln("¿Puede Joaquín vacunarse con Spikevax?"),
    (puede_vacunarse(joaquin, spikevax) -> writeln(true) ; writeln(false)),

    writeln("¿Puede Joaquín vacunarse con Comirnaty?"),
    (puede_vacunarse(joaquin, comirnaty) -> writeln(true) ; writeln(false)),

    % --------------- %


    halt.