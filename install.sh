
cur_dir=$(pwd)
echo $cur_dir
cd $HOME

ln -sf ${cur_dir}/vim ${HOME}/.vim

# install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


ln -sf ${cur_dir}/.bash_aliases $HOME/
ln -sf ${cur_dir}/.pythonrc $HOME/
ln -sf ${cur_dir}/.bashrc $HOME/
ln -sf ${cur_dir}/.vimrc $HOME/

