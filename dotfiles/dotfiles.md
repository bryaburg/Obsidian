#!/bin/bash

# Exit script if any command fails
set -e

# Update and upgrade system
sudo apt update && sudo apt upgrade -y

# Create tmp directory and navigate to it
mkdir -p tmp
cd tmp

# Install libraries and tools
sudo apt install -y \
    build-essential pkg-config autoconf bison clang \
    libssl-dev libreadline-dev zlib1g-dev libyaml-dev libncurses5-dev libffi-dev libgdbm-dev libjemalloc2 \
    libvips imagemagick libmagickwand-dev mupdf mupdf-tools \
    redis-tools sqlite3 libsqlite3-0 libmysqlclient-dev \
    git tldr vlc docker.io docker-buildx

# Add and install LibreWolf
echo 'deb [signed-by=/usr/share/keyrings/librewolf-archive-keyring.gpg] http://deb.librewolf-community.gitlab.io/ librewolf main' | sudo tee /etc/apt/sources.list.d/librewolf.list
wget -qO- https://deb.librewolf-community.gitlab.io/librewolf-archive-keyring.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/librewolf-archive-keyring.gpg
sudo apt update
sudo apt install -y librewolf
xdg-settings set default-web-browser librewolf.desktop

# Install Obsidian
flatpak install -y flathub md.obsidian.Obsidian

# Add and install Signal
wget -qO- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor | sudo tee /usr/share/keyrings/signal-desktop-keyring.gpg >/dev/null
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' | sudo tee /etc/apt/sources.list.d/signal-xenial.list
sudo apt update
sudo apt install -y signal-desktop

# Install Docker Compose
DOCKER_COMPOSE_VERSION="2.27.0"
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -sSL "https://github.com/docker/compose/releases/download/v$DOCKER_COMPOSE_VERSION/docker-compose-linux-x86_64" -o $DOCKER_CONFIG/cli-plugins/docker-compose
chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose

# Install LazyGit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -sLo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar -xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm lazygit.tar.gz lazygit

# Install Neovim
wget -O nvim.tar.gz "https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz"
tar -xf nvim.tar.gz
sudo install nvim-linux64/bin/nvim /usr/local/bin/nvim
sudo cp -R nvim-linux64/lib /usr/local/
sudo cp -R nvim-linux64/share /usr/local/
rm -rf nvim-linux64 nvim.tar.gz

# Limit Docker log size
echo '{"log-driver":"json-file","log-opts":{"max-size":"10m","max-file":"5"}}' | sudo tee /etc/docker/daemon.json

# Add user to Docker group
sudo usermod -aG docker "${USER}"

# Clone LazyVim configuration if Neovim has never been run
if [ ! -d "$HOME/.config/nvim" ]; then
    git clone https://github.com/bryaburg/nvim ~/.config/nvim
fi

# Cleanup
cd ..
rm -rf tmp

echo "Setup completed successfully."
