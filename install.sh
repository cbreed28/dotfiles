#
#  Author: Cory Breed
#  To install all dot files in the appropriate locations
#

# First make a backup of the existing dot files
mkdir ~/.backup_dotfiles

# Copy existing dotfiles to backup location
echo "Backing up existing dotfiles to ~/.backup_dotfiles"
cp ~/.bash_alias ~/.backup_dotfiles/.bash_alias 2>/dev/null || true
cp ~/.bash_prompt ~/.backup_dotfiles/.bash_prompt 2>/dev/null || true
cp ~/.bash_profile ~/.backup_dotfiles/.bash_profile 2>/dev/null || true  
cp ~/.bashrc ~/.backup_dotfiles/.bashrc 2>/dev/null || true
cp ~/.profile ~/.backup_dotfiles/.profile 2>/dev/null || true
cp ~/.vimrc  ~/.backup_dotfiles/.vimrc 2>/dev/null || true
cp ~/.tmux.conf ~/.backup_dotfiles/.tmux.conf 2>/dev/null || true

# Provision ~ Dir for new dotfiles
echo "Provisioning ~ Dir"
mkdir -p ~/.tmux
mkdir -p ~/.vim
mkdir -p ~/.vim/colors

# Copy the new files into the final locations
echo "Installing the new dotfiles"
cp .bash_alias ~/.bash_alias 
cp .bash_profile ~/.bash_profile
cp .bash_prompt ~/.bash_prompt
cp .tmux.conf ~/.tmux.conf
cp .vimrc ~/.vimrc
cp .vim/colors/Kafka.vim ~/.vim/colors/Kafka.vim
cp -r .tmux/ ~/.tmux/

# Copy wallpaper
cp .wallpapers/WWDC\ Wallpaper.png ~/Pictures/WWDC\ Wallpaper.png

# Install Dev Software
echo "Installing Dev env software"
cp .iterm2_profile_space_gray ~/Library/Application\ Support/iTerm2/DynamicProfiles/space_gray
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install tmux
brew install vim --with-openssl --with-lua --override-system-vim
brew install node

# configure git
git config --global credential.helper osxkeychain
git config --global user.name "Cory Breed"

# Source the new bash profile
source ~/.bash_profile

