" vi is improved !
set nocompatible

" neobundle.vim
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim

  call neobundle#rc(expand('~/.vim/bundle'))
endif

NeoBundle 'git://github.com/Shougo/echodoc.git'
NeoBundle 'git://github.com/Shougo/neocomplcache.git'
NeoBundle 'git://github.com/Shougo/neocomplcache-clang_complete.git'
NeoBundle 'git://github.com/Shougo/neobundle.vim.git'
NeoBundle 'git://github.com/Shougo/unite.vim.git'
NeoBundle 'git://github.com/Shougo/vim-vcs.git'
NeoBundle 'git://github.com/Shougo/vimfiler.git'
NeoBundle 'git://github.com/Shougo/vimshell.git'
NeoBundle 'git://github.com/Shougo/vinarise.git'
NeoBundle 'git://github.com/vim-scripts/DrawIt.git'

" basic settings
filetype plugin indent on
filetype plugin on
filetype indent on
syntax on
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent smartindent
set wildmenu
set wrapscan
set incsearch
set hlsearch
set showcmd
set number
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,euc-jp,cp932,iso-2022-jp
set visualbell t_vb=
set novisualbell

set cindent
set cinoptions+=g0,N-s,:0,(0

" GNU global
map <C-G> :Gtags<CR>
map <C-H> :Gtags -f %<CR>
" map <C-J> :GtagsCursor<CR>
" map <C-N> :cn<CR>
" map <C-P> :cp<CR>

" Load settings for each location.
augroup vimrc-local
  autocmd!
  autocmd BufNewFile,BufReadPost * call s:vimrc_local(expand('<afile>:p:h'))
augroup END

function! s:vimrc_local(loc)
  let files = findfile('.vimrc.local', escape(a:loc, ' ') . ';', -1)
  for i in reverse(filter(files, 'filereadable(v:val)'))
    source `=i`
  endfor
endfunction

" remove trailing space
autocmd BufWritePre * :%s/\s\+$//e

" font
set guifont=Ricty\ 11
