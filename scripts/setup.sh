#!/bin/bash
set -e

# Atualiza os repositórios e instala ferramentas básicas

echo "Atualizando os repositórios e instalando dependências..."
sudo apt update && sudo apt upgrade -y
sudo apt install -y curl wget flatpak snapd

# Adiciona o repositório Flathub, se não estiver configurado

if ! flatpak remotes | grep -q flathub; then
  echo "Adicionando o repositório Flathub..."
  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
fi

# Função para instalar via Flatpak, Snap ou APT

install_software () {
  SOFTWARE=$1
  FLATPAK_ID=$2
  SNAP_ID=$3
  APT_ID=$4

  if flatpak install -y flathub $FLATPAK_ID 2>/dev/null; then
    echo "$SOFTWARE instalado via Flatpak."
  elif sudo snap install $SNAP_ID --classic 2>/dev/null; then
    echo "$SOFTWARE instalado via Snap."
  elif sudo apt install -y $APT_ID 2>/dev/null; then
    echo "$SOFTWARE instalado via APT."
  else
    echo "Erro ao instalar $SOFTWARE. Por favor, instale manualmente."
  fi
}

# Instalar cada software

install_software "Git" "" "" "git"
install_software "Postman" "com.getpostman.Postman" "postman" ""
install_software "VSCode" "com.visualstudio.code" "code" ""
install_software "OBS Studio" "com.obsproject.Studio" "obs-studio" ""
install_software "Discord" "com.discordapp.Discord" "discord" ""
install_software "VLC" "org.videolan.VLC" "" "vlc"
install_software "Chrome" "com.google.Chrome" "chromium" "google-chrome-stable"
install_software "Telegram" "org.telegram.desktop" "telegram-desktop" "telegram-desktop"
install_software "Spotify" "" "spotify" ""
install_software "Tmux" "" "" "tmux"
install_software "CMake" "" "" "cmake"
install_software "Stow" "" "" "stow"
install_software "Zsh" "" "" "zsh"

# Instalar Oh-my-zsh

if ! -d "$HOME/.oh-my-zsh"; then
  echo "Instalando Oh-My-Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Instalar Node.js

if ! command -v node &>/dev/null; then
  echo "Instalando Node.js..."
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash
  export NVM_DIR="$HOME/.nvm"
  source "$NVM_DIR/nvm.sh"
  nvm install 22
else
  echo "Node.js já está instalado."
fi

# Instalar Python3 e pip

if ! command -v python3 &>/dev/null; then
  echo "Instalando Python 3..."
  sudo apt install -y python3
else 
  echo "Python 3 já está instalado."
fi

if ! command -v pip3 &>/dev/null; then
  echo "Instalando pip..."
  sudo apt install -y python3-pip
else
  echo "Pip já está instalado."
fi

# Instalar Neovim 0.11.0

if ! command -v nvim &>/dev/null; then
  echo "Instalando Neovim..."
  sudo apt install -y ninja-build gettext unzip
  git clone https://github.com/neovim/neovim
  sudo apt install -y make
  cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
  sudo make install
  rm -rf neovim
else
  echo "Neovim já está instalado."
fi

echo "Todos os softwares foram instalados ou já estavam presentes no sistema."
