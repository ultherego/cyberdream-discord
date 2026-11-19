#!/bin/sh
# Install the working copy as a local "Cyberdream (dev)" theme, so changes
# show up in Discord on save instead of waiting for GitHub Pages.
set -eu
src="$(dirname "$0")/cyberdream.css"
dest="${BD_THEMES:-$HOME/.config/BetterDiscord/themes}/cyberdream-dev.theme.css"
{
    printf '/**\n * @name Cyberdream (dev)\n * @author ultherego\n * @description Local working copy of Cyberdream.\n * @version dev\n */\n\n'
    cat "$src"
} > "$dest"
echo "installed $dest"
