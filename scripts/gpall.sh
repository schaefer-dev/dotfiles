#!/bin/zsh
REDlight='\033[1;31m'
GREENlight='\033[1;32m'
CYANlight='\033[1;36m'
NC='\033[0m' # No Color

printf "${GREENlight}"
echo "pushing to origin ..."
git push -u origin master;
printf "${CYANlight}"
echo "----------------------------"
echo "pushing to my server ..."
git push -u server master;

printf "${NC}"
