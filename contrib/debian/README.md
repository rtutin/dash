
Debian
====================
This directory contains files used to package 2chcoind/2chcoin-qt
for Debian-based Linux systems. If you compile 2chcoind/2chcoin-qt yourself, there are some useful files here.

## 2chcoin: URI support ##


2chcoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install 2chcoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your 2chcoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/2chcoin128.png` to `/usr/share/pixmaps`

2chcoin-qt.protocol (KDE)

