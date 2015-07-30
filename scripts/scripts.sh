#!/bin/zsh
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/scripts                  # dotfiles directory
files="status_everything.sh speedtest.sh pull_everything.sh"    # list of files/folders to symlink in homedir


# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# create symlinks 
for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done