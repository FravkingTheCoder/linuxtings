echo fravlos setup script
echo updating packages...
sudo pacman -Syu

echo installing paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

echo installing gnome...
sudo pacman -S gnome-shell gnome-shell-extensions gnome-backgrounds gnome-control-center gnome-menus gnome-session gnome-font-viewer gnome-disk-utility gnome-console gdm gnome-color-manager gnome-keyring gvfs nautilus xdg-desktop-portal-gnome gnome-system-monitor flatpak snapshot flameshot xd-user-dirs-gtk neovim

echo Done... 

echo installing fonts...
mkdir .fonts
cd .fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Hack.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Gohu.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/BigBlueTerminal.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/CascadiaMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Iosevka.zip
unzip -n \*.zip
fc-cache

echo Done
echo enabling gdm and restarting
sudo systemctl enable gdm
reboot
