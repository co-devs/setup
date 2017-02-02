#!/bin/bash

apt-get update;
apt-get install git;
msfupdate;
mkdir ~/Downloads/theHarvester;
cd  ~/Downloads/theHarvester;
git clone https://www.github.com/laramies/theHarvester;
echo "AutomaticLoginEnable = true\nAutomaticLogin = root" >> /etc/gdm3/daemon.conf;
gsettings set org.gnome.desktop.session idle-delay
cd ~/Downloads;
wget https://download.01.org/gfx/ubuntu/16.10/main/pool/main/i/intel-graphics-update-tool/intel-graphics-update-tool_2.0.3_amd64.deb;
dpkg -i intel-graphics-update-tool_2.0.3_amd64.deb;
apt-get install -f;
wget https://download.sublimetext.com/sublime_text_3_build_3126_x64.tar.bz2;
bzip2 -d sublime_text_3_build_3126_x64.tar.bz2;
tar xf sublime_text_3_build_3126_x64.tar;
rm sublime_text_3_build_3126_x64.tar;

test -e ~/.local/share/applications/defaults.list -a 1$(grep -sc \[Default\ Applications\] ~/.local/share/applications/defaults.list) != 10  || echo "[Default Applications]" >> ~/.local/share/applications/defaults.list; grep gedit.desktop /usr/share/applications/defaults.list | sed "s/gedit\.desktop/sublime.desktop/g" >> ~/.local/share/applications/defaults.list;
echo "[Desktop Entry]
Version=1.0
Name=Sublime Text 2
# Only KDE 4 seems to use GenericName, so we reuse the KDE strings.
# From Ubuntu's language-pack-kde-XX-base packages, version 9.04-20090413.
GenericName=Text Editor

Exec=~/.local/Sublime\ Text\ 2/sublime_text
Terminal=false
Icon=~/.local/Sublime Text 2/Icon/48x48/sublime_text.png
Type=Application
Categories=TextEditor;IDE;Development
X-Ayatana-Desktop-Shortcuts=NewWindow

[NewWindow Shortcut Group]
Name=New Window
Exec=~/.local/Sublime\ Text\ 2/sublime_text -n
TargetEnvironment=Unity" >> ~/.local/share/applications/sublime.desktop

cd /usr/share/images/desktop-base;
mv login-background.png login-backgroundOLD.png
wget http://www.fullhdwpp.com/wp-content/uploads/Good_Morning_Debian_www.FullHDWpp.com_.png;
mv Good_Morning_Debian_www.FullHDWpp.com_.png login-background.png
cd ~;
