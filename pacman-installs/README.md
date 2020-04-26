# Get list of pacman packages

`pacman -Qqen`

# Get list of pacman AUR packages

`pacman -Qqem`

# Get list of flatpak packages

`flatpak list --columns=application`

Note: Some flatpak packages are dependencies of other packages and as such may be unnecessary to install.