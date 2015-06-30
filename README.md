# My .vim Backup 我的Vim設定檔

This is the vim plugins and .vimrc for reference and backup.

## [Documents 設定檔內容說明](https://github.com/nkj20932/.vim/blob/master/document/welcome.md)

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
git clone git@github.com:nkj20932/.vim.git ~/.vim
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

#### 5. Copy custom theme (Optional) 使用我的佈景主題

Try my custom Monokai theme if you like by copying and overwriting existing theme file.

```
cp ~/.vim/misc/Monokai.vim ~/.vim/bundle/vim-colorschemes/colors/Monokai.vim
```

## 其他

Vim、Ruby、Rails及其他學習資源，歡迎至我的網站[特快車](http://motion-express.com)
