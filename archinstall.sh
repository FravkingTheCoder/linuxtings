echo fravlos setup script
echo updating packages...
sudo pacman -Syu

echo installing paru
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd

echo installing cinnamon and other stuff
sudo pacman -S neovim npm terminator lxappearance flameshot mate-polkit lxrandr thunar thunar-volman thunar-archive-plugin thunar-media-tags-plugin tumbler ffmpeg ffmpegthumbnailer webp-pixbuf-loader nitrogen eog picom network-manager-applet blueberry blueman alsa-utils pamixer mpv yt-dlp okular celluloid qjackctl gnome-keyring eza bat ripgrep go flatpak qbittorrent ranger w3m ueberzug highlight atool libcaca starship unzip atuin kitty zip gzip ripgrep xsel fastfetch wget

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
unzip -n \*.zip
fc-cache
cd

echo Done
flatpak install flathub net.davidotek.pupgui2
flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub com.spotify.Client
flatpak install flathub org.kryogenix.Pick
echo Done

echo copying over neovim and kitty.conf
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
cd
cd linuxtings
cp kittycopy /home/fravlos/.config/kitty/kitty.conf
mv poke.txt /home/fravlos
cd

echo copying bashfile
cp linuxtings/bashcopyrc .bashrc
echo done

echo

reboot
