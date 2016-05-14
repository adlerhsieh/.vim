" Load Pathogen
execute pathogen#infect()
" remap command mode & leader key
let mapleader = ","
" file setting
set shell=/bin/sh
set nocompatible
set noswapfile
filetype on
filetype indent on
filetype plugin on
set encoding=utf-8
scriptencoding utf-8
" set matchit
runtime macros/matchit.vim
" auto source .vimrc when save
autocmd! BufWritePost $MYVIMRC source $MYVIMRC
" auto backup .vimrc into git repo
autocmd! BufWrite $MYVIMRC :write! ~/.vim/.vimrc
" backup plugin list
autocmd! BufWrite $MYVIMRC :execute "call Plugins_backup()"
function! Plugins_backup()
  :execute "!rm ~/.vim/plugin_list.txt" 
  :execute "tabnew ~/.vim/plugin_list.txt" 
  :execute "read !ls ~/.vim/bundle"
  :execute "wq"
endfunction
" ========================
"         Plugins 
" ========================

" syncing NERDTree and Ctrl-P directory
" let g:NERDTreeChDirMode = 2
" let g:ctrlp_working_path_mode = 'rw'
" Lightline
let g:lightline = {
                  \ 'colorscheme': 'wombat',
                  \ }
set laststatus=2
" nmap s <Plug>(easymotion-s)
map  / <Plug>(easymotion-sn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
nmap s <Plug>(easymotion-s2)
let g:EasyMotion_startofline = 0
let g:EasyMotion_smartcase = 1
" emmet
" let g:user_emmet_leader_key='<c-a>'
" vim-sneak
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
" NERDTree activation
" nmap mn :NERDTreeFocusToggle<CR>
" nmap <Leader>n :NERDTreeTabsToggle<CR>
nnoremap <Leader>nn :edit .<CR>
nnoremap <Leader>nN :Explore<CR>
nnoremap <Leader>nx :split .<CR>
nnoremap <Leader>nX :Sexplore<CR>
nnoremap <Leader>nv :vsplit .<CR>
nnoremap <Leader>nV :Vexplore<CR>
nnoremap <Leader>nt :tabnew<CR>:e.<CR>
nnoremap <Leader>nT :tabnew<CR>:Explore<CR>
let g:netrw_localrmdir='rm -r'
" vim-go
nnoremap <Leader>gt :GoTest<CR>
nnoremap <Leader>ga :GoAlternate<CR>
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
nnoremap <Leader>t :Tabularize /
vnoremap <Leader>t :Tabularize /
noremap <Leader>ra :call RunAllSpecs()<CR>
noremap <Leader>rr :call RunCurrentSpecFile()<CR>
noremap <Leader>re :reg<CR>
" highlight html matching tags
let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'php': 1,
    \ 'erb': 1,
    \}
" ========================
"       Key Remapping
" ========================

" remap switch mode
inoremap ; <Esc>
inoremap ;; ;<Esc>
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
nnoremap g. <c-w><c-w>
nnoremap <c-l> <c-w>5<
nnoremap <c-h> <c-w>5>
nnoremap <c-j> <c-w>5-
nnoremap <c-k> <c-w>5+
" add comma at end
nnoremap <Leader>/ A,<Esc>
nnoremap <Leader>; A;<Esc>
" insert new line with two more lines
nnoremap <Leader>a o<Esc>0Di<Enter><Enter><Up>
" delete line but stay in normal mode
nnoremap <Leader>d cc<Esc>
" move right for escaping surround
inoremap <c-l> <Right>
" save & quit
nnoremap <s-s> <esc>:w<CR>
nnoremap WQ :wq<CR>
nnoremap Q :q<CR> 
" cancel search highlight
nnoremap <Leader><Space> :noh<CR>
" RSpec add focus tag
nnoremap <Leader>rf A<BS><BS><BS>, focus: true do<Esc>
nnoremap <Leader>rd $15Xxa do<Esc>
" adjust file indentation
nnoremap <Leader>i gg=G
" add blank line and space
nnoremap <Enter> O<Esc>0D
nnoremap <Space> i<Space><Esc>
" remap redo
nnoremap rr <c-r>
" copy & paste from/to system clipboard
vnoremap <Leader>y :w !pbcopy<CR><CR>
nnoremap <Leader>p :r !pbpaste<CR>
" css syntax
autocmd Filetype css,scss inoremap <buffer> {<CR> {<CR>}<Esc>O
autocmd Filetype css,scss nnoremap <buffer> <Leader>c 0f;cT: 
" js syntax
autocmd Filetype javascript inoremap <buffer> {<CR> {<CR>};<Esc>O
" txt long text editing
autocmd Filetype txt nnoremap <buffer> j gj
autocmd Filetype txt nnoremap <buffer> k gk
" autocmd Filetype netrw nnoremap <buffer> o <CR>
autocmd Filetype netrw nnoremap <buffer> - <c-d>
" backspace has no function as default in vim 7.4
set backspace=indent,eol,start
" ========================
"           View
" ========================

" theme comes with Pathogen. Load this line after bundle is executed.
colorscheme onedark
" font options
set guifont=Anonymous\ Pro:h16
set guioptions=r
" basic syntax display
syntax on
set number
set cursorline
set showcmd
au BufRead,BufNewFile *.axlsx setfiletype ruby
au BufRead,BufNewFile *.prawn setfiletype ruby
au BufRead,BufNewFile *.jbuilder setfiletype ruby
au BufRead,BufNewFile Gemfile setfiletype ruby
au BufRead,BufNewFile Rakefile setfiletype ruby
au BufRead,BufNewFile *.ru setfiletype ruby
au BufRead,BufNewFile *.cr setfiletype ruby
au BufRead,BufNewFile *.json setfiletype javascript
au BufNewFile * write
" au BufWritePost * call 
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

call textobj#user#plugin('datetime', {
\   'date': {
\     'pattern': '\<\d\d\d\d-\d\d-\d\d\>',
\     'select': ['ad', 'id'],
\   },
\   'time': {
\     'pattern': '\<\d\d:\d\d:\d\d\>',
\     'select': ['at', 'it'],
\   },
\ })
