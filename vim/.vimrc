"-------------HOW TO OPEN/CLOSE FOLDS --------------------"
"	zo to open a single fold under the cursor 			  "
" 	zc to close the fold under the cursor	  			  "
" 	zR to open all folds					  			  "
"	zM to close all folds					  			  "	
"	------------------------------------------------------"
"
"------------------ INSTALL PLUGINS ----------------------"
"	:PlugInstall
"---------------------------------------------------------"




" GENERAL SETTINGS --------------------------- {{{

set nocompatible


filetype on
filetype plugin on
filetype indent on
syntax on

set nobackup
set scrolloff=999
set nowrap
set number
set mouse=a
set cursorline
highlight CursorLine cterm=NONE ctermbg=000
set shiftwidth=4
set tabstop=4
set showcmd
set showmode

"searching options"
set incsearch
set smartcase
set showmatch
set hlsearch
set history=1000

set wildmode=longest:full,full
set wildmenu
set wildignore=*.jpg,*.png,*.pdf

" }}}

" PLUGINS ------------------------------------------ {{{

call plug#begin('~/.vim/plugged')

	Plug 'sheerun/vim-polyglot'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'sainnhe/sonokai'

call plug#end()

" }}}

" VIMSCRIPT -------------------------------------- {{{

" allows use of folds "
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END

"Display Cursoline only in active window
augroup cursor_off
	autocmd!
	autocmd WinLeave * set nocursorline
	autocmd WinEnter * set cursorline
augroup END

" }}}

" MAPPING ---------------------------------------- {{{

inoremap jj <esc>

" }}}

" COLORSCHEMES ----------------------------------------------------- {{{

if has('termguicolors')
	set termguicolors
endif

let g:sonokai_style = 'default'
let g:sonokai_better_performance = 1

colorscheme sonokai

" }}}

" STATUS LINE -------------------------------------------------------------{{{

set statusline=

set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%=
set statusline+=\ row:\ %l\ col:\ %c

set laststatus=2

" }}}
