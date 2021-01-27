syntax on
set nocompatible
set number
set hlsearch
set ignorecase
set incsearch
set encoding=UTF-8
set guifont=Mononoki

call plug#begin()

Plug 'junegunn/fzf'
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-endwise'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'

call plug#end()

colorscheme onedark

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled=1
let g:airline_theme='luna'

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1

let ruby_space_errors = 1
let ruby_operators = 1

let g:user_emmet_leader_key=','
let g:onedark_termcolor = 256

if (empty($TMUX))
	if (has("nvim"))
		let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	endif
	if (has("termguicolors"))
		set termguicolors
	endif
endif

nnoremap <C-p> :FZF <CR>
nnoremap <C-h> :bp <CR>
nnoremap <C-l> :bn <CR>
nnoremap <C-S-w> :bp\|bd # <CR>
nnoremap <C-\> :NERDTreeToggle <CR>

autocmd BufWritePre * %s/\s\+$//e
