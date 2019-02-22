#!/bin/bash

echo 'alias cls=clear'>> ~/.bashrc;
echo 'alias upnow=apt update && apt -y upgrade && apt -y autoremove --purge' >> ~/.bashrc;
source ~/.bashrc;
apt update;
apt -y upgrade;
apt -y autoremove --purge;
apt -y install gobuster seclists;
wpscan --update;
# echo "AutomaticLoginEnable = true\nAutomaticLogin = root" >> /etc/gdm3/daemon.conf;
# gsettings set org.gnome.desktop.session idle-delay

### Set up john
apt install build-essential libssl-dev yasm libgmp-dev libpcap-dev libnss3-dev libkrb5-dev pkg-config libopenmpi-dev openmpi-bin zlib1g-dev libbz2-dev;
apt install flex cmake bison git;
cd /opt;
git clone https://github.com/teeshop/rexgen.git;
cd rexgen;
./install.sh;
ldconfig;
cd /opt;
git clone https://github.com/magnumripper/JohnTheRipper.git;
cd /opt/JohnTheRipper/src/;
./configure --enable-mpi;
make -s clean && make -sj4;

service postgresql start;
echo "Enter new password!";
passwd;

### Install Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -;
apt -y install apt-transport-https;
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list;
apt update;
apt -y install sublime-text;

cd /usr/share/wordlists;
gunzip -k rockyou.txt.gz;
