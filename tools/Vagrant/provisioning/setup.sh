#!/bin/bash
set -e

#Update package
sudo apt-get -y update

# Add locals to avoid "WARNING! Your environment specifies an invalid locale." notifications
sudo sh -c 'printf "LANGUAGE=\"en_US.UTF-8\"\nLC_ALL=\"en_US.UTF-8\"\n" >> /etc/default/locale'
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export DEBIAN_FRONTEND=noninteractive
locale-gen en_US.UTF-8
sudo dpkg-reconfigure locales

chmod +x /vagrant/provisioning/docker-install.sh /vagrant/provisioning/pull-image.sh /vagrant/provisioning/zsh-install.sh

# Provisioning scripts
echo "Runnig provisioning scripts ..."

/vagrant/provisioning/monitor-resolution.sh
/vagrant/provisioning/zsh-install.sh
/vagrant/provisioning/docker-install.sh
/vagrant/provisioning/pull-image.sh
/vagrant/provisioning/setup-mcpi.sh

# Clean
echo "Cleaning up ..."
apt-get autoremove -y
apt-get clean

echo "All done!"
echo "Wait for the machine to reboot and try to connect"
reboot