#!/bin/sh

echo Starting Install...

sudo dnf install -y NetworkManager-config-connectivity-fedora bluedevil breeze-gtk breeze-icon-theme cagibi colord-kde cups-pk-helper dolphin glibc-all-langpacks gnome-keyring-pam kcm_systemd kde-gtk-config kde-partitionmanager kde-print-manager kde-settings-pulseaudio kde-style-breeze kdegraphics-thumbnailers kdeplasma-addons kdialog kdnssd kf5-akonadi-server kf5-akonadi-server-mysql kf5-baloo-file kf5-kipi-plugins khotkeys kmenuedit konsole5 kscreen kscreenlocker ksshaskpass ksysguard kwalletmanager5 kwebkitpart kwin pam-kwallet phonon-qt5-backend-gstreamer pinentry-qt plasma-breeze plasma-desktop plasma-desktop-doc plasma-drkonqi plasma-nm plasma-nm-l2tp plasma-nm-openconnect plasma-nm-openswan plasma-nm-openvpn plasma-nm-pptp plasma-nm-vpnc plasma-pa plasma-user-manager plasma-workspace plasma-workspace-geolocation polkit-kde qt5-qtbase-gui qt5-qtdeclarative sddm sddm-breeze sddm-kcm sni-qt xorg-x11-drv-libinput setroubleshoot @"Hardware Support" @base-x @Fonts @"Common NetworkManager Submodules" @"Printing Support" @"Input Methods" @Multimedia firewall-config gwenview kate ark kget spectacle fedora-workstation-repositories flatpak

echo Installation Complete
echo Adding flatpak remote repo
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo Done.


sudo systemctl enable sddm
sudo systemctl set-default graphical.target
reboot
