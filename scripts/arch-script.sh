#!/bin/bash
set -e

# Atualiza os repositórios e instala ferramentas básicas
echo "Atualizando os repositórios e instalando dependências..."
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm base-devel git curl wget flatpak

# Verifica se o AUR helper (yay) está instalado
if ! command -v yay &>/dev/null; then
  echo "Instalando yay (AUR helper)..."
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si --noconfirm
  cd ..
  rm -rf yay
fi

# Adiciona o repositório Flathub, se não estiver configurado
if ! flatpak remotes | grep -q flathub; then
  echo "Adicionando o repositório Flathub..."
  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
fi

# Função para instalar via Pacman, AUR (yay), ou Flatpak
install_software() {
  SOFTWARE=$1
  PACMAN_ID=$2
  AUR_ID=$3
  FLATPAK_ID=$4
  
  echo "Instalando $SOFTWARE..."
  
  if [ ! -z "$PACMAN_ID" ] && sudo pacman -S --noconfirm $PACMAN_ID 2>/dev/null; then
    echo "$SOFTWARE instalado via Pacman."
  elif [ ! -z "$AUR_ID" ] && yay -S --noconfirm $AUR_ID 2>/dev/null; then
    echo "$SOFTWARE instalado via AUR (yay)."
  elif [ ! -z "$FLATPAK_ID" ] && flatpak install -y flathub $FLATPAK_ID 2>/dev/null; then
    echo "$SOFTWARE instalado via Flatpak."
  else
    echo "Erro ao instalar $SOFTWARE. Por favor, instale manualmente."
  fi
}

# Instalar cada software
install_software "Git" "git" "" ""
install_software "Postman" "" "postman-bin" "com.getpostman.Postman"
install_software "VSCode" "" "visual-studio-code-bin" "com.visualstudio.code"
install_software "OBS Studio" "obs-studio" "" "com.obsproject.Studio"
install_software "Discord" "" "discord" "com.discordapp.Discord"
install_software "VLC" "vlc" "" "org.videolan.VLC"
install_software "Chrome" "" "google-chrome" "com.google.Chrome"
install_software "Telegram" "telegram-desktop" "" "org.telegram.desktop"
install_software "Spotify" "" "spotify" "com.spotify.Client"
install_software "Tmux" "tmux" "" ""
install_software "CMake" "cmake" "" ""
install_software "Stow" "stow" "" ""
install_software "Zsh" "zsh" "" ""

# Instalar Oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
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
  sudo pacman -S --noconfirm python python-pip
else 
  echo "Python 3 já está instalado."
fi

# Instalar Neovim versão 0.10.x
if ! command -v nvim &>/dev/null || nvim --version | grep -q "v0.10"; then
  echo "Instalando Neovim versão 0.10.x..."
  sudo pacman -S --noconfirm ninja make gettext unzip cmake
  git clone https://github.com/neovim/neovim
  cd neovim
  git checkout release-0.10
  make CMAKE_BUILD_TYPE=RelWithDebInfo
  sudo make install
  cd ..
  rm -rf neovim
else
  echo "Neovim já está instalado."
fi

echo "Todos os softwares foram instalados ou já estavam presentes no sistema."
