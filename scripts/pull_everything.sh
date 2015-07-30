#!/bin/zsh
REDlight='\033[1;31m'
GREENlight='\033[1;32m'
CYANlight='\033[1;36m'
NC='\033[0m' # No Color

printf "${REDlight}----------------------------------------------------------------------------------------------${NC}\n"
cd infosysrepo/
printf "${GREENlight}pulling infosysrepo now...${NC}\n"
git pull
printf "${REDlight}----------------------------------------------------------------------------------------------${NC}\n"
cd ~
cd hackingrepo/
printf "${GREENlight}pulling hackingrepo now...${NC}\n"
git pull
printf "${REDlight}----------------------------------------------------------------------------------------------${NC}\n"
cd ~
cd ailink
printf "${GREENlight}pulling ailink now...${NC}\n"
git pull
printf "${REDlight}----------------------------------------------------------------------------------------------${NC}\n"
cd ~
printf "${REDlight}every repo was pulled${NC}\n"
