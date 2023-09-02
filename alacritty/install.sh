if [ -d ~/.config/alacritty/ ]; then
    echo "Directorio ~/.config/alacritty/ ya existe"
else
    mkdir ~/.config/alacritty
fi
cp alacritty.yml ~/.config/alacritty/alacritty.yml
