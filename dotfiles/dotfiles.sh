#!/bin/bash

# Function to handle errors
error_handler() {
    echo "An error occurred."
    while true; do
        read -p "Do you want to continue? (y/n): " yn
        case $yn in
            [Yy]* ) return 0;; # Continue the script
            [Nn]* ) exit 1;; # Exit the script
            * ) echo "Please answer yes (y) or no (n).";;
        esac
    done
}

# Trap any command that returns a non-zero exit code and call error_handler
trap 'error_handler' ERR

# Update and upgrade system
sudo apt update && sudo apt upgrade -y

# Create tmp directory and navigate to it
mkdir -p tmp
cd tmp

# Install required libraries and tools
sudo apt install -y \
    build-essential pkg-config autoconf bison clang gcc wget \
    libssl-dev libreadline-dev zlib1g-dev libyaml-dev libncurses5-dev libffi-dev libgdbm-dev libjemalloc2 \
    libvips imagemagick libmagickwand-dev mupdf mupdf-tools \
    redis-tools sqlite3 libsqlite3-0 libmysqlclient-dev \
    git tldr vlc ripgrep fd-find python3 python3-pip

# Alias fd to fdfind if necessary
echo "alias fd=fdfind" >> ~/.bashrc
source ~/.bashrc

# Install Docker packages
sudo apt remove -y docker.io docker-doc docker-compose podman-docker containerd runc || true
sudo apt update

sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    software-properties-common

# Add Docker's official GPG key
sudo mkdir -p /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Add Docker repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update

# Install Docker packages
sudo apt install -y docker-ce containerd.io docker-buildx-plugin docker-compose-plugin

# Test Docker installation
sudo docker run hello-world

# Install LazyGit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -sLo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar -xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm lazygit.tar.gz lazygit

# Install Neovim
echo "Installing Neovim..."
wget -O nvim.tar.gz "https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz"
tar -xf nvim.tar.gz

# Verify if the Neovim binary exists
if [ -f "nvim-linux64/bin/nvim" ]; then
    sudo install nvim-linux64/bin/nvim /usr/local/bin/nvim
    sudo cp -R nvim-linux64/lib /usr/local/
    sudo cp -R nvim-linux64/share /usr/local/
    echo "Neovim installed successfully."
else
    echo "Error: Neovim binary was not found, installation failed."
fi
rm -rf nvim-linux64 nvim.tar.gz

# Clone LazyVim configuration if Neovim has never been run
if [ ! -d "$HOME/.config/nvim" ]; then
    git clone https://github.com/bryaburg/nvim ~/.config/nvim
fi

# Sync LazyVim and install all necessary plugins
nvim --headless "+Lazy sync" +qall

# Install Node.js and npm for Tree-sitter
sudo apt install -y nodejs npm
sudo npm install -g tree-sitter-cli

# Add current user to Docker group
sudo usermod -aG docker $USER

# Cleanup
cd ..
rm -rf tmp

# Reload shell
exec $SHELL

# Check for successful installations
declare -a programs=("docker" "nvim" "lazygit" "git" "redis-cli" "sqlite3" "tldr" "vlc" "gcc" "wget" "ripgrep" "fd" "python3" "pip" "tree-sitter")

for program in "${programs[@]}"; do
    if command -v $program &>/dev/null; then
        echo "$program is successfully installed."
    else
        echo "Error: $program installation failed or it's not in the PATH."
    fi
done

echo "Setup completed successfully."
