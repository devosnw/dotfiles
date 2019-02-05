# dotfiles

Important profile dotfiles.

## Installation

Best if done in your home directory. Also make sure to add the symlinks so they files are sourced correctly when the shell is reloaded.

```sh
cd
git clone --recursive git@github.com:devosnw/dotfiles.git .dotfiles
ln -s .dotfiles/bash/bashrc .bash_profile
ln -s .dotfiles/bash/bashrc .bashrc
ln -s .dotfiles/readline/inputrc .inputrc
ln -s .dotfiles/vim .vim
ln -s .dotfiles/vim/vimrc .vimrc
```
