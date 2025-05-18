---
tags:
  - comando-git
  - checkout
  - repositorio
Data de criacao: 2025-05-01
Data de modificacao: 2025-05-01
---
# O que e o Git checkout?
O comando `git checkout` possui duas principais funcoes:

# 1. Reverter alteracoes feitas em um arquivo
O comando `git checkout` nos permite reverter certas alteracoes feitas em um arquivo salvo no repositorio.
- Para relembrar como salvar um arquivo no repositorio => [[26042025 - Git commit]]
- Para relembrar o que e um repositorio => [[26042025 - Repositorios]]
Para reverter alteracoes indesejadas feitas em um arquivo, basta utilizar o comando da seguinte forma:

```bash
$ git checkout nome-do-arquivo
```

Este comando ira reverter o arquivo especifico para seu estado anterior (que estava salvo no repositorio no ultimo commit feito)

# 2. Mudando entre branchs
O comando `git checkout` tambem pode ser usado para mudar de uma branch para outra, .
- Para relembrar o que sao branchs => [[01052025 - Branch]]
- Para relembrar como criar branchs => [[02052025 - Git branch]]
Para navegar da sua branch atual para uma outra branch existente, use o comando:

```bash
$ git checkout nome-da-branch
```

Este comando fara com que o git mude seu ambiente de trabalho para a branch especificada.

# Criando e mudando para uma nova branch
O `git checkout` tambem nos permite criar uma nova branch e mudar para ela em um unico comando:

```bash
$ git checkout -b nova-branch
```

Este comando e equivalente a executar:

```bash
$ git branch nova-branch
$ git checkout nova-branch
```