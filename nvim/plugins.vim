call plug#begin('~/.config/nvim/plugged')

" Syntax highlighting
Plug 'chriskempson/base16-vim'
Plug 'wting/rust.vim'
Plug 'derekwyatt/vim-scala'
Plug 'cespare/vim-toml'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'adimit/prolog.vim'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'ledger/vim-ledger'
Plug 'tikhomirov/vim-glsl'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" General utilities
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'Raimondi/delimitMate'
Plug 'majutsushi/tagbar'
Plug 'eugen0329/vim-esearch'
Plug 'tpope/vim-abolish'

" Writing utilities
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()
