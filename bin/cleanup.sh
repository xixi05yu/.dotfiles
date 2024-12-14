#!/bin/bash
# Remove the .nanorc file
rm -f ~/.nanorc

# Remove the source command from .bashrc
sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc

# Remove the .TRASH directory
rm -rf ~/.TRASH
