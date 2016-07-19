if &compatible
  set nocompatible
endif
filetype off

set runtimepath^=/home/zachary/.dein/repos/github.com/Shougo/dein.vim

call dein#begin('~/.cache/.dein')

call dein#add('/home/zachary/.dein/repos/github.com/Shougo')
call dein#add('neomake/neomake')
call dein#add('altercation/vim-colors-solarized')
call dein#add('scrooloose/nerdtree')


call dein#end()

if dein#check_install()
  call dein#install()
endif

syntax enable
filetype plugin on
set number
set background=dark
colorscheme solarized

set expandtab
set tabstop=4
set shiftwidth=4

highlight Normal ctermbg=none
highlight NonText ctermbg=none

map <C-f> :NERDTreeToggle %<CR>
map <F5> :!make<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
