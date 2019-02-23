#!/bin/sh

# thie file installs packages for ubuntu 18.04.2 or later
# you have to execute the file with root

#git
apt install -y git

# vim
apt install -y vim
git clone https://github.com/leekasong/vimrc.git
cd ./vimrc
mv .vimrc ~/.vimrc
rm -rf ./vimrc



# chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
apt-get update
apt-get install google-chrome-stable

#

