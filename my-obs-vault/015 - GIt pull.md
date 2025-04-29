---
tags:
  - comando-git
  - repositorio-remoto
  - receber-alteracoes
Data de criacao: 2025-04-26
Data de modificacao: 2025-04-26
Indice: "[[000 - Git e Controle de Versao]]"
---
# O que e o GIt pull
O comando `git pull` nos permite receber alteracoes ou novos arquivos adicionados ao repositorio remoto para o repositorio local. 
- Quando um arquivo e adicionado ou alterado no repositorio remoto, e necessario baixa-lo para o repositorio local, utlizando o `git pull`.
- O `git pull` e basicamente uma combinacao de dois comandos: `git fetch` (que busca as atualizacoes no repositorio remoto) e `git merge` (que aplica essas atualizacoes no seu repositorio local)
- Veja mais sobre como trabalhar com repositorios remotos na nota: [[011 - Repositorio remoto]]