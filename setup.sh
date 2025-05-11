#!/bin/bash

# Patikrinti, ar egzistuoja .config/awesome katalogas
if [ ! -d "$HOME/.config/awesome" ]; then
    # Jeigu katalogas neegzistuoja, sukurti
    mkdir -p $HOME/.config/awesome
fi

# Pašalinti esamą rc.lua, jei jis egzistuoja
if [ -f "$HOME/.config/awesome/rc.lua" ]; then
    sudo rm $HOME/.config/awesome/rc.lua
fi

# Nukopijuoti rc.lua failą
sudo cp $HOME/awesome/rc.lua $HOME/.config/awesome/
