echo fravlos setup script
echo updating packages...
sudo pacman -Syu

echo installing paru
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd

echo installing cinnamon and other stuff
sudo pacman -S cinnamon ly neovim npm terminator lxappearance flameshot lxsession lxrandr thunar thunar-volman thunar-archive-plugin thunar-media-tags-plugin tumbler ffmpeg ffmpegthumbnailer webp-pixbuf-loader feh eog picom network-manager-applet blueberry blueman alsa-utils pamixer mpv yt-dl okular celluloid qjackctl gnome-keyring eza bat ripgrep go flatpak qbittorrent ranger w3m ueberzug highlight atool libcaca

echo installing important gaming stuff
sudo pacman -S --needed lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader
sudo pacman -S --needed wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls \
mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error \
lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo \
sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama \
ncurses lib32-ncurses ocl-icd lib32-ocl-icd libxslt lib32-libxslt libva lib32-libva gtk3 \
lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader
sudo pacman -S steam lutris gamemode mangohud gamescope lib32gamemode winetricks


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
cd

echo Done
flatpak install flathub us.zoom.Zoom
flatpak install flathub com.spotify.Client
flatpak install flathub com.github.IsmaelMartinez.teams_for_linux
flatpak install flathub net.davidotek.pupgui2

echo Done
echo copying bashfile
cp linuxtings/bashcopyrc .bashrc
echo done

echo enabling ly and restarting
sudo systemctl enable ly
reboot
