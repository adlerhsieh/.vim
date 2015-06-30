# 1. 外掛 (綜合)

我的外掛管理套件是使用[Pathogen](https://github.com/tpope/vim-pathogen)，在`.vimrc`的第一行就可以看到。以下只要有提到`<Leader>`的地方，都是我的`,`鍵。

以下針對各個功能我所安裝的外掛進行說明：

## 檔案瀏覽 Explorer

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

## 顯示HTML Tag [MatchTagAlways](https://github.com/Valloric/MatchTagAlways)

可以在撰寫HTML時讓游標自動highlight兩邊的tag，官方的repo當中有非常漂亮的展示畫面。

![](https://camo.githubusercontent.com/8caa688402b3f92c3646a3393bfe14bda44f7aaf/687474703a2f2f692e696d6775722e636f6d2f714166304e2e676966)

##### 相關設定

```viml
let g:mta_use_matchparen_group = 1
" 以下是設定需要啟動此外掛的檔案類型，基本上就是所有需要使用到html tag的檔案類型
" 如果你有其他檔案類型也可以加上，例如node.js的.ejs檔案
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'php': 1,
    \ 'erb': 1,
    \}
```

## 跨檔案內文搜尋 [Ag.vim](https://github.com/rking/ag.vim)

檔案搜尋利器。要先安裝The Silver Searcher才可使用。安裝方式：

```bash
git clone https://github.com/ggreer/the_silver_searcher ag && cd ag && ./build.sh && sudo make install
```

##### 熱鍵

進入Command模式下即可使用，記得開頭大寫。

```viml
:Ag <你要搜尋的字詞> 
```

## 自動補標點符號 [auto-pairs](https://github.com/jiangmiao/auto-pairs)

在輸入標點符號例如`[`或`(`時，會自動補上`]`或`)`，Sublime Text已內建的功能。

## 檔案搜尋 [ctrlp](https://github.com/kien/ctrlp.vim)

針對整個專案進行搜尋，搜尋是模糊搜尋，所以不用打上完整的字詞，也可以搜尋到檔案。

##### 熱鍵 & 設定

預設熱鍵是`ctrl + p`開始搜尋，我在`.vimrc`當中已改成`<Leader>.`，兩顆鍵在旁邊比較方便按。

```viml
let g:ctrlp_map = '<Leader>.'
" 以下是忽略掉的檔案類型，包括.git和Mac預設的.DS_Store檔案都忽略掉
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
```

## 加速檔案搜尋 [ctrlp-py-matcher](https://github.com/FelikZ/ctrlp-py-matcher)

預設[ctrlp](https://github.com/kien/ctrlp.vim)的搜尋速度都非常慢，用另外的python外掛可以確保加快搜尋速度，至少可以到現代編輯器的水準。(原本的速度讓人想死，尤其用過Sublime Text的搜尋以後根本回不來。)

* 使用前確認系統有安裝Python

## HTML snippts 套件 [emmet-vim](https://github.com/mattn/emmet-vim)

用過Emmet的人應該都知道這是幹嘛的，由於本人並不是那麼常寫html code，所以這個外掛裝了卻不常用到，詳細使用方式可以參照官方repo的說明，這部份我並沒有修改任何設定。

## 佈景主題 [lightline.vim](https://github.com/itchyny/lightline.vim)

打開Vim以後的佈景主題，基本上已經設定完成。可參照官方repo自行修改喜歡的樣式。

##### 設定

```viml
let g:lightline = {
                  \ 'colorscheme': 'wombat',
                  \ }
set laststatus=2
```

我選的主題是`wombat`，其他幾乎都使用預設。

## 尋找block開頭/結尾 [ruby-matchit](https://github.com/vim-scripts/ruby-matchit)

主要用於在一個block或method當中的開頭和結尾切換位置。

##### 熱鍵

按下`%`即會尋找該段的結尾。例如：

```ruby
def hello
  "world"
end
```

假設我的游標在`def`的前面，則按下`%`，會自動跳到`end`上。如果在`world`當中，也會自動跳到`end`。反之，如果游標在`end`，則會跳到`def`上。

同樣的道理也可以運用在任何有開/關的標點符號上，例如：

```ruby
{:foo => "bar", :hello => "world"}
```

如果我的游標在開頭`{`上，則按下`%`就會自動跳到整個hash的結尾處`}`。

## 自動補字 [subertab](https://github.com/ervandew/supertab)

Vim的預設自動補字是`ctrl` + `n`，但大多數人的習慣都是使用`tab`鍵，這個外掛將自動補字改到`tab`鍵上。當然他有其他更深入的設定，歡迎自行調整。

## 分行對齊 [tabular](https://github.com/godlygeek/tabular)

如果有多行code需要對齊，在打完code之後可以直接用此外掛的功能對齊。

##### 熱鍵 & 使用

預設是要用`:Tabularize /`才可使用，但名稱很長，已改為`<Leader>t`就可以輸入要對齊的符號。`.vimrc`內的設定如下：

```viml
nnoremap <Leader>t :Tabularize /
vnoremap <Leader>t :Tabularize /
```

假如有一個ruby的hash如下：

```ruby
{
:foo => "bar", 
:hello => "world",
:tennis => "player"
}
```

按下`<Leader>t`並輸入要對齊的符號`=>`，按下`Enter`就會變成：

```ruby
{
:foo    => "bar", 
:hello  => "world",
:tennis => "player"
}
```

算是自動對齊的好幫手！

## 自動註解 [tcomment](https://github.com/tomtom/tcomment_vim)

在Sublime Text中可以使用`ctrl` + `/`進行註解，在Vim內並沒有內建此功能，因此使用此外掛補強。

##### 熱鍵

有非常多用法，以下三種是我最常用的：

1. 單行註解：`gcc`
2. Visual Mode 多行註解：利用Visual mode選取多行以後，按`gc`即可多行註解
3. Normal Mode 多行註解：`gc <count> <motion>`即可多行註解，例如`gc10j`就是向下註解10行。

其他用法可以參照官方repo。

## 佈景主題 [colorschemes](https://github.com/flazz/vim-colorschemes)

Vim內建只有一個佈景主題，如果要改就是要手動改，這個外掛提供非常多的佈景主題，包括很多經典的。

##### 設定

```viml
colorscheme monokai
```

可以將`monokai`換成其他的佈景主題，在repo當中[有非常多選擇](https://github.com/flazz/vim-colorschemes/tree/master/colors)。

## 快速內文搜尋 [Easy Motion](https://github.com/easymotion/vim-easymotion)

強大的外掛，官方repo就已經用了非常精簡扼要的使用流程圖：

![](https://camo.githubusercontent.com/d5f800b9602faaeccc2738c302776a8a11797a0e/68747470733a2f2f662e636c6f75642e6769746875622e636f6d2f6173736574732f333739373036322f323033393335392f61386539333864362d383939662d313165332d383738392d3630303235656138333635362e676966)

基本上就是比較漂亮的搜尋介面，並且利用1或2個字母搜尋，直接跳過去。

##### 熱鍵 & 設定

```viml
" 取代預設的搜尋介面
map  / <Plug>(easymotion-sn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
" 使用兩個字母搜尋， 如果你喜歡用一個字母搜尋，可將本行結尾改成(easymotion-s)
nmap s <Plug>(easymotion-s2)
let g:EasyMotion_startofline = 0
let g:EasyMotion_smartcase = 1
```

使用的話，先按`s`，再按下你要搜尋的兩個字母，接著會有搜尋結果跳出，再按下相對應的字母，就會將游標移動過去。

## Git整合 [Vim Fugitive](https://github.com/tpope/vim-fugitive)

雖然裝了，但我本人都是用[Source Tree](https://www.sourcetreeapp.com/)或[Tig](https://github.com/jonas/tig)，因此這個外掛並沒有直接使用到，有興趣的朋友可以研究一下，這是非常受歡迎的外掛，有非常多相關資料。

## 搜尋後快速移動 [Sneak](https://github.com/justinmk/vim-sneak)

在搜尋第一次後，可直接按下`;`跳到下一個相同的字母或字詞。例如：

```ruby
|post = Post.where(:user_id => 10)
```

例如我的游標在整行的開頭，這時在normal mode按下`fe`進行搜尋，會將游標跳至`where`的位置如下：

```ruby
post = Post.wh|ere(:user_id => 10)
```

這時按`;`，就會跳至下一個`e`的位置如下：

```ruby
post = Post.wher|e(:user_id => 10)
```

##### 熱鍵 & 設定

```viml
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
```

這份設定檔算是在原本的`f`搜尋再加上sneak的功能。並沒有加到另一個搜尋`t`上。

## Snippets [snipmate](https://github.com/garbas/vim-snipmate) & [snippets](https://github.com/honza/vim-snippets)

大家對snippets的應用應該都很熟悉，假如你還不太熟，簡單來說就是你在Ruby檔案中輸入`def`再按`Enter`，就會自動補上method的內容，變成：

```ruby
def method

end
```

基本上snipmate是外掛的功能，但並沒有任何snippet，需要安裝snippets才會有許多內建的snippets。

如果需要自訂snippets，可以到[snippets](https://github.com/honza/vim-snippets/tree/master/snippets)資料夾中修改檔案，詳細的用法可以參考[YouTube上的介紹影片](https://www.youtube.com/watch?v=xV2IsE5OHd4)。

## 自動修改外圍標點符號 [Surround](https://github.com/tpope/vim-surround)

只要我們有一個字或一個句子，這個外掛可以幫忙直接在不移動游標的情況下，在旁邊加上標點符號，例如：

```ruby
johnny_walker
```

假如我們的游標在這個字上，只要按下`ysiw"`，就會變成：

```ruby
"johnny_walker"
```

基本上`y`是增加、`s`代表surround外掛，`i`是Vim內建的inner，`w`是word，照這個邏輯就可以增加旁邊的符號。

另外3個我很常用的：

1. `cs"'`將兩旁的`"`符號改為`'`符號
2. 在HTML tag當中例如：`<p>hello</p>`按下`cst<span>`就會將這個tag變成`<span>hello</span>`
3. `ds"`將兩旁的`"`刪除

這邊不將公式列出來，大家應該可以舉一反三，至於更深入的用法和設定，可以[參考官方repo](https://github.com/tpope/vim-surround)。

## 自定block類型 [Text Object User](https://github.com/kana/vim-textobj-user)

可以自訂block的類型，這樣我們就可以利用`d`或`c`來直接刪除或修改整個block。

例如我們可以自訂date的格式：

```viml
call textobj#user#plugin('datetime', {
\   'date': {
\     'pattern': '\<\d\d\d\d-\d\d-\d\d\>',
\     'select': ['ad', 'id'],
\   },
\ })
```

這樣一來，假如我們在編輯時有一個date格式：

```html
<p>Today is 2015-10-20</p>
```

假如我們游標在`20`處，按下`did`，就會將日期整個刪除掉變成：

```html
<p>Today is </p>
```

其他類型也可以自己定義，在[官方repo](https://github.com/kana/vim-textobj-user)中有許多範例可以參考。

