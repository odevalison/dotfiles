---
tags:
  - github
  - instrucao
  - repositorio
  - repositorio_remoto
Data de criacao: 2025-05-12
Data de modificacao: 2025-05-12
---

# Enviando repositorio local para o GitHub
Ao criar um repositorio remoto no GitHub, ele ira explicara um **passo-a-passo** para que seu repositorio local seja **enviado para um repositorio remoto**. 
**Observacao**: Partindo do principio que voce **ja tenha** um repositorio git iniciado.
1. `git add .`: Salva **todos os arquivos** na stage area, garantindo que todos os arquivos sejam enviados corretamente para o **repositorio remoto**. [[26042025 - Git add]]
2. `git commit -m "mensagem"`: Salva os arquivos da stage area no **repositorio local**, garantindo que eles **fiquem prontos** para serem enviados para o **repositorio remoto**. [[26042025 - Git commit]]
3. `git branch`: Cria uma **nova branch** chamada main, na qual sera a **branch principal do projeto**. [[02052025 - Git branch]]
4. `git remote "url_repo_remoto"` - Adiciona o **repositorio local** no repositorio remoto, a partir da **URL do repositorio remoto**. [[013 - Git remote]]
5. `git push -u origin main` - Envia **todos os arquivos do repositorio local** que estao prontos (commitados) para o **repositorio remoto**. [[26042025 - Git push]]

## Conexoes
[[26042025 - Git add]]
[[26042025 - Git commit]]
[[02052025 - Git branch]]
[[013 - Git remote]]
[[26042025 - Git push]]