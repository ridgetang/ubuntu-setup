#!/bin/bash
# sudo aptitude update
# sudo aptitude dist-upgrade
sudo aptitude install -y compizconfig-settings-manager \
	build-essential curl fakeroot \
	zsh zsh-lovers zsh-doc zsh-dev ssh \
	screen tree openssh-server openssh-blacklist-extra \
	subversion git-core git-svn cvs git-gui gitk git-doc \
	ruby rubygems ruby-dev ri rdoc irb libruby libruby-extras \
	mysql-client mysql-server libmysqlclient16 libmysqlclient16-dev sqlite3 sqlite3-doc \
	sun-java6-jdk sun-java6-jre sun-java6-source sun-java6-plugin sun-java6-demo sun-java6-fonts \
	libqt4-sql libqt4-script qt4-qtconfig libqt4-qt3support libcurl3 libqtcore4 libqt4-sql-mysql libqt4-designer libqt4-network libqt4-dbus libqt4-xml libqtgui4 libaudio2 \
	language-support-zh language-support-extra-zh language-support-translations-zh language-pack-gnome-zh zh-autoconvert \
	xorg-dev xserver-xorg-dev libgtk2.0-dev libncurses5 libncurses5-dev libidl-dev libmagickcore-dev \
	flac gnome-do

