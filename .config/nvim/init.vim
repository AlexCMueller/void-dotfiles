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
call dein#add('rust-lang/rust.vim')

call dein#end()

if dein#check_install()
  call dein#install()
endif

syntax enable
filetype plugin on
set number
colorscheme solarized
set background=dark

set expandtab
set tabstop=4
set shiftwidth=4

map <C-f> :NERDTreeToggle %<CR>
map <F5> :!make<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
