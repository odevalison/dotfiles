---
tags:
  - comando-git
Data de criacao: 2025-04-26
Data de modificacao: 2025-04-26
Indice: "[[000 - Git e Controle de Versao]]"
---
# O que e Git add?
O comando `git add` permite adicionar arquivos ao **stage area**, tornando-o um arquivo pronto para ser commitado. Quando um arquivo e adicionado ao stage area, o git monitora cada modificacao feita nele.
- Para entender melhor a stage area, veja a nota: [[009 - Stage area]]
- As modificacoes feitas em arquivos do stage area, ficam visiveis ao utilizar o comando `git status`, aparecendo como **changes not staged for commit**.
	- Esse conceito tambem e citado na nota [[006 - Git status]], na parte de "Monitorando arquivos"