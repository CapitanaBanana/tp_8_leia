:- initialization(main).

main :-
    consult('laboral.pl'),

    writeln("¿Juan es apto para ser programador?"),
    (es_apta(juan, programador) -> writeln(true) ; writeln(false)),
    writeln("--------------------"),

    writeln("¿Juan es apto para ser analista?"),
    (es_apta(juan, analista) -> writeln(true) ; writeln(false)),
    writeln("--------------------"),

    writeln("Personas para el rol de programador:"),
    listar_personas_para_rol(programador),
    writeln("--------------------"),

    writeln("Personas para el rol de analista:"),
    listar_personas_para_rol(analista),
    writeln("--------------------"),

    writeln("Personas disponibles para programador en Córdoba:"),
    listar_personas_para_rol_en_localidad(programador, cordoba),
    writeln("--------------------"),

    writeln("Roles que puede ocupar Juan:"),
    listar_roles_para_persona(juan),
    writeln("--------------------"),

    halt.

% ----------------------------------------
% Helpers para imprimir listas en Prolog
% ----------------------------------------

listar_personas_para_rol(Rol) :-
    (   personas_para_rol(Persona, Rol),
        writeln(Persona),
        fail
    ;   true
    ).

listar_personas_para_rol_en_localidad(Rol, Localidad) :-
    (   personas_para_rol_en_localidad(Persona, Rol, Localidad),
        writeln(Persona),
        fail
    ;   true
    ).

listar_roles_para_persona(Persona) :-
    (   roles_para_persona(Persona, Rol),
        writeln(Rol),
        fail
    ;   true
    ).
