% --------------------------------------
% SISTEMA ESPECIALISTA - TRILHA ACADÊMICA
% --------------------------------------


:- dynamic resposta/2.


% --- Fluxo Principal ---
iniciar :-
    retractall(resposta(_, _)),   % limpa respostas anteriores
    writeln('=== Sistema Especialista: Trilha Acadêmica ==='),
    faz_perguntas,
    calcula_todas_pontuacoes(Resultados),
    exibe_resultado(Resultados).

% --- Perguntas Interativas ---
faz_perguntas :-
    pergunta(Id, Texto, _),
    format('~w (s/n): ', [Texto]),
    read(Resp),
    assertz(resposta(Id, Resp)),
    fail.
faz_perguntas.


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

    % --- Exibir Resultado ---
exibe_resultado(Resultados) :-
    writeln('\n=== Resultado Final ==='),
    forall(member((Trilha, P, Just), Resultados),
           (trilha(Trilha, Desc),
            format('~w (~w pontos): ~w~n', [Trilha, P, Desc]),
            (Just \= [] ->
                format('   Justificativa: habilidades fortes em ~w~n', [Just])
            ; true))).