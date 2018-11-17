#!/bin/bash
echo "------------------------------------"
echo "-------- Creating folders ----------"
echo "------------------------------------"
## Create folders
mkdir Personal
mkdir Work
mkdir Uni


echo "------------------------------------"
echo "--------- Cloning repos ------------"
echo "------------------------------------"
## Clone personal repos
cd Personal
mkdir Repos
cd Repos
git clone git@github.com:BogiThomsen/RandomStuff.git
cd ../..

## Clone uni repos
cd Uni
mkdir Repos
cd Repos
git clone git@github.com:BogiThomsen/NEMT.git
cd ..
mkdir aau-datsw
cd aau-datsw
for i in $(curl "https://api.github.com/orgs/aau-datsw/repos" | sed '/[ ]*"clone_url":/!d;s/[^:]*: "//;s/",$//'); do
  echo git clone $i
done
