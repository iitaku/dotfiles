nmap <C-k> <Plug>LLBreakSwitch
vmap <F2> <Plug>LLStdInSelected

nnoremap <F4> :LLstdin<CR>
nnoremap <F5> :LLmode debug<CR>

nnoremap <expr> S     lldb#remote#get_current_mode() == 'debug' ? ':<C-U>LL step<CR>' : 'S'
nnoremap <expr> <C-N> lldb#remote#get_current_mode() == 'debug' ? ':<C-U>LL next<CR>' : '<C-N>'
nnoremap <expr> F     lldb#remote#get_current_mode() == 'debug' ? ':<C-U>LL finish<CR>' : 'F'
nnoremap <expr> C     lldb#remote#get_current_mode() == 'debug' ? ':<C-U>LL continue<CR>' : 'C'
nnoremap <expr> <C-C> lldb#remote#get_current_mode() == 'debug' ? ':<C-U>LL process interrupt<CR>' : '<C-C>'
nnoremap <expr> <C-P> lldb#remote#get_current_mode() == 'debug' ? ":LL print <C-R>=expand('<cword>')<CR>" : '<C-P>'
vnoremap <expr> <C-P> lldb#remote#get_current_mode() == 'debug' ? ':<C-U>LL print <C-R>=lldb#util#get_selection()<CR><CR>' : '<C-P>'
nnoremap <expr> <C-U> lldb#remote#get_current_mode() == 'debug' ? ':<C-U>LL up<CR>' : '<C-U>'
nnoremap <expr> <C-D> lldb#remote#get_current_mode() == 'debug' ? ':<C-U>LL down<CR>' : '<C-D>'
