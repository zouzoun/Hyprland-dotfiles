#!/usr/bin/env bash

clear

echo "Welcome to the install process of my dotfiles !"
echo "/!\ Disclamer ! This script works only for Arch Linux and its derivatives. If you want to install these dotfiles, please select option 2 and follow the instructions in the GitHub page ;)"

echo ":: Do you want to proceed ?"
select choice in "Yes" "No, exit"; do
    case $choice in
        "Yes") break ;;
        "No, exit") exit 0 ;;
        *) echo "Please select a valid option" ;;
    esac
done

sleep 1 && clear

echo ":: Installing necessary packages : paru"
    sudo pacman -S --needed base-devel git
    git clone https://aur.archlinux.org/paru.git /tmp/paru
    cd /tmp/paru && makepkg -si

echo ":: Paru has been installed successfully"

sleep 2 && clear

echo ":: Installing necessary packages"

    paru -S --needed hyprland kitty hyprlock hyprcursor hypridle hyprpicker hyprshot swww waypaper vicinae-bin arch-update fastfetch htop btop xed cbonsai unimatrix nerd-fonts gradia flatpak vim neovim ly pipes.sh cava spicetify-cli catppuccin-cursors-mocha catppuccin-gtk-theme-mochapapirus-icon-theme papirus-folders-catppuccin-git noto-fonts-emoji matugen kew wiremix waybar wlogout swaync swayosd

    git clone https://github.com/Mon4sm/Momoisay.git
    cd Momoisay
    sudo sh ./install/linux.sh
    cd ~
    rm -rf Momoisay

    sudo curl -L https://github.com/lemnos/tt/releases/download/v0.4.2/tt-linux -o /usr/local/bin/tt && sudo chmod +x /usr/local/bin/tt
sudo curl -o /usr/share/man/man1/tt.1.gz -L https://github.com/lemnos/tt/releases/download/v0.4.2/tt.1.gz

echo ":: Necessary packages have been installed successfully"

sleep 2 && clear

echo ":: Setting up ly"
    sudo systemctl disable gdm
    sudo systemctl disable sddm
    sudo systemctl disable lightdm
    sudo systemctl disable lightdm-gtk
    sudo systemctl disable greetd
    sudo systemctl systemctl ly@tty5.service
    sudo systemctl disable getty@tty5.service
    sudo cp -R ~/Hyprland-dotfiles/other-config-files/config.ini /etc/ly/

echo ":: Ly has been set up successfully"

sleep 2 && clear
 
echo ":: Settng up some services"
    systemctl --user enable hyprlock.service
    sudo cp -R ~/Hyprland-dotfiles/other-config-files/logind.conf /etc/systemd/logind.conf
    arch-update --tray --enable
    systemctl --user enable --now arch-update-tray.service
    systemctl --user enable --now arch-update.timer

echo ":: Services have set up successfully"

sleep 2 && clear

echo ":: Applying Catppuccin theme"
    sudo flatpak override --filesystem=$HOME/.local/share/themes
    export FLAVOR="mocha"
    export ACCENT="lavender"
    sudo flatpak override --env=GTK_THEME="catppuccin-mocha-lavender-standard+default"

echo ":: Catppuccin theme has been applied successfully"

sleep 2 && clear

echo ":: Applying up Papirus folders theme"
    papirus-folders -C cat-mocha-lavender --theme Papirus-Dark

echo ":: Papirus folders have been applied successfully"

sleep 2 && clear

echo ":: Applying Catppuccin dark cursor"
    hyprctl setcursor catppuccin-mocha-dark-cursors 24

echo ":: Catppuccin dark cursor applied successfully"

sleep 2 && clear

echo ":: Installation has been completed successfully :)"

echo "/!\ Your system needs to reboot, reboot now ?"
select choice in "Yes" "No"; do
    case $choice in
        "Yes")
            for i in 5 4 3 2 1; do echo "Rebooting in $i..."; sleep 1; done
            shutdown -r ;;
        "No") exit 0 ;;
        *) echo "Please select a valid option" ;;
    esac
done