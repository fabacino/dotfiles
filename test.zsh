#
# Test configuration files.
#

home_dir="${ZDOTDIR:-$HOME}"
data_dir="$(cd "$(dirname "$0")" && pwd -P)/runcoms"

# Simple files
echo "$data_dir/gitconfig => $home_dir/.gitconfig"
echo "$data_dir/i3status.conf => $home_dir/.i3status.conf"
echo "$data_dir/xinitrc => $home_dir/.xinitrc"
#echo "$data_dir/Xmodmap => $home_dir/.Xmodmap"
echo "$data_dir/Xresources => $home_dir/.Xresources"
#echo "$data_dir/keymap.kmap => /usr/local/share/keys/keymap.kmap"

# Full directories
echo "$data_dir/i3 => $home_dir/.i3"

# Partial directories
echo "$data_dir/config/terminalrc => $home_dir/.config/Terminal/terminalrc"
echo "$data_dir/config/zathurarc => $home_dir/.config/zathura/zathurarc"

exit 0
