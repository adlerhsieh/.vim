" remap switch mode
inoremap ; <Esc>
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

nnoremap <CR> o<Esc>

" save & quit
nnoremap <S-S> <esc>:w<CR>
nnoremap WQ :wq<CR>
nnoremap QQ :q<CR>

" css syntax
autocmd Filetype css inoremap <buffer> {<CR> {<CR>}<Esc>O
