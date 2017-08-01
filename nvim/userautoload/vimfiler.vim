" global settings
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_enable_auto_cd = 0
command Ex e %:h

augroup vimfiler
  autocmd!
  autocmd FileType vimfiler call s:vimfiler_my_settings()
augroup END

function! s:vimfiler_my_settings()
  nunmap <buffer> H
  nunmap <buffer> M
  nunmap <buffer> L
endfunction

