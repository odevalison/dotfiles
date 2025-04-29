---
tags:
  - comando-git
  - repositorio-remoto
  - salvar-arquivos
Data de criacao: 2025-04-25
Data de modificacao: 2025-04-26
Indice: "[[000 - Git e Controle de Versao]]"
---
# O que e o Git push?
O comando`git push` e utilizado para enviar arquivos do seu repositorio local (Git) para o seu repositorio remoto (como GitHub, GitLab, etc.).
Ele envia todos os arquivos/alteracoes que foram commitadas no repositorio local para o repositorio remoto, atualizando o projeto com as mudancas feitas.

# Adicionando novos arquivos ao repositorio remoto
O fluxo de trabalho para adicionar e enviar novos arquivos para o repositorio remoto e o seguinte:
1. **Adicionar os arquivos ao stage area**: O primeiro passo e adicionar os arquivos/alteracoes ao stage area, para torna-los prontos para serem salvos no repositorio local.
	- Veja mais sobre o `git add` na nota: [[007 - Git add]]
2. **Commitar as alteracoes**: Apos adicionar os arquivos/alteracoes na stage area, use o comando `git commit` para salvar essas alteracoes no repositorio local 
	- Entenda melhor o funcionamento do `git commit` na nota: [[008 - Git commit]]
3. **Enviar para o repositorio remoto (Git push)**: Finalmente, apos salvar as alteracoes no repositorio local, use o comando `git push` para envia-las para o repositorio remoto.
	- **Importante**: Se for a primeira vez que voce esta fazendo um push para um repositorio remoto, voce pode precisar adicionar a referencia da branch e o repositorio remoto. Use a flag `-u` para configurar a branch remota padrao.
	- O `-u` diz ao Git para associar sua branch local (a `main` no caso) com a branch remota `main` do repositorio remoto (`origin` e o nome padrao do repositorio remoto).
	- A partir do segundo push, voce pode usar apenas `git push`, pois a configuracao ja foi feita
	- [[011 - Repositorio remoto]] => Para entender melhor o que e um repositorio remoto

# Resumo: Fluxo para enviar alteracoes
1. **Adicionar os arquivos ao stage**: `git add .` ou `git add nome-do-arquivo`
2. **Commitar as alteracoes**: `git commit -m "mensagem"`
3. **Push para o repositorio remoto**: `git push`