#!/bin/zsh
#===============================================================================
#
#             NOTES: For this to work you must have cloned the github
#                    repo to your home folder as ~/dotfiles/
#
#===============================================================================

#==============
# Variables
#==============
dotfiles_dir=~/dotfiles
log_file=~/install_progress_log.txt

#==============
# Delete existing dot files and folders
#==============
sudo rm -rf ~/.bashrc > /dev/null 2>&1
sudo rm -rf ~/.config > /dev/null 2>&1

#==============
# Create symlinks in the home folder
#==============

ln -sf $dotfiles_dir/bashrc ~/.bashrc

mkdir -p ~/.config/
ln -sf $dotfiles_dir/i3 ~/.config/i3

mkdir -p ~/.config/
ln -sf $dotfiles_dir/autorandr ~/.config/autorandr


