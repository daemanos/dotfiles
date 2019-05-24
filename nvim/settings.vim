" Directories for swapfiles, backups, etc.
set backupdir=~/.config/nvim/backup//
set directory=~/.config/nvim/swp//
set undodir=~/.config/nvim/undo//

" Tabs and spaces
set number
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Splits
set splitbelow
set splitright

" Enable project-specific configs
set exrc
set secure

" Goyo settings
function! s:goyo_enter()
    silent !tmux set status off
    set noshowmode
    set noshowcmd
    Limelight
    setlocal wrap linebreak nolist
endfunction

function! s:goyo_leave()
    silent !tmux set status on
    set showmode
    set showcmd
    Limelight!
    setlocal nowrap nolinebreak list
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Miscellaneous
set nowrap
set wildignore+=*/build/**,*/tmp/*,*.so,*.swp,*.zip,*.aux
set omnifunc=syntaxcomplete#Complete
let g:syntastic_java_checkers = ['checkstyle']
let g:esearch = {
            \ 'adapter': 'ag',
            \ 'backend': 'nvim',
            \ 'out': 'win',
            \ 'batch_size': 1000,
            \ 'use': ['visual', 'hlsearch', 'last'],
            \}
