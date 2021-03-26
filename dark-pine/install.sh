# install packages
echo * INSTALLING PACKAGE
sudo pacman -Syu bspwm sxhkd \
	mopidy ncmpcpp \
	dunst \
	ranger tmux \
	rxvt-unicode \
	pulseaudio docker \
	docker-compose git \
	python-pip \
	xorg xorg-xinit xorg-xrdb \
	pamixer arandr \
	ttf-fira-code rofi hsetroot mpc \
	xdo xdotool \
	xorg xorg-xinit xorg-xrdb

echo * turning on pulseaudio, docker and mopidy
systemctl enable pulseaudio --user
sudo systemctl enable docker
sudo usermod -aG docker edoardo

# installing yay
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si && cd .. && rm -rf yay

# yay packages
yay -S polybar
yay -S mopidy-spotify
yay -S mopidy-mpd
yay -S xtitle
yay -S visual-studio-code-bin
yay -S ttf-font-awesome-4

[[ -z $(ls ~/.config) ]] && mkdir ~/.config
[[ -z $(ls ~/.local) ]] && mkdir ~/.local/bin
[[ -z $(ls ~/.local/bin) ]] && mkdir ~/.local/bin
[[ -z $(ls ~/.fonts) ]] && mkdir ~/.fonts
cp -R .config/* ~/.config
cp -R .local/bin/* ~/.local/bin
cp .bashrc ~/
cp -R .Xresources* ~/
cp .wall.jpg ~/
cp .root ~/
cp .xinitrc ~/
