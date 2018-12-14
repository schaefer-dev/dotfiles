#!/usr/local/bin/zsh

# Update dotfile repo
cd ~/dotfiles
echo '\nUpdating dotfiles repo...'
git pull

# Update uni Repos
cd ~/uni_repos/repo_formalVerification
echo '\nUpdating formalVerification repo...'
git checkout master
git pull

cd ~/uni_repos/repo_trex
echo '\nUpdating trex repo...'
git checkout master
git pull


# Move Stuff from updates repos into Dropbox
echo '\ncopying formalVerification presentation into Dropbox...'
cp -f ~/uni_repos/repo_formalVerification/proverif_presentation/presentation_*.key /Volumes/SSD_01/daniel/Dropbox/UNI/formalSecurity/automatic_server_moves/
