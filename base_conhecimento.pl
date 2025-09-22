
/* ===========================================
   BASE DE CONHECIMENTO — TRILHAS, PERFIS, PERGUNTAS
   Arquivo sugerido: base_conhecimento.pl
   =========================================== */


% --------------------------
% Trilhas de especialização
% --------------------------
trilha(inteligencia_artificial, 'Estudo e aplicacao de tecnicas de ML, IA generativa e sistemas inteligentes.').
trilha(ciencia_de_dados, 'Analise, modelagem e interpretacao de dados para gerar insights.').
trilha(desenvolvimento_web, 'Construcao de aplicacoes web modernas: front-end e back-end.').
trilha(seguranca_da_informacao, 'Protecao de sistemas, redes e dados contra ameacas.').
trilha(redes_e_infraestrutura, 'Planejamento, administracao e monitoramento de redes e sistemas.').



% ---------------------------------------------------
% Mapeamento TRILHA x CARACTERISTICA (com peso 1..5)
% Cada trilha tem 5 características únicas e pesos distintos
% ---------------------------------------------------

% Inteligencia Artificial
perfil(inteligencia_artificial, matematica_estatistica, 5).
perfil(inteligencia_artificial, logica_programacao,    4).
perfil(inteligencia_artificial, python,                2).
perfil(inteligencia_artificial, machine_learning,      3).
perfil(inteligencia_artificial, comunicacao_colaboracao, 1).

% Ciencia de Dados
perfil(ciencia_de_dados, analise_dados,         5).
perfil(ciencia_de_dados, sql_bancos,            4).
perfil(ciencia_de_dados, python,                3).
perfil(ciencia_de_dados, matematica_estatistica,2).
perfil(ciencia_de_dados, gestao_projetos,       1).

% Desenvolvimento Web
perfil(desenvolvimento_web, frontend_web,   5).
perfil(desenvolvimento_web, backend_web,    4).
perfil(desenvolvimento_web, typescript,      3).
perfil(desenvolvimento_web, ux_ui,          2).
perfil(desenvolvimento_web, design_visual,  1).

% Seguranca da Informacao
perfil(seguranca_da_informacao, seguranca_defensiva, 5).
perfil(seguranca_da_informacao, criptografia,        4).
perfil(seguranca_da_informacao, redes_sistemas,      3).
perfil(seguranca_da_informacao, sistemas_operacionais, 2).
perfil(seguranca_da_informacao, testes_qualidade,    1).

% Redes e Infraestrutura
perfil(redes_e_infraestrutura, redes_sistemas,       5).
perfil(redes_e_infraestrutura, sistemas_operacionais,4).
perfil(redes_e_infraestrutura, devops_automacao,     3).
perfil(redes_e_infraestrutura, cloud_arquitetura,    2).
perfil(redes_e_infraestrutura, comunicacao_colaboracao, 1).

% --------------------------
% Perguntas (ID, Texto, Caracteristica)
% 25 perguntas, 5 para cada trilha
% --------------------------

% Inteligencia Artificial
pergunta(1,  'Voce tem afinidade com matematica e estatistica?',            matematica_estatistica).
pergunta(2,  'Voce gosta de resolver problemas logicos de programacao?',    logica_programacao).
pergunta(3,  'Voce programa (ou quer programar) frequentemente em Python?', python).
pergunta(4,  'Voce se interessa por aprendizado de maquina/IA?',            machine_learning).
pergunta(5,  'Voce se sente confortavel colaborando e comunicando solucoes?', comunicacao_colaboracao).

% Ciencia de Dados
pergunta(6,  'Voce tem interesse em analisar dados e extrair insights?',    analise_dados).
pergunta(7,  'Voce gosta de trabalhar com bancos de dados e SQL?',          sql_bancos).
pergunta(8,  'Voce utiliza ou pretende utilizar Python para analise de dados?', python).
pergunta(9,  'Voce tem facilidade com matematica para analise estatistica?', matematica_estatistica).
pergunta(10, 'Voce gosta de planejar tarefas e prazos (gestao de projetos)?', gestao_projetos).

% Desenvolvimento Web
pergunta(11, 'Voce gosta de criar interfaces e layouts (front-end)?',       frontend_web).
pergunta(12, 'Voce prefere logica de servidor, APIs e back-end?',           backend_web).
pergunta(13, 'Voce tem interesse em usar TypeScript?',     typescript).
pergunta(14, 'Voce curte pensar na experiencia do usuario (UX/UI)?',        ux_ui).
pergunta(15, 'Voce curte design visual/estetica?',                          design_visual).

% Seguranca da Informacao
pergunta(16, 'Voce se interessa por seguranca defensiva e protecao de dados?', seguranca_defensiva).
pergunta(17, 'Criptografia e controles de acesso chamam sua atencao?',      criptografia).
pergunta(18, 'Voce tem interesse em redes, protocolos e administracao de SO?', redes_sistemas).
pergunta(19, 'Voce gosta de entender sistemas operacionais e sua seguranca?', sistemas_operacionais).
pergunta(20, 'Voce se preocupa com testes, qualidade e manutencao?',        testes_qualidade).

% Redes e Infraestrutura
pergunta(21, 'Voce gosta de administrar redes de computadores?',            redes_sistemas).
pergunta(22, 'Voce tem interesse em sistemas operacionais e configuracao?', sistemas_operacionais).
pergunta(23, 'Voce gosta de automacao, CI/CD e infraestrutura como codigo?', devops_automacao).
pergunta(24, 'Voce tem interesse em arquiteturas e servicos de nuvem?',     cloud_arquitetura).
pergunta(25, 'Voce se sente confortavel colaborando tecnicamente em equipes?', comunicacao_colaboracao).