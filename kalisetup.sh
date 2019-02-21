#!/bin/bash

echo 'alias cls=clear'>> ~/.bashrc;
echo 'alias upnow=apt update && apt -y upgrade && apt -y autoremove --purge' >> ~/.bashrc;
source ~/.bashrc;
apt update;
apt -y upgrade;
apt -y autoremove --purge;
apt -y install gobuster seclists;
wpscan --update;
msfupdate;
# echo "AutomaticLoginEnable = true\nAutomaticLogin = root" >> /etc/gdm3/daemon.conf;
# gsettings set org.gnome.desktop.session idle-delay

### Install Sublime Text
wget -qO -https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -;
apt -y install apt-transport-https;
echo "deb https://download.sublimetext.com/ apt/stable/" | sude tee /etc/apt/sources.list.d/sublime-text.list;
apt update;
apt -y install sublime-text;

cd /usr/share/wordlists;
gunzip -k rockyou.txt.gz;

### Change background
cd /usr/share/images/desktop-base;
mv login-background.png login-backgroundOLD.png
wget http://www.fullhdwpp.com/wp-content/uploads/Good_Morning_Debian_www.FullHDWpp.com_.png;
mv Good_Morning_Debian_www.FullHDWpp.com_.png login-background.png
cd ~;
