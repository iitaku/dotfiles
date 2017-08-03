nmap <C-k> <Plug>LLBreakSwitch
vmap <F2> <Plug>LLStdInSelected
nnoremap <F4> :LLstdin<CR>
nnoremap <F5> :LLmode debug<CR>
nnoremap <S-F5> :LLmode code<CR>
nnoremap <F8> :LL continue<CR>
nnoremap <S-F8> :LL process interrupt<CR>
nnoremap <F9> :LL print <C-R>=expand('<cword>')<CR>
vnoremap <F9> :<C-U>LL print <C-R>=lldb#util#get_selection()<CR><CR>

nnoremap <expr> S     lldb#remote#get_current_mode() == 'debug' ? ':<C-U>LL step<CR>' : 'S'
nnoremap <expr> <C-N> lldb#remote#get_current_mode() == 'debug' ? ':<C-U>LL next<CR>' : '<C-N>'
nnoremap <expr> F     lldb#remote#get_current_mode() == 'debug' ? ':<C-U>LL finish<CR>' : '<C-N>'
nnoremap <expr> C     lldb#remote#get_current_mode() == 'debug' ? ':<C-U>LL continue<CR>' : '<C-N>'
