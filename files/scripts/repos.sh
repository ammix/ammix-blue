#!/usr/bin/env sh

echo "Setting repository configurations..."

dnf5 config-manager setopt rpmfusion-free.priority=90
dnf5 config-manager setopt rpmfusion-free-updates.priority=90
dnf5 config-manager setopt rpmfusion-nonfree.priority=90
dnf5 config-manager setopt rpmfusion-nonfree-updates.priority=90
dnf5 config-manager setopt rpmfusion-nonfree-tainted.priority=90

echo "Successfully configured repositories."
