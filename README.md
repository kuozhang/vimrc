```sh
git clone --recursive https://github.com/kuozhang/vimrc.git

cd vimrc

mv ~/.vim ~/.vim.bak
mv ~/.vimrc ~/.vimrc.bak

ln -s `pwd`/vim ~/.vim
ln -s `pwd`/vimrc ~/.vimrc
```
