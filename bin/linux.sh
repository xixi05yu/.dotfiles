#!/bin/bash
# Check if the OS is Linux
if [[ $(uname) != "Linux" ]]; then
    echo "Error: Not running on Linux." >> linuxsetup.log
    exit 1
fi

# Create the .TRASH directory
mkdir -p ~/.TRASH

# Backup existing .nanorc if it exists
if [[ -f ~/.nanorc ]]; then
    mv ~/.nanorc ~/.bup_nanorc
    echo "Existing .nanorc renamed to .bup_nanorc" >> linuxsetup.log
fi

# Overwrite .nanorc with etc/nanorc
cp etc/nanorc ~/.nanorc

# Add source command to .bashrc
if ! grep -q "source ~/.dotfiles/etc/bashrc_custom" ~/.bashrc; then
    echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
fi
