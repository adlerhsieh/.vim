" remap switch mode
inoremap ;; <Esc>

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
map = <c-u>
map - <c-d>

" switch window
nmap gn <c-w><c-w>
nmap <c-l> <c-w>5<
nmap <c-h> <c-w>5>
nmap <c-j> <c-w>5-
nmap <c-k> <c-w>5+

" save & quit
noremap ss <esc>:w<CR>
nmap WQ :wq<CR>
nmap QQ :q<CR>

