# dotfiles

Various configuration files for (Arch) Linux

# Managing

The dotfiles are organized to work with GNU Stow. Make sure to install this for easy dotfile management.

`sudo pacman -S stow`

## Clone the repo

`cd`

`git clone git@github.com:yuri-moens/dotfiles.git`

`cd dotfiles`

## Installing user configuration files

`stow zsh`

This will symlink the .zshrc file to `~/.zshrc`.

## Installing root configuration files

`sudo stow -t / pacman`

This will symlink the pacman.conf file to `/etc/pacman.conf`.

Make sure the file doesn't already exist or a symlink cannot be made.

