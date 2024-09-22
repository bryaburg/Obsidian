# Exit on any error
set -e

# Update and upgrade system
sudo apt update && sudo apt upgrade -y

# Create tmp directory and navigate to it
mkdir -p tmp
cd tmp

# Install required libraries and tools
sudo apt install -y \
    build-essential pkg-config autoconf bison clang \
    libssl-dev libreadline-dev zlib1g-dev libyaml-dev libncurses5-dev libffi-dev libgdbm-dev libjemalloc2 \
    libvips imagemagick libmagickwand-dev mupdf mupdf-tools \
    redis-tools sqlite3 libsqlite3-0 libmysqlclient-dev \
    git tldr vlc

# Remove conflicting Docker-related packages
for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove -y $pkg || true; done
sudo apt update

# Install necessary packages for Docker installation
sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    software-properties-common

# Add Docker's official GPG key:
sudo mkdir -p /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Add Docker's repository to Apt sources
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update

# Install Docker (docker-ce should include docker-cli)
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
wget -O nvim.tar.gz "https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz"
tar -xf nvim.tar.gz
sudo install nvim-linux64/bin/nvim /usr/local/bin/nvim
sudo cp -R nvim-linux64/lib /usr/local/
sudo cp -R nvim-linux64/share /usr/local/
rm -rf nvim-linux64 nvim.tar.gz

# Clone LazyVim configuration if Neovim has never been run
if [ ! -d "$HOME/.config/nvim" ]; then
    git clone https://github.com/bryaburg/nvim ~/.config/nvim
fi

# Add current user to the Docker group (avoiding need for sudo)
sudo usermod -aG docker $USER

# Cleanup
cd ..
rm -rf tmp

# Reload the shell for the changes to take effect
echo "Reloading shell to apply changes..."
exec $SHELL

# Check for successful installations
declare -a programs=("docker" "nvim" "lazygit" "git" "redis-cli" "sqlite3" "tldr" "vlc")

for program in "${programs[@]}"; do
    if command -v $program &>/dev/null; then
        echo "$program is successfully installed."
    else
        echo "Error: $program installation failed or it's not in the PATH."
    fi
done

echo "Setup completed successfully."
