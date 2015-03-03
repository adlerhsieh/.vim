" remap switch mode
inoremap ; <Esc>
inoremap ;; ;<Esc> 
nnoremap ; i
" remap original switch key
inoremap ;<Space> ;<Space>
inoremap ;<CR> ;<CR>
" disable default movement
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
" remap basic & quick movement
noremap = <c-u>
noremap - <c-d>
" switch window
nnoremap gn <c-w><c-w>
nnoremap <c-l> <c-w>5<
nnoremap <c-h> <c-w>5>
nnoremap <c-j> <c-w>5-
nnoremap <c-k> <c-w>5+
" extra surround
inoremap "" ""<Left>
inoremap '' ''<Left>
inoremap (<Tab> ()<Left>
inoremap {<Tab> {}<Left>
inoremap [<Tab> []<Left>
inoremap <<Tab> <><Left>
" move right for escaping surround
inoremap <c-l> <Right>
" save & quit
nnoremap <s-s> <esc>:w<CR>
nnoremap WQ :wq<CR>
nnoremap QQ :q<CR>
" cancel search highlight
nnoremap <Leader><Space> :noh<CR>
" adjust file indentation
nnoremap <Leader>i gg=G
" add blank line
nnoremap <Enter> O<Esc>0D
" css syntax
autocmd Filetype css,scss inoremap <buffer> {<CR> {<CR>}<Esc>O
autocmd Filetype css,scss nnoremap <buffer> <Leader>c f;cT: 
" js syntax
autocmd Filetype javascript inoremap <buffer> {<CR> {<CR>};<Esc>O
