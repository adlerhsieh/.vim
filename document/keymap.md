# 3. 熱鍵(keymap)

## 基本

1. 方向鍵無法使用
2. 

## `Esc`鍵

`Esc`鍵仍可使用，但在Insert Mode中增加了`;`鍵也可以使用。

1. 單次按下`;`進入Normal Mode
2. 按下`;;`等於先輸入`;`再進入Normal Mode
3. 按下`;`及空白鍵，等於輸入`;`及空白鍵，並留在Insert Mode
4. 按下`;`及`Enter`，等於輸入`;`並換行，留在Insert Mode

## `<Leader>`鍵

原本的`<Leader>`鍵改為`,`

## 檔案儲存 & 離開

Normal Mode按下`S`儲存檔案
Normal Mode按下`WQ`儲存檔案並離開
Normal Mode按下`Q`離開

## `-`、`=`鍵

鍵盤右上方的`-`及`=`鍵，已重新規劃成往下捲動半頁及往上捲動半頁。

```viml
noremap = <c-u>
noremap - <c-d>
```

## 切換視窗 & 調整大小

預設的`ctrl` + `w`仍可使用，但增加以下設定：

```viml
" 輸入gn可直接切換視窗
nnoremap gn <c-w><c-w>
" 在Normal Mode中按ctrl + hjkl鍵，就可以調整window大小
nnoremap <c-l> <c-w>5<
nnoremap <c-h> <c-w>5>
nnoremap <c-j> <c-w>5-
nnoremap <c-k> <c-w>5+
```

## 其他

Normal Mode底下在行尾快速增加逗點(`<Leader>/`)或分號(`<Leader>;`)。

```viml
nnoremap <Leader>/ A,<Esc>
nnoremap <Leader>; A;<Esc>
```

整個檔案重新進行縮排(indentaion)：`<Leader>i`

Redo：`rr`

在Insert Mode當中往右移動一格：`<Leader>l`

=====

其他設定比較屬於個人使用的熱鍵，並不一定符合你的使用習慣，這邊就不列舉，可以參照[.vimrc](https://github.com/nkj20932/.vim/blob/master/misc/.vimrc)的設定。

=====

[回到首頁](https://github.com/nkj20932/.vim/blob/master/document/welcome.md)
