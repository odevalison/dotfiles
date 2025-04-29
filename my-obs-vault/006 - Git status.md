---
tags:
  - comando-git
Data de criacao: 2025-04-26
Data de modificacao: 2025-04-26
Indice: "[[000 - Git e Controle de Versao]]"
---
# O que e o Git status?
O comando `git status` e um comando git usado para verificar o estados dos arquivos de um projeto git.
Com ele, e possivel visualizar **untracked files** e **changes to be commited**.
- **untracked files** = arquivos nao monitorados; 
- **changes to be commited** = alteracoes para serem commitadas;

# Monitorando arquivos
Quando um arquivo e adicionado ao **stage area**, ele passa a ser monitorado pelo git, ou seja, toda modificacao feita nele estara sendo monitorada e se tornara visivel no comando `git status`.
- Esse tipo de modificacao aparece como: **changes not staged for commit**
- Para entender como adicionar um arquivo ao stage area, veja: [[007 - Git add]]

