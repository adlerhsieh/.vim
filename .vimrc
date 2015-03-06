" Load Pathogen
execute pathogen#infect()
" remap command mode & leader key
let mapleader = ","
" file setting
set nocompatible
set noswapfile
filetype on
filetype indent on
filetype plugin on
set encoding=utf-8
scriptencoding utf-8
" auto source .vimrc when save
autocmd! BufWritePost $MYVIMRC source $MYVIMRC
" auto backup .vimrc into git repo
autocmd! BufWrite $MYVIMRC :write! ~/.vim/.vimrc
function! Check()
  if getline(".")[col(".")-1] == "["
    :execute "normal! l" 
  endif
endfunction

" ========================
"         Plugins 
" ========================

" syncing NERDTree and Ctrl-P directory
let g:NERDTreeChDirMode = 2
let g:ctrlp_working_path_mode = 'rw'
" Lightline
let g:lightline = {
                  \ 'colorscheme': 'wombat',
                  \ }
set laststatus=2
" Easymotion
" remap default <Leader>
" map <Leader> <Plug>(easymotion-prefix)
" nmap s <Plug>(easymotion-s)
map  / <Plug>(easymotion-sn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
nmap s <Plug>(easymotion-s2)
let g:EasyMotion_startofline = 0
let g:EasyMotion_smartcase = 1
" vim-sneak
nmap f <Plug>Sneak_s
nmap F <Plug>Sneak_S
xmap f <Plug>Sneak_s
xmap F <Plug>Sneak_S
omap f <Plug>Sneak_s
omap F <Plug>Sneak_S
" NERDTree activation
nmap mn :NERDTreeFocusToggle<CR>
nmap <Leader>n :NERDTreeTabsToggle<CR>
" CtrlP activation
let g:ctrlp_map = '<Leader>.'
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
" multiple cursors
let g:multi_cursor_quit_key=';'

" ========================
"       Key Remapping
" ========================

" remap switch mode
inoremap ; <Esc>
inoremap ;; ;<Esc> 
" nnoremap ; i
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
inoremap "<Tab> ""<Left>
inoremap '<Tab> ''<Left>
inoremap (<Tab> ()<Left>
inoremap {<Tab> {}<Left>
inoremap [<Tab> []<Left>
inoremap <<Tab> <><Left>
" insert new line with two more lines
nnoremap <Leader>a o<Esc>0Di<Enter><Enter><Up>
" delete line but stay in normal mode
nnoremap <Leader>d cc<Esc>
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
" remap redo
nnoremap rr <c-r>
" css syntax
autocmd Filetype css,scss inoremap <buffer> {<CR> {<CR>}<Esc>O
autocmd Filetype css,scss nnoremap <buffer> <Leader>c 0f;cT: 
" js syntax
autocmd Filetype javascript inoremap <buffer> {<CR> {<CR>};<Esc>O

" ========================
"           View
" ========================

" theme comes with Pathogen. Load this line after bundle is executed. 
colorscheme monokai 
" font options
set guifont=Anonymous\ Pro:h16
set guioptions=r
" basic syntax display
syntax on
set number
set cursorline
set showcmd
au BufRead,BufNewFile *.axlsx setfiletype ruby
au BufRead,BufNewFile Gemfile setfiletype ruby
au BufRead,BufNewFile Rakefile setfiletype ruby
au BufRead,BufNewFile *.ru setfiletype ruby
" indentation
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
" set scroll
set noshowmode
set scrolloff=3
" search & replace function
set incsearch
set hlsearch
set autoread
set smartcase
set ignorecase
set gdefault



