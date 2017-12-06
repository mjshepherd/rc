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
set nowrap
set backspace=indent,eol,start

" Panes/windows
nnoremap <leader><tab> <C-W>w

" default tab to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

"autocomplete with tabs - from vim wiki
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

"BOL and EOL map to H and L respectively
map <S-L> $
map <S-H> ^
"Scroll faster using Shift-J and Shift-K
map <S-J> <C-D>
map <S-K> <C-U>

" NERDTreeTabs config
let NERDTreeShowHidden=1
map <leader>f <plug>NERDTreeTabsToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.swp$']

" CtrlP settings
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.git$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}
let g:ctrlp_working_path_mode = 'ra'
map <leader>e :CtrlP<CR>
map <leader>b :CtrlPBuffer<CR>

"Vim-airline
let g:airline#extensions#tabline#enabled = 1

"Python Formatting consitent with PEP8
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
