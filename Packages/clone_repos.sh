echo "------------------------------------"
echo "--------- Configuring git ----------"
echo "------------------------------------"
## Set vars
echo "Enter email address:"
read EMAIL
echo "Enter Username:"
read USERNAME

## Set name and emails
git config --global user.name $USERNAME
git config --global user.email $EMAIL

ssh-keygen -t rsa -b 4096 -C "$EMAIL"

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

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
git clone git@github.com:BogiThomsen/RandomStuff.git
cd ..

## Clone uni repos
cd Uni
git clone git@github.com:BogiThomsen/NEMT.git
cd ..
