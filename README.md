#Homework1
# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .nanorc
This is my custom .nanorc configuration for Nano.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash.
# Dotfiles Configuration

#Homework2
## Files
- `.gitignore`: Excludes unnecessary files like `.DS_Store` and `linuxsetup.log` from Git tracking.
- `etc/bashrc_custom`: Defines custom environment variables, aliases, and functions for the shell.
- `bin/linux.sh`: Sets up the environment by configuring `.nanorc`, `.bashrc`, and the `.TRASH` directory.
- `bin/cleanup.sh`: Reverses the setup by removing `.nanorc`, `.TRASH`, and `.bashrc` modifications.
- `Makefile`: Automates the execution of `linux.sh` and `cleanup.sh` scripts.

## Usage
1. Run `make linux` to set up the environment.
2. Run `make clean` to clean up the environment.
