#!/usr/bin/env sh

echo "Setting repository configurations..."

dnf5 -y config-manager setopt "*terra*".priority=1
dnf5 -y config-manager setopt "terra-mesa".enabled=true
dnf5 -y config-manager setopt "terra-nvidia".enabled=false
dnf5 -y config-manager setopt "*rpmfusion*".priority=5 "*rpmfusion*".exclude="mesa-* ffmpeg* gstreamer*"
dnf5 -y config-manager setopt "*fedora*".exclude="mesa-*"

echo "Successfully configured repositories."
