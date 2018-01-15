# My Vim Config

This is the vim plugins and .vimrc for reference and backup. This .vim is compatible with Vim 7.3 and probably with newer versions. 

#### [Documents](/document/welcome.md)

## Requirement

1. Unix system with [Vim](http://www.vim.org/) editor installed.
2. [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) installed.

#### Installation TL;DR

Run every command and make sure they work well. You can copy and paste them in the command line.

```
rm -rf ~/.vim
rm ~/.vimrc
git clone https://github.com/adlerhsieh/.vim.git ~/.vim
cd ~/.vim ; git submodule init
cd ~/.vim ; git submodule update --recursive
cp ~/.vim/misc/.vimrc ~/.vimrc
cp ~/.vim/misc/onedark.vim ~/.vim/bundle/vim-colorschemes/colors/onedark.vim

cd ~/.vim/bundle
git clone https://github.com/burke/matcher.git
cd matcher && make && make install
```

And install the following according to your os.

```
brew install the_silver_searcher
apt-get install silversearcher-ag
```

## Step by Step Installation

#### 1. Remove existing files

Remove your `.vim` and `.vimrc` first. Backup them up if you want to keep a copy.

```
rm -rf ~/.vim
rm ~/.vimrc
```

#### 2. Clone the repo

```
git clone https://github.com/adlerhsieh/.vim.git ~/.vim
```

#### 3. Clone plugins

Init submodules and clone.

```
cd ~/.vim
git submodule init
git submodule update --recursive
```

#### 4. Copy .vimrc 

```
cp ~/.vim/misc/.vimrc ~/.vimrc
```

#### 5. Theme

The theme is set to `onedark` as default. Copy the theme file before you enter vim, or you'll find an error message that the theme cannot be found.

```
cp ~/.vim/misc/onedark.vim ~/.vim/bundle/vim-colorschemes/colors/onedark.vim
```

And you should see something like this:

![](http://i.imgur.com/6KeggVu.png)

On the other hand, if you want to change it to another theme, go to [this part in .vimrc](https://github.com/adlerhsieh/.vim/blob/master/misc/.vimrc#L168) and change `onedark` to popular `monokai` or other themes. Source the file and it's done.

## Others

Other Vim, Ruby, Rails, Go, and other learning materials on [Motion Express](http://motion-express.com)
