# Dotfiles
- Dentro da sua pasta raiz ~, execute os comandos:
```bash
git clone https://github.com/omartinsdev/dotfiles
cd ~/dotfiles
```
- Após clonado, use o stow para criar os links simbólicos de cada pasta:
```bash
stow [nome da pasta]
```

# Script automatizado
- Dentro da pasta "scripts", torne o script executável com o comando:
```bash
chmod +x setup.sh
```
- Após isso, execute o script:
```bash
./setup.sh
```
