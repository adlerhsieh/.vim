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
233
" search & replace function
set incsearch
set hlsearch
set autoread
set smartcase
set ignorecase
set gdefault


