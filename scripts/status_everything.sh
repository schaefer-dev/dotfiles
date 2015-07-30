#!/bin/zsh
REDlight='\033[1;31m'
GREENlight='\033[1;32m'
CYANlight='\033[1;36m'
NC='\033[0m' # No Color


printf "${REDlight}----------------------------------------------------------------------------------------------${NC}\n"
cd scripts
printf "${GREENlight}requesting status scripts now...${NC}\n"
git status
printf "${REDlight}----------------------------------------------------------------------------------------------${NC}\n"
cd ~

cd dotfiles
printf "${GREENlight}requesting status dotfiles now...${NC}\n"
git status
printf "${REDlight}----------------------------------------------------------------------------------------------${NC}\n"
cd ~

cd infosysrepo/
printf "${GREENlight}requesting status infosysrepo now...${NC}\n"
git status
printf "${REDlight}----------------------------------------------------------------------------------------------${NC}\n"
cd ~

cd hackingrepo/
printf "${GREENlight}requesting status hackingrepo now...${NC}\n"
git status
printf "${REDlight}-----------------------------------------------------------------------------------------------${NC}\n"
cd ~

cd ailink
printf "${GREENlight}requesting status ailink now...${NC}\n"
git status
printf "${REDlight}----------------------------------------------------------------------------------------------${NC}\n"
cd ~

printf "${REDlight}every repo status is checked now${NC}\n"
