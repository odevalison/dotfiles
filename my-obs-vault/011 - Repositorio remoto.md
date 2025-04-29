---
tags:
  - github
  - repositorio-remoto
Data de criacao: 2025-04-26
Data de modificacao: 2025-04-26
Indice: "[[000 - Git e Controle de Versao]]"
---
# O que e um repositorio remoto?
Um repositorio remoto e um repositorio Git que e armazenado em um servidor, fora do seu ambiente local (GitHub, GitLab, Bitbuckect). 
Ele serve como um ponto central de colaboracao, onde multiplos desenvolvedores podem trabalhar juntos em um mesmo projeto, sincronizando suas mudancas.
- Ao contrario de um repositorio local, o repositorio remoto nao e necessario para o controle de versao, mas ele facilita o trabalho em equipe e a colaboracao.

# Trabalhando com repositorios remotos
Ao criar um repositorio remoto no GitHub, ele ira te explicar o passo-a-passo (do zero) para que seu repositorio local seja adicionado a um repositorio remoto.
1. `git init` - Inicia o projeto como um repositorio git local (caso esteja fazendo do zero) => [[005 - Git init]]
2. `git add .` - Para adicionar os arquivos ao **stage area** => [[007 - Git add]]
3. `git commit -m` - Salva os arquivos do stage area no repositorio local => [[008 - Git commit]] 
4. `git branch -M main` - Cria uma nova branch chamada main => [[012 - Branches]] 
5. `git remote add origin` - Adiciona o repositorio local ao repositorio remoto criado. => [[013 - Git remote]]
6. `git push -u origin main` - Envia os arquivos salvos para o repositorio remoto => [[014 - Git push]]