# My .vim Backup

This is the vim plugins and .vimrc by Adler Hsieh for reference and backup

## Requirement

1. Unix system with [Vim](http://www.vim.org/) editor installed.
2. This .vim is compatible with Vim 7.3 and probably with newer versions. 

## Auto Installation

Run the following command in your terminal. (IMPORTANT: This command will overwrite your current `.vim` and `.vimrc`. Back them up first if you don't want this happen.)

```
curl https://raw.githubusercontent.com/nkj20932/.vim/master/misc/installer | bash
```

And it's all done

## Manual Installation

#### 1. Remove existing files

Remove your `.vim` and `.vimrc` first. Backup them up if you want to keep a copy.

```
rm -rf ~/.vim
rm ~/.vimrc
```

#### 2. Clone the repo

```
git clone git@github.com:nkj20932/.vim.git ~/.vim
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

#### 5. Copy custom theme

Try my custom Monokai them if you like by copying and overwriting existing theme file.

```
cp ~/.vim/misc/Monokai.vim ~/.vim/bundle/vim-colorschemes/colors/Monokai.vim
```
