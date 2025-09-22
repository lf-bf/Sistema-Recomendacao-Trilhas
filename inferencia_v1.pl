% --------------------------------------
% SISTEMA ESPECIALISTA - TRILHA ACADÊMICA
% --------------------------------------


:- dynamic resposta/2.

% --- Cálculo das Pontuações ---
calcula_todas_pontuacoes(Resultados) :-
    findall((Trilha, P, Just),
        calcula_pontuacao(Trilha, P, Just),
        Lista),
    sort(2, @>=, Lista, Resultados).

calcula_pontuacao(Trilha, Pontuacao, Justificativa) :-
    trilha(Trilha, _),
    findall((Hab,Peso),
        (perfil(Trilha, Hab, Peso),
         pergunta(Id, _, Hab),
         resposta(Id, s)), Lista),
    maplist(arg(2), Lista, Pesos),
    sum_list(Pesos, Pontuacao),
    findall(Hab, member((Hab,_), Lista), Justificativa).