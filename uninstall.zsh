#
# Remove configuration files.
#

home_dir="${ZDOTDIR:-$HOME}"

# Simple files
rm "$home_dir/.gitconfig"
rm "$home_dir/.i3status.conf"
rm "$home_dir/.xinitrc"
#rm "$home_dir/.Xmodmap"
rm "$home_dir/.Xresources"
#rm "/usr/local/share/keys/keymap.kmap"

# Full directories
rm -rf "$home_dir/.i3"

# Partial directories
rm "$home_dir/.config/Terminal/terminalrc"
rmdir --ignore-fail-on-non-empty "$home_dir/.config/Terminal"
rm "$home_dir/.config/zathura/zathurarc"
rmdir --ignore-fail-on-non-empty "$home_dir/.config/zathura"

exit 0
