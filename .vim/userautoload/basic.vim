" VIM is improved !
set nocompatible

" syntax
syntax on
filetype on
filetype indent on
filetype plugin on

" basic color
colorscheme molokai

" tab must be space
set expandtab

" indent is 2
set tabstop=2
set shiftwidth=2
set softtabstop=2

" beautiful indent
set autoindent
set smartindent

" improved CLI
set hlsearch
set incsearch
set number
set showcmd
set wildmenu
set wrapscan

" encoding
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,euc-jp,cp932,iso-2022-jp

" fold by syntax
set foldmethod=syntax
set foldlevel=1
set foldnestmax=2
set nofoldenable
nnoremap <C-l> zo
nnoremap <C-h> zc

" walk directory tree
" set autochdir

" view
set visualbell t_vb=
set novisualbell
set guifont=Ricty\ Diminished\ 11

" C/C++ specific
set cindent
set cinoptions+=g1,N-s,:0,(0,W4

" .vimrc.local is available
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

" disable ex-mode
nnoremap Q <nop>

" binary
augroup BinaryXXD
  autocmd!
  autocmd BufReadPre  *.bin let &binary =1
  autocmd BufReadPost * if &binary | silent %!xxd -g 1
  autocmd BufReadPost * set ft=xxd | endif
  autocmd BufWritePre * if &binary | %!xxd -r | endif
  autocmd BufWritePost * if &binary | silent %!xxd -g 1
  autocmd BufWritePost * set nomod | endif
augroup END
