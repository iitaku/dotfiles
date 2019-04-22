" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  if &compatible
    " Be iMproved
    set nocompatible
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'codeape2/vim-multiple-monitors'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'hewes/unite-gtags'
NeoBundle 'iitaku/clewn.vim'
" 0NeoBundle 'phildawes/racer', {
"       \ 'build' : {
"       \       'unix' : 'cargo build --release'
"       \     },
"       \ }
NeoBundle 'rhysd/rust-doc.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'wting/rust.vim'
NeoBundle 't9md/vim-quickhl'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'fatih/vim-go'

call neobundle#end()
