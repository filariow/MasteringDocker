# vim
apt-get install -y vim
# less
apt-get install -y less
# Oh My ZSH
apt-get install -y git zsh
mkdir -p /tmp/zsh
cd /tmp/zsh
# Added zsh shell.
apt-get install zsh
wget --no-check-certificate https://github.com/ohmyzsh/ohmyzsh/raw/master/tools/install.sh
mkdir -p /opt
ZSH=/opt/oh-my-zsh sh install.sh
chsh -s /bin/zsh vagrant
sed 's/robbyrussell/agnoster/' -i /root/.zshrc
# zshers group
groupadd zshers
usermod -aG zshers vagrant
usermod -aG zshers root
chown -R root:zshers /opt/oh-my-zsh
# Enrich the zshrc conf file
cp /root/.zshrc /home/vagrant/.zshrc
chown -R vagrant:vagrant /home/vagrant/.zshrc
echo 'alias ff="find . -iname "' | tee -a /home/vagrant/.zshrc
echo 'alias ls="ls -h --color=auto "' | tee -a /home/vagrant/.zshrc 
echo 'alias ll="ls -l "'  | tee -a  /home/vagrant/.zshrc
echo 'alias l="ls -l "'   | tee -a /home/vagrant/.zshrc
echo 'alias la="ls -al "' | tee -a  /home/vagrant/.zshrc
echo 'alias l.="ls -al "' | tee -a /home/vagrant/.zshrc
rm -r /tmp/zsh
chsh -s /bin/zsh
