# 1. 外掛

我的外掛管理套件是使用[Pathogen](https://github.com/tpope/vim-pathogen)，在`.vimrc`的第一行就可以看到。

以下針對各個功能我所安裝的外掛進行說明：

## 檔案瀏覽

說到檔案瀏覽，Vim使用者大多第一個想到的都是`NERDTree`，但我並沒有使用`NERDTree`，因為怎麼用都不習慣，最主要有兩點：
1. 會自動在專案內產生config檔很煩
2. 儘管他想要弄成很像Text Mate或Sublime Text那樣側邊欄的效果，但說到底他還是個視窗。

基於以上兩點，我還是選擇使用Vim內建的檔案瀏覽系統`Explorer`，雖然他跟現代我們一般使用編輯器的檔案瀏覽習慣不相同，但他和Vim原始設計的觀念非常一致，每一個檔案瀏覽介面都是一個視窗，不會有腦袋需要切換的問題。

##### 相關熱鍵

```viml
nnoremap <Leader>nn :edit .<CR>              " 回到根目錄、原視窗呼叫Explorer
nnoremap <Leader>nN :Explore<CR>             " 在當前目錄、原視窗呼叫Explorer
nnoremap <Leader>nx :split .<CR>             " 回到根目錄、水平切割視窗呼叫Explorer    
nnoremap <Leader>nX :Sexplore<CR>            " 在當前目錄、水平切割視窗呼叫Explorer        
nnoremap <Leader>nv :vsplit .<CR>            " 回到根目錄、垂直切割視窗呼叫Explorer
nnoremap <Leader>nV :Vexplore<CR>            " 在當前目錄、垂直切割視窗呼叫Explorer
nnoremap <Leader>nt :tabnew<CR>:e.<CR>       " 回到根目錄、開新分頁呼叫Explorer
nnoremap <Leader>nT :tabnew<CR>:Explore<CR>  " 在當前目錄、開新分頁呼叫Explorer
```

可以看出基本上就是把所有指令濃縮成兩個部分：`<Leader>n`、`分割視窗鍵`，並且拆成從根目錄呼叫，或是從當前目錄呼叫。





