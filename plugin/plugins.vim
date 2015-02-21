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
	map <Leader> <Plug>(easymotion-prefix)
	" enable quick jump inline
	map <Leader>l <Plug>(easymotion-lineforward)
	map <Leader>j <Plug>(easymotion-j)
	map <Leader>k <Plug>(easymotion-k)
	map <Leader>h <Plug>(easymotion-linebackward)
  nmap s <Plug>(easymotion-s)
  map  / <Plug>(easymotion-sn)
  map  n <Plug>(easymotion-next)
  map  N <Plug>(easymotion-prev)
	let g:EasyMotion_startofline = 0
  let g:EasyMotion_smartcase = 1

" NERDTree activation
nmap mn :NERDTreeFocusToggle<CR>
nmap <Leader>n :NERDTreeTabsToggle<CR>

" CtrlP activation
let g:ctrlp_map = '<Leader>.'


