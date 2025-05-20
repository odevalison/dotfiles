---
tags:
  - comando-git
  - merge
  - conflitos
Data de criacao: 2025-05-06
Data de modificacao: 2025-05-06
---
# O que sao Merge Conflicts?
Merge conflicts (ou conflitos de mesclagem) acontecentem quando o Git nao consegue combinar automaticamente mudancas feitas em diferentes branches.
Isso geralmente acontece quando duas pessoas (ou voce mesmo, em branches diferentes) modificam a mesma linha de um arquivo ou partes proximas entre si.

# Por que conflitos de mesclagem ocorrem?
O Git mescla arquivos muito bem, porem se houverem ambiguidades, por exemplo:
- A branch `main` altera a linha 10 de `main.js`, e
- A branch `login` tambem alterou a mesma linha 10 do `main.js`.

Ao tentar fazer um `git merge login` na `main`, o Git ira parar o processo de mesclagem e marcar o arquivo como conflitado, esperando que voce resolva os conflitos manualmente.
- Para rever como realizar um merge => [[04052025 - Git merge]]

# Como identificar um conflito?
Depois de um merge conflict, o Git mostrara os trechos afetados nos arquivos, mais ou menos assim:

```javascript
<<<<<<< HEAD
Código da branch atual (ex: main)
=======
Código da branch que esta sendo mesclada (ex: login)
>>>>>>> login
```

Voce precisa escolher, editar ou combinar essas partes e remover os marcadores de conflito (`<<<<<<`, `======`, `>>>>>>`)

# Como resolver um merge conflict?
Para resolver um merge conflict, existe algumas etapas padrao:
1. Abrir o arquivo conflitado
2. Editar o conteudo para manter o que deve permanecer
3. Remover os marcadores de conflito
4. Adicionar os arquivos ao stage novamente
	- Para rever como adicionar arquivos ao stage => [[26042025 - Git add]]
	- Para rever o que e o stage area => [[26042025 - Staging area]]
5. Finalizar o merge com um commit (se necessario)
	- Para rever como realizar um commit => [[26042025 - Git commit]]