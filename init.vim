syntax on
set number
set hlsearch
set ignorecase
set incsearch
set encoding=UTF-8
set guifont=AnonymousPro

call plug#begin()

Plug 'junegunn/fzf'
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled=1
let g:airline_theme='luna'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endi
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

colorscheme onedark

nnoremap <C-p> :FZF <CR>
nnoremap <C-h> :bp <CR>
nnoremap <C-l> :bn <CR>
nnoremap <C-w> :bw <CR>


