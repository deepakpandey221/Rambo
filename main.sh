#!/usr/bin/env bash
tput setaf 5
echo "
         ____    __    __  __  ____  _____ 
        (  _ \  /__\  (  \/  )(  _ \(  _  )
         )   / /(__)\  )    (  ) _ < )(_)( 
        (_)\_)(__)(__)(_/\/\_)(____/(_____)                                             
"
tput setaf 5
echo " A application in development to Backup and Restore files"
echo ""
tput setaf 7

## Code to check recommended packages in system
echo "Checking for required packages..."
pack=("rsync" "ssh" "bnm")
for pkg in "${pack[@]}";
do
if [ "$(command -v "$pkg")" ]; 
then
    tput setaf 2
    echo "command ""$pkg"" exists on system"
    tput setaf 7
else
tput setaf 1
echo "$pkg"" Not exist"
tput setaf 7
fi
done
