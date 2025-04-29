---
tags:
  - git
  - staging-area
Data de criacao: 2025-04-26
Data de modificacao: 2025-04-26
Indice: "[[000 - Git e Controle de Versao]]"
---
# O que e Stage Area?
A **stage area** (ou **staging area**), e uma area intermediaria do Git, onde ficam armazenadas as mudancas que serao incluidas no proximo commit.
Quando voce modifica um arquivo no seu projeto, essas mudancas ainda nao estao prontas para serem salvas no historico do Git. Para isso, voce precisa adicionar esses arquivos ao **stage area**, usando o comando `git add`.
- Veja mais sobre como adicionar um arquivo ao **stage area** na nota: [[007 - Git add]]

# Por que a Stage Area existe?
Essa area funciona como uma "separacao", onde voce seleciona quais arquivos/partes do projeto devem fazer parte do proximo commit. Apenas os arquivos que estao no stage area serao salvos quando voce usar o `git commit`
- Veja mais sobre como commitar arquivos na nota: [[008 - Git commit]]

# Resumo do fluxo
1. **Trabalha no projeto**: modifica, cria ou deleta arquivos. 
2. **Adiciona ao stage**: `git add nome-do-arquivo` => [[007 - Git add]]
3. **Commita as mudancas**: `git commit -m "mensagem"` => [[008 - Git commit]]