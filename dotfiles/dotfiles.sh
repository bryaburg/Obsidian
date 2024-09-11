sudo apt update

sudo apt upgrade

mkdir tmp
cd tmp

#Libraries
sudo apt install -y \
	build-essential pkg-config autoconf bison clang \
	libssl-dev libreadline-dev zlib1g-dev libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev libjemalloc2 \
	libvips imagemagick libmagickwand-dev mupdf mupdf-tools \
	redis-tools sqlite3 libsqlite3-0 libmysqlclient-dev

# Add Git
sudo apt install git

# Add TLDR
sudo apt install tldr

# Add the LibreWolf repository
echo 'deb [signed-by=/usr/share/keyrings/librewolf-archive-keyring.gpg] http://deb.librewolf-community.gitlab.io/ librewolf main' | sudo tee /etc/apt/sources.list.d/librewolf.list

# Add the repository's GPG key
wget -qO- https://deb.librewolf-community.gitlab.io/librewolf-archive-keyring.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/librewolf-archive-keyring.gpg

# Update package lists
sudo apt update

# Install LibreWolf
sudo apt install librewolf -y

# Set LibreWolf as the default web browser
xdg-settings set default-web-browser librewolf.desktop

# Obsidian is a multi-platform note taking application. See https://obsidian.md
flatpak install -y flathub md.obsidian.Obsidian

# Signal
wget -qO- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor >signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee /usr/share/keyrings/signal-desktop-keyring.gpg >/dev/null
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |
	sudo tee /etc/apt/sources.list.d/signal-xenial.list
rm signal-desktop-keyring.gpg
sudo apt update
sudo apt install -y signal-desktop

# VLC
sudo apt install -y vlc

#Docker
sudo apt install -y docker.io docker-buildx
sudo usermod -aG docker ${USER}

# Limit log size to avoid running out of disk
echo '{"log-driver":"json-file","log-opts":{"max-size":"10m","max-file":"5"}}' | sudo tee /etc/docker/daemon.json

DOCKER_COMPOSE_VERSION="2.27.0"
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -sSL https://github.com/docker/compose/releases/download/v$DOCKER_COMPOSE_VERSION/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose

#Lazy Docker
LAZYDOCKER_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazydocker/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -sLo lazydocker.tar.gz "https://github.com/jesseduffield/lazydocker/releases/latest/download/lazydocker_${LAZYDOCKER_VERSION}_Linux_x86_64.tar.gz"
tar -xf lazydocker.tar.gz lazydocker
sudo install lazydocker /usr/local/bin
rm lazydocker.tar.gz lazydocker

#Lazy Git
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -sLo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar -xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm lazygit.tar.gz lazygit

#Nvim
wget -O nvim.tar.gz "https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz"
tar -xf nvim.tar.gz
sudo install nvim-linux64/bin/nvim /usr/local/bin/nvim
sudo cp -R nvim-linux64/lib /usr/local/
sudo cp -R nvim-linux64/share /usr/local/
rm -rf nvim-linux64 nvim.tar.gz
cd -

# Only attempt to set configuration if Neovim has never been run
if [ ! -d "$HOME/.config/nvim" ]; then
	# Use LazyVim
	git clone https://github.com/bryaburg/nvim ~/.config/nvim

fi






