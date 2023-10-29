#!/bin/bash

# Ensure the script is run as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

install_docker_debian() {
  apt-get update
  apt-get install -y apt-transport-https ca-certificates curl software-properties-common
  curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
  add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
  apt-get update
  apt-get install -y docker-ce
  systemctl start docker
  systemctl enable docker
}

install_docker_arch() {
  pacman -Sy --noconfirm docker
  systemctl start docker.service
  systemctl enable docker.service
}

install_portainer() {
  docker volume create portainer_data
  docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce
}

DISTRO=""

if grep "ID=debian" /etc/os-release; then
  DISTRO="Debian"
elif grep -q "ID=arch" /etc/os-release; then
  DISTRO="Arch"
else
  echo "Unsupported distribution"
  exit 1
fi

if [ "$DISTRO" == "Debian" ]; then
  install_docker_debian
elif [ "$DISTRO" == "Arch" ]; then
  install_docker_arch
fi

install_portainer

echo "Docker and Portainer installation completed."
