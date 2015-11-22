#!/bin/zsh
REDlight='\033[1;31m'
GREENlight='\033[1;32m'
CYANlight='\033[1;36m'
NC='\033[0m' # No Color

printf "${REDlight}"
echo "pushing to my server ..."
printf "${CYANlight}"
git push -u server master;
printf "${REDlight}"
echo "--------------------------------------------------------------"
echo "pushing to origin ..."
printf "${GREENlight}"
git push -u origin master;

printf "${NC}"
