#comando #git #tags #repositorio_remoto

### Enviando tags para o repositorio remoto
Para enviar tags para o repositorio remoto e usado o mesmo comando que e usado para enviar arquivos para o repositorio remoto: `git push`. Esse comando ira salvar a versao no Github, dentro de uma area chamada "**releases**".

```bash
$ git push origin versao
$ git push origin --tags
```

O prefixo `--tags` fara o comando enviar todas as tags do projeto para o repositorio remoto.

**Links**: [[Conceito de tags no git]], [[Listando versoes com git tag]], [[Criando versoes com git tag]], [[Analisando uma tag (versao)]], [[Navegando entre tags (versoes)]], 