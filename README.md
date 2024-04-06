# My Vim Config

This is the vim plugins and .vimrc for reference and backup. This .vim is compatible with Vim 7.3 and probably with newer versions. 

## [Documents](/document/welcome.md)

## Requirement

1. Unix system with [Vim](http://www.vim.org/) editor installed.
2. [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) installed.

## General Installation

Run every command and make sure they work well. You can copy and paste them in the command line.

```bash
rm -rf ~/.vim
rm ~/.vimrc
git clone https://github.com/adlerhsieh/.vim.git ~/.vim
cd ~/.vim ; git submodule init
cd ~/.vim ; git submodule update --recursive
cp ~/.vim/misc/.vimrc ~/.vimrc
cp ~/.vim/misc/onedark.vim ~/.vim/bundle/vim-colorschemes/colors/onedark.vim
```

The Onedark theme should look like the following:

![](http://i.imgur.com/6KeggVu.png)

On the other hand, if you want to change it to another theme, go to [this part in .vimrc](https://github.com/adlerhsieh/.vim/blob/master/misc/.vimrc#L168) and change `onedark` to popular `monokai` or other themes. Source the file and it's done.

## Other Configurations

### Silver Searcher

And install the following according to your os.

```bash
brew install the_silver_searcher
# or
apt-get install silversearcher-ag
```

### MatchTagAlways requires Python

Install Python first, and then:

```
pip3 install neovim
```

Referenced from [this disucssion](https://gist.github.com/sadovnik/b0c4e48057ec0952bf7d08440d1cdfa7).

### NeoVim

The following allows NeoVim to use the same config as Vim.

```bash
brew install nvim
# then

vim ~/.config/nvim/init.vim
```

After opening the file, paste the following:

```bash
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
```

save and it's done.

### Resolving tlib_vim

Error message when starting vim regarding tlib_vim.

Solution:

```bash
cd ~/.vim/bundle/tlib_vim
git pull origin master --rebase
```

Referenced [from this issue](https://github.com/amix/vimrc/issues/645).
