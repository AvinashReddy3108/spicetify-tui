#!/bin/sh

#                  _              __   _  ____               __          _
#    _____ ____   (_)_____ ___   / /_ (_)/ __/__  __        / /_ __  __ (_)
#   / ___// __ \ / // ___// _ \ / __// // /_ / / / /______ / __// / / // /
#  (__  )/ /_/ // // /__ /  __// /_ / // __// /_/ //_____// /_ / /_/ // /
# /____// .___//_/ \___/ \___/ \__//_//_/   \__, /        \__/ \__,_//_/
#      /_/                                 /____/
#
#            https://github.com/AvinashReddy3108/spicetify-tui

set -e

if [ ! -x "$(command -v spicetify)" ]; then
    echo "Spicetify is not installed!"
    curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
fi

# Download URL
theme_url="https://raw.githubusercontent.com/AvinashReddy3108/spicetify-tui/master/tui"

# Setup directories to download to
spice_dir="$(dirname "$(spicetify -c)")"
theme_dir="${spice_dir}/Themes"

# Make directories if needed
mkdir -p "${theme_dir}/tui"

# Download latest tagged files into correct director
echo "Downloading spicetify-tui theme..."
curl --silent --output "${theme_dir}/tui/color.ini" "${theme_url}/color.ini"
curl --silent --output "${theme_dir}/tui/user.css" "${theme_url}/user.css"
echo "Done"

# Apply theme
echo "Applying theme..."
spicetify config inject_css 1 replace_colors 1
spicetify config current_theme tui color_scheme Spotify
spicetify apply

echo "All done!"
