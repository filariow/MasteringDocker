#!/bin/bash
set -e

#Update package
sudo apt-get -y update


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