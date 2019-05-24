" General
nnoremap <CR> :noh<CR><CR>
nnoremap <leader>m :silent make\|redraw!\|cc<CR>
nnoremap <leader>x :!%:p<CR>
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>t :TagbarToggle<CR>

" Split navigation
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>

function! ScreenMovement(movement)
    if &wrap
        return 'g' . a:movement
    else
        return a:movement
    endif
endfunction

onoremap <silent> <expr> j ScreenMovement("j")
onoremap <silent> <expr> k ScreenMovement("k")
onoremap <silent> <expr> 0 ScreenMovement("0")
onoremap <silent> <expr> ^ ScreenMovement("^")
onoremap <silent> <expr> $ ScreenMovement("$")
nnoremap <silent> <expr> j ScreenMovement("j")
nnoremap <silent> <expr> k ScreenMovement("k")
nnoremap <silent> <expr> 0 ScreenMovement("0")
nnoremap <silent> <expr> ^ ScreenMovement("^")
nnoremap <silent> <expr> $ ScreenMovement("$")
vnoremap <silent> <expr> j ScreenMovement("j")
vnoremap <silent> <expr> k ScreenMovement("k")
vnoremap <silent> <expr> 0 ScreenMovement("0")
vnoremap <silent> <expr> ^ ScreenMovement("^")
vnoremap <silent> <expr> $ ScreenMovement("$")
