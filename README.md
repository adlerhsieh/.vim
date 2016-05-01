# My .vim Backup 我的Vim設定檔

This is the vim plugins and .vimrc for reference and backup.

#### [Documents 說明](/document/welcome.md)

## Requirement 需求

1. Unix system with [Vim](http://www.vim.org/) editor installed.
2. This .vim is compatible with Vim 7.3 and probably with newer versions. 

## Installation 安裝

#### 1. Remove existing files 移除既有檔案

Remove your `.vim` and `.vimrc` first. Backup them up if you want to keep a copy.

```
rm -rf ~/.vim
rm ~/.vimrc
```

#### 2. Clone the repo 複製專案

```
git clone https://github.com/adlerhsieh/.vim.git ~/.vim
```

#### 3. Clone plugins 安裝外掛

Init submodules and clone.

```
cd ~/.vim
git submodule init
git submodule update --recursive
```

#### 4. Copy .vimrc 複製設定檔

```
cp ~/.vim/misc/.vimrc ~/.vimrc
```

#### 5. Theme 佈景主題

The theme is set to `onedark` as default. Copy the theme file before you enter vim, or you'll find an error message that the theme cannot be found.

```
cp ~/.vim/misc/onedark.vim ~/.vim/bundle/vim-colorschemes/colors/onedark.vim
```

And you should see something like this:

![](http://i.imgur.com/6KeggVu.png)

On the other hand, if you want to change it to another theme, go to [this part in .vimrc](https://github.com/adlerhsieh/.vim/blob/master/misc/.vimrc#L168) and change `onedark` to popular `monokai` or other themes. Source the file and it's done.

## 其他

Vim、Ruby、Rails及其他學習資源，歡迎至我的網站[特快車](http://motion-express.com)
