syntax enable
set background=dark
if exists('$HAX')
    colorscheme greenvision
    hi Normal ctermbg=none
    hi NonText ctermbg=none
else
    colorscheme bubblegum
endif
set colorcolumn=80
set number
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
match ColorColumn /\s\+$/
