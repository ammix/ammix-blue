#!/usr/bin/env sh

echo "Setting repository configurations..."

dnf5 -y config-manager setopt "*terra*".priority=1
dnf5 -y config-manager setopt "terra-mesa".enabled=true
dnf5 -y config-manager setopt "terra-nvidia".enabled=false
dnf5 -y config-manager setopt "*terra*".exclude="gstreamer* *firmware* ffmpeg*"
dnf5 -y config-manager setopt "*rpmfusion*".priority=1 "*rpmfusion*".exclude="mesa-*"
dnf5 -y config-manager setopt "*fedora*".exclude="mesa-*"

dnf5 makecache
echo "Successfully configured repositories."
