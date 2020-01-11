# vim
sudo apt-get install -y vim
# less
sudo apt-get install -y less
# Oh My ZSH
sudo apt-get install -y git zsh
mkdir -p /tmp/zsh
cd /tmp/zsh
# Added zsh shell.
sudo apt-get install zsh
wget --no-check-certificate https://github.com/ohmyzsh/ohmyzsh/raw/master/tools/install.sh
mkdir -p /opt
ZSH=/opt/oh-my-zsh sh install.sh
chsh -s /bin/zsh vagrant
# zshers group
groupadd zshers
usermod -aG zshers vagrant
usermod -aG zshers root
sudo chown -R root:zshers /opt/oh-my-zsh
# Enrich the zshrc conf file
sudo cp /root/.zshrc /home/vagrant/.zshrc
sudo chown -R vagrant:vagrant /home/vagrant/.zshrc
echo 'alias ff="find . -iname "' | tee -a /home/vagrant/.zshrc
echo 'alias ls="ls -h --color=auto "' | tee -a /home/vagrant/.zshrc 
echo 'alias ll="ls -l "'  | tee -a  /home/vagrant/.zshrc
echo 'alias l="ls -l "'   | tee -a /home/vagrant/.zshrc
echo 'alias la="ls -al "' | tee -a  /home/vagrant/.zshrc
echo 'alias l.="ls -al "' | tee -a /home/vagrant/.zshrc
rm -r /tmp/zsh
chsh -s /bin/zsh
