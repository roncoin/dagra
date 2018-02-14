
Debian
====================
This directory contains files used to package dowind/dowin-qt
for Debian-based Linux systems. If you compile dowind/dowin-qt yourself, there are some useful files here.

## dowin: URI support ##


dowin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install dowin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your dowin-qt binary to `/usr/bin`
and the `../../share/pixmaps/dowin128.png` to `/usr/share/pixmaps`

dowin-qt.protocol (KDE)

