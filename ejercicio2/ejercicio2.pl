% Base de conocimiento
% Skills de las personas
skill(juan, gestion_recursos_humanos).
skill(juan, buena_comunicacion).
skill(juan, empatia_clientes).
skill(juan, uml).
skill(juan, arquitecturas).
skill(juan, java).
skill(juan, javascript).

%  Roles que les gusta trabajar 
prefiere(juan, lider).
prefiere(juan, analista).
prefiere(juan, disenador).
prefiere(juan, programador).

% Localidades donde puede trabajar 
puede_ir(juan, capital).
puede_ir(juan, cordoba).
puede_ir(juan, mendoza).
puede_ir(juan, exterior).


% Relación entre roles y skills necesarias
requiere(lider, gestion_recursos_humanos).
requiere(lider, buena_comunicacion).

requiere(analista, uml).
requiere(analista, arquitecturas).

requiere(disenador, empatia_clientes).
requiere(disenador, buena_comunicacion).

requiere(programador, java).
requiere(programador, javascript).
requiere(programador, python).
requiere(programador, php).
requiere(programador, cpp).


% Reglas pedidas
personas_para_rol_en_localidad(Persona, Rol, Localidad) :-
    prefiere(Persona, Rol),
    requiere(Rol, SkillReq),
    skill(Persona, SkillReq),
    puede_ir(Persona, Localidad).


personas_para_rol(Persona, Rol) :-
    prefiere(Persona, Rol),
    requiere(Rol, SkillReq),
    skill(Persona, SkillReq).

roles_para_persona(Persona, Rol) :-
    prefiere(Persona, Rol),
    requiere(Rol, SkillReq),
    skill(Persona, SkillReq).


es_apta(Persona, Rol) :-
    prefiere(Persona, Rol),
    requiere(Rol, SkillReq),
    skill(Persona, SkillReq).
