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

syntax enable

set nobackup
set scrolloff=999
set nowrap
set number
set mouse=a
set cursorline
set shiftwidth=4
set tabstop=4
set showcmd
set showmode
set showmatch
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

	Plug 'sheerun/vim-polyglot'"
	Plug 'morhetz/gruvbox'
	Plug 'preservim/nerdtree'
	Plug 'vim-airline/vim-airline'
	Plug 'erietz/vim-terminator', { 'branch': 'main'}

call plug#end()

" }}}

" VIMSCRIPT -------------------------------------- {{{

autocmd vimenter * ++nested colorscheme gruvbox
autocmd VimEnter * NERDTree | wincmd p
let g:NERDTreeWinSize = 25
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd VimEnter * belowright terminal ++rows=13
autocmd VimLeave * call jobstop(term_getjob())

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

let mapleader=","
nnoremap <C-left> <c-w>h
nnoremap <C-right> <c-w>l
nnoremap <C-down> <c-w>j
nnoremap <C-up> <c-w>k
nnoremap <C-`> ,ot
nnoremap <F3> :NERDTreeToggle<cr>
inoremap jj <esc>

" }}}

" COLORSCHEMES ----------------------------------------------------- {{{

set termguicolors
set background=dark
let g:gruvbox_constrast_dark='hard'
colorscheme gruvbox


" }}}

" STATUS LINE -------------------------------------------------------------{{{

set statusline=

set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%=
set statusline+=\ row:\ %l\ col:\ %c

set laststatus=2

" }}}
