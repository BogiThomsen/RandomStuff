echo "------------------------------------"
echo "------ Updating AUR packages -------"
echo "------------------------------------"
yaourt -Syu --noconfirm
## Adding discord gpg key
gpg --recv-keys 0FC3042E345AD05D

echo "------------------------------------"
echo "----- Installing AUR packages ------"
echo "------------------------------------"
yaourt -S --noconfirm --needed \
  spotify pencil sublime-text-dev slack-desktop discord
  
if [ $? != 0 ]; then
  echo ""
  echo "ERROR running yaourt -- must check if all packages are available"
  exit 1
fi

echo "------------------------------------"
echo "-------- Install finished ----------"
echo "------------------------------------"
