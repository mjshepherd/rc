execute pathogen#infect()

" activates filetype detection
filetype plugin indent on

" activates syntax highlighting among other things
syntax on

"Leader is mapped to Space key
let mapleader = "\<Space>"
set clipboard=unnamed
set hidden
set nu
set backspace=indent,eol,start


"BOL and EOL map to Leader H and Leader L respectively
nmap <Leader>l $
nmap <Leader>h 0

"Change tabs using Shift-J (previous) and Shift-K (next)
nmap <S-J> :tabp<CR>
nmap <S-K> :tabn<CR>


" NERDTreeTabs config
let NERDTreeShowHidden=1
nmap <leader>f <plug>NERDTreeTabsToggle<CR>

"Python Formatting consitent with PEP8
au BufNewFile,BufRead *.py 
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
