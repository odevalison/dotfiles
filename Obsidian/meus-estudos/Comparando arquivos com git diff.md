#git #comando #diff 

### Comparando arquivos
O comando `git diff` permite verificar as **diferencas entre os arquivos** do seu **repositorio local** e o **repositorio remoto**, permitindo **identificar as diferencas** entre a versao local e remota. 
Esse comando permite comparar tanto versoes de um **unico arquivo** quanto de uma **branch** por completo.

```bash
$ git diff
$ git diff main
$ git diff HEAD: arquivo
```

`git diff HEAD: arquivo`: Compara um arquivo em especifico.

**Links**: [[Conceito de branchs no git]], 