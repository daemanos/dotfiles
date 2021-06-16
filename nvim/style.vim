syntax enable
let base16colorspace=256
colorscheme base16-ocean
let g:airline_theme='base16'
"hi Normal ctermbg=none
"hi LineNr ctermbg=none cterm=bold
"hi NonText ctermbg=none
"let g:nord_cursor_line_number_background = 1
"let g:nord_italic = 1
"let g:nord_italic_comments = 1
set colorcolumn=80
match ColorColumn /\s\+$/
let g:limelight_conceal_ctermfg=8
let g:pandoc#syntax#conceal#use = 0

autocmd FileType sml setlocal shiftwidth=3 tabstop=3
