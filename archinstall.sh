echo fravlos setup script
echo updating packages...
sudo pacman -Syu

echo installing paru
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd

echo installing cinnamon and other stuff
sudo pacman -S neovim npm terminator lxappearance flameshot mate-polkit lxrandr thunar thunar-volman thunar-archive-plugin thunar-media-tags-plugin tumbler ffmpeg ffmpegthumbnailer webp-pixbuf-loader nitrogen eog picom network-manager-applet blueberry blueman alsa-utils pamixer mpv yt-dlp okular celluloid qjackctl gnome-keyring eza bat ripgrep go flatpak qbittorrent ranger w3m ueberzug highlight atool libcaca starship unzip atuin kitty zip gzip ripgrep xsel fastfetch wget rofi otf-font-awesome

echo Done.

echo adding atuin and ble.sh
git clone --recursive --depth 1 --shallow-submodules https://github.com/akinomyoga/ble.sh.git
make -C ble.sh install PREFIX=~/.local
cd

echo Done.

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
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/3270.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/UbuntuMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/SourceCodePro.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/ComicShannsMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/DroidSansMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Terminus.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/UbuntuMono.zip
unzip -n \*.zip
fc-cache
cd

echo Done
flatpak install flathub net.davidotek.pupgui2
flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub org.kryogenix.Pick
flatpak install flathub dev.vencord.Vesktop
flatpak install flathub com.heroicgameslauncher.hgl
echo Done

echo copying over neovim and kitty.conf
git clone https://github.com/FravkingTheCoder/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
cd
cd linuxtings
cp xinitcopy ~/.xinitrc
cd
chmod +x ~/.xinitrc

#cp kittybk /home/fravlos/.config/kitty/kitty.conf
#mv poke.txt /home/fravlos
cd

echo copying bashfile
mkdir -p ~/build
cd ~/build
git clone https://github.com/christitustech/mybash
cd mybash
./setup.sh
cd
cp linuxtings/bashcopyrc .bashrc
echo done

echo dwm dependencies 
cd linuxtings
./dwm_dependencies
cd
echo rebooting

reboot
