#!/bin/zsh
#
# Create symlinks to config files
#

home_dir="${ZDOTDIR:-$HOME}"
data_dir="$home_dir/.dotfiles/linux"

# Simple files
ln -s "$data_dir/gitconfig" "$home_dir/.gitconfig"
ln -s "$data_dir/i3status.conf" "$home_dir/.i3status.conf"
ln -s "$data_dir/xinitrc" "$home_dir/.xinitrc"
ln -s "$data_dir/Xmodmap" "$home_dir/.Xmodmap"
ln -s "$data_dir/Xresources" "$home_dir/.Xresources"
#ln -s "$data_dir/keymap.kmap" "/usr/local/share/keys/keymap.kmap"

# Full directories
ln -sT "$data_dir/i3" "$home_dir/.i3"

# Partial directories
mkdir -p "$home_dir/.config/Terminal"
ln -s "$data_dir/config/terminalrc" "$home_dir/.config/Terminal/terminalrc"

exit 0
