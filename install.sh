#! /bin/bash

# installing yay
pacman -Sy --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

cd

# putting configs in files
git clone https://github.com/s6fty/arch-config
cd arch-config
cp -r yay $HOME/.config
cp .zshrc $HOME
mkdir $HOME/.config/nano
cp nanorc $HOME/.config/nano


# yay packages
sudo pacman -S yt-dlp zsh xorg-xinput wine-staging winetricks ttf-dejavu ttf-liberation ttf-ubuntu-font-family torbrowser-launcher steam samba pavucontrol nvidia-dkms nvidia-settings nvidia-utils ntfs-3g nsxiv noto-fonts noto-fonts-cjk noto-fonts-emoji neofetch nano mousepad lutris keepassxc gvfs gvfs-mtp file-roller ffmpegthumbnailer ffmpeg 
yay -S discord-screenaudio
yay -S firefox-beta-bin
yay -S qbittorrent-enhanced
yay -S youtube-music-bin

echo ____________________________________
echo dont forget lightdm and grub configs
echo ____________________________________
