#!/bin/bash

cd ~

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

# Install required libraries and tools, including g++
sudo apt install -y build-essential pkg-config autoconf bison clang gcc g++ wget \
    libssl-dev libreadline-dev zlib1g-dev libyaml-dev libncurses5-dev libffi-dev \
    libgdbm-dev libjemalloc2 libvips imagemagick libmagickwand-dev mupdf mupdf-tools \
    redis-tools sqlite3 libsqlite3-0 default-libmysqlclient-dev git tldr vlc ripgrep \
    fd-find python3 python3-pip cmake make xclip luarocks curl htop

# Alias fd to fdfind if necessary
echo "alias fd=fdfind" >> ~/.bashrc
source ~/.bashrc

# Configure Git with username and email
git config --global user.name "alloutnoob"
git config --global user.email "bryanburgess95@hotmail.com"

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

# --- Node.js Provider ---
# Install Node.js and npm for Tree-sitter CLI and Neovim Node.js provider
sudo apt install -y nodejs npm
npm install -g neovim

# Set up global npm directory to avoid permission issues
mkdir -p ~/.npm-global
npm config set prefix '~/.npm-global'
export PATH=~/.npm-global/bin:$PATH
echo "export PATH=~/.npm-global/bin:\$PATH" >> ~/.bashrc
source ~/.bashrc

# Install tree-sitter CLI globally
npm install -g tree-sitter-cli

# --- Perl Provider ---
# Install Perl provider for Neovim and force-install the Neovim::Ext module
sudo apt install -y cpanminus liblocal-lib-perl
cpanm --force Neovim::Ext

# --- Python Provider ---
# Ensure python3-venv is installed
sudo apt install -y python3-venv

# Create a virtual environment for Neovim Python packages
python3 -m venv ~/.nvim-venv
source ~/.nvim-venv/bin/activate

# Install Neovim Python package inside the virtual environment
pip install pynvim

# Deactivate the virtual environment after installation
deactivate

# --- Ruby Provider ---
# Install Ruby and Neovim Ruby provider
sudo apt install -y ruby-full
gem install neovim

# --- LuaRocks ---
# Install LuaRocks for Lua module management
sudo apt install -y luarocks


# Add current user to Docker group
sudo usermod -aG docker $USER

# Cleanup tmp directory
cd ~
rm -rf tmp

# Sync LazyVim and install all necessary plugins, including Telescope for live grep
nvim --headless "+Lazy sync" +qall

# Reload shell
exec $SHELL
