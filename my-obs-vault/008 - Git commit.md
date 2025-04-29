---
tags:
  - comando-git
  - salvar-arquivos
Data de criacao: 2025-04-26
Data de modificacao: 2025-04-26
Indice: "[[000 - Git e Controle de Versao]]"
---

# O que e um Commit?
Um commit e o ato de salvar as mudancas preparadas (no stage area) no repositorio Git local. Ele registra um "snapshot" do projeto naquele momento, com uma mensagem que descreve o que foi alterado no arquivo naquele commit.
Apos um arquivo ser adicionado ao **stage area**, o Git entende que ele esta pronto para ser commitado. Apos o comando `git commit` ser executado, essas mudancas sao oficialmente salvas no repositorio local.
- Usando o comando `git status` e possivel identificar quais arquivos do seu projeto estao prontos para serem commitados. => [[006 - Git status]]
- A nota [[009 - Stage area]] se aprofunda melhor no conceito de **stage area**.
- **Observacao:** Mesmo apos o commit, o Git continua monitorando os arquivos para futuras alteracoes.

# O que e o Git commit?
O comando `git commit -m "mensagem"` permite salvar as mudancas preparadas (no stage area) de um arquivo no historico do repositorio.
A partir desse comando, as mudancas de um arquivo que estiverem prontas para serem commitadas serao salvar no historico do repositorio local.
- A mensagem do commit deve ser uma breve explicacao do que foi alterado no arquivo naquele commit.
