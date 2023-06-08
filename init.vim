syntax on
set nocompatible
set number
set hlsearch
set ignorecase
set incsearch
set encoding=UTF-8
set colorcolumn=120

call plug#begin()

Plug 'junegunn/fzf'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-endwise'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'kqito/vim-easy-replace'
Plug 'dyng/ctrlsf.vim'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'github/copilot.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'scrooloose/nerdcommenter'

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

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDCompactSexyComs = 1

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
nnoremap <C-\> :NERDTreeToggle <CR>
nnoremap <C-s> :w <CR>
nnoremap <C-w><C-w> :bp\|bd #<CR>

nmap 		 <leader>f :NERDTreeFind<CR>

nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

autocmd BufWritePre * %s/\s\+$//e
