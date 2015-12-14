#!/bin/zsh
REDlight='\033[1;31m'
GREENlight='\033[1;32m'
CYANlight='\033[1;36m'
NC='\033[0m' # No Color

printf "${CYANlight}"
echo "pushing to my server ..."
printf "${GREENlight}"
git push -u server master;
printf "${NC}"
echo "--------------------------------------------------------------"
printf "${CYANlight}"
echo "pushing to origin ..."
printf "${GREENlight}"
git push -u origin master;

printf "${NC}"
