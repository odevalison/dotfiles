---
tags:
  - git
  - configuracoes
Data de criacao: 2025-04-26
Data de modificacao: 2025-04-26
---
## Instalando Git (Linux)
A instalacao do Git no Linux (distribuicoes baseadas em Debian, como Ubuntu) pode ser feita com o seguinte comando:

```bash
$ sudo apt-get install git
```

## Configurando Git
Os comandos abaixo configuram informacoes globais do usuario e o editor de texto padrao para o Git:

```bash
$ git config --global user.name [nome]
$ git config --global user.email [email]
$ git config --global core.editor "nvim"
```

- O nome e email sao usados para identificar o autor dos commits
- O editor e utilizado para escrever mensagens de commit, rebase, etc.