//
//  Author: Cory Breed
//  To install all dot files in the appropriate locations
//

// First make a backup of the existing dot files
mkdir ~/.backup_dotfiles

cp ~/.bash_prompt ~/.backup_dotfiles/.bash_prompt
cp ~/.bash_profile ~/.backup_dotfiles/.bash_profile
cp ~/.bashrc ~/.backup_dotfiles/.bashrc
cp ~/.prodile ~/.backup_dotfiles/.profile
cp ~/.vimrc  ~/.backup_dotfiles/.vimrc
cp ~/.tmux.conf ~/.backup_dotfiles/.tmux.conf

// Copy the new files into the final locations
cp ./.bash_profile ~/.bash_profile
cp ./.bash_prompt ~/.bash_prompt
cp ./.tmux.conf ~/.tmux.conf
cp ./.vimrc ~/.vimrc

// Install Vundle
VUNDLE_DIR=~/.vim/bundle/Vundle.vim
if [ ! -d "$VUNDLE_DIR" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_DIR
fi

