#!/bin/zsh

git clone --recursive https://github.com/JosephBuchma/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB

cd $HOME
rm -f .zlogin .zlogout .zpreztorc .zprofile .zshenv .zshrc > /dev/null 2>&1

echo 'Linking config files from zpresto'
echo '================================='
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  echo "$rcfile was linked to ${ZDOTDIR:-$HOME}/.${rcfile:t}"
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

echo 'Setting /bin/zsh as default shell'
echo '================================='
chsh -s /bin/zsh


############### apps
zsh
i3
direnv
vim
xclip
