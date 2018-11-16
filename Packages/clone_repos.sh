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
cd ../..
