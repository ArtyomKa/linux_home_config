
cur_dir=$(pwd)
now=$(date +"%m_%d_%Y")

echo $cur_dir
cd $HOME

ln -sf ${cur_dir}/vim ${HOME}/.vim

# install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


files=(.bash_aliases .pythonrc  .bashrc .vimrc)

#create symbolic links to the files:

for f in "${files[@]}"
do
    mv $HOME/${f} $HOME/${f}_backup_$now
    ln -sf ${cur_dir}/${f} $HOME/
done


#install poweline fonts for vim:
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts


