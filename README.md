# Sistema de Recomendação de Trilhas Acadêmicas

Sistema especialista desenvolvido em Prolog para recomendar trilhas de especialização em Ciência da Computação com base no perfil do estudante.

## Sobre o Projeto

O sistema avalia o interesse e afinidade do usuário em diferentes áreas através de um questionário, recomendando a trilha mais adequada entre:

- **Inteligência Artificial** - Estudo e aplicação de técnicas de ML, IA generativa e sistemas inteligentes
- **Ciência de Dados** - Análise, modelagem e interpretação de dados para gerar insights
- **Desenvolvimento Web** - Construção de aplicações web modernas: front-end e back-end
- **Segurança da Informação** - Proteção de sistemas, redes e dados contra ameaças
- **Redes e Infraestrutura** - Planejamento, administração e monitoramento de redes e sistemas


### Executando o Sistema Principal

1. Abra o SWI-Prolog ou outro interpretador Prolog compatível
2. Carregue o arquivo principal:
   ```prolog
   ?- [main].
   ```
3. Execute o sistema:
   ```prolog
   ?- iniciar.
   ```
4. Responda as perguntas com `s` (sim) ou `n` (não)
5. Visualize sua recomendação personalizada

### Exemplo de Execução
```
=== Sistema Especialista: Trilha Acadêmica ===
Você tem afinidade com matemática e estatística avançadas? (s/n): s
Você gosta de resolver problemas lógicos de programação? (s/n): s
...
=== Resultado Final ===
inteligencia_artificial (15 pontos): Estudo e aplicacao de tecnicas de ML, IA generativa e sistemas inteligentes.
```

O projeto inclui 3 perfis de teste pré-definidos para validar o sistema:

### Teste 1 - Perfil IA
```prolog
?- [perfil_teste_1].
?- calcula_todas_pontuacoes(R), exibe_resultado(R).
```

### Teste 2 - Perfil Balanceado
```prolog
?- [perfil_teste_2].
?- calcula_todas_pontuacoes(R), exibe_resultado(R).
```

### Teste 3 - Perfil Web
```prolog
?- [perfil_teste_3].
?- calcula_todas_pontuacoes(R), exibe_resultado(R).
```

## Estrutura do Projeto

- `main.pl` - Arquivo principal com toda a lógica do sistema
- `perfil_teste_1.pl` - Teste com perfil voltado para IA
- `perfil_teste_2.pl` - Teste com perfil balanceado
- `perfil_teste_3.pl` - Teste com perfil voltado para desenvolvimento web
- `base_conhecimento.pl` - Base de conhecimento (se separada)
- `inferencia_v1.pl` - Motor de inferência (se separado)

## Como Funciona

1. **Questionário**: 25 perguntas sobre interesses e habilidades
2. **Pontuação**: Cada trilha tem características com pesos diferentes (1-5)
3. **Ranking**: As trilhas são ordenadas pela pontuação total
4. **Justificativa**: Mostra as habilidades que mais contribuíram para a recomendação

## Informações Acadêmicas

**Instituição:** PUCPR (Pontifícia Universidade Católica do Paraná)  
**Disciplina:** Programação Lógica e Funcional  
**Professor:** Frank Alcantara  

### Alunos

- **Bernardo Muller** - [@zzMuller](https://github.com/zzMuller)
- **João Pedro Cochek** - [@joao-giovannoni](https://github.com/joao-giovannoni)
- **Luis Felipe Tozzi** - [@LuisTozzi1](https://github.com/LuisTozzi1)
- **Luiz Fernando Brasão** - [@lf-bf](https://github.com/lf-bf)

