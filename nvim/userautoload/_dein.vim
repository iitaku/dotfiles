if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/iitaku/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/iitaku/.cache/dein')
  call dein#begin('/home/iitaku/.cache/dein')
 
  " Load toml
  " let s:toml = '/home/iitaku/.config/nvim/dein.toml'
  " let s:lazy_toml = '/home/iitaku/.config/nvim/dein_lazy.toml'
  " call dein#load_toml(s:toml, {'lazy': 0})
  " call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " Required:
  call dein#add('Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/neomru.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/unite-outline')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/vimfiler')
  call dein#add('Shougo/vimproc', {'build': 'make'})
  call dein#add('Shougo/vimshell')
  call dein#add('dbgx/lldb.nvim')
  call dein#add('easymotion/vim-easymotion')
  call dein#add('flazz/vim-colorschemes')
  call dein#add('hewes/unite-gtags')
  call dein#add('t9md/vim-quickhl')
  call dein#add('ujihisa/unite-colorscheme')
  
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
