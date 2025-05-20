---
tags:
  - git
  - comando
  - branch
Data de criacao: 2025-05-14
Data de modificacao: 2025-05-14
---

# Deletando uma branch existente do projeto
Usando o comando `git branch` com a flag `-u` e passando o nome de uma branch existente, e possivel deletar a branch especificada, dessa forma:

```bash
$ git branch -d nome-branch
```

Este comando ira deletar a branch com o nome especificado **permanentemente**.
**Observacao**: Apos deletada, nem a branch e nem seus arquivos poderao ser restaurados, portanto certifique-se de passar o nome correto. 

## Conexoes
[[01052025 - Branch]]
[[02052025 - Git branch]]
[[140520252004 - Listando as branchs do projeto]]
[[140520252005 - Criando uma nova branch no projeto]]