" |---------------------|
" |--- My Vim config ---|
" |---------------------|

" ENVIRONMENT ---------------------------------------------------------------- {{{

set nocompatible
set mouse-=a

filetype plugin indent on
syntax on

set number
set relativenumber

set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2

set wildmenu
set wildmode=list:longest
set wildignore=*.exe,*.dll

set scrolloff=8
set nowrap
set colorcolumn=80
set cursorline

colorscheme habamax
set laststatus=2
hi NonText ctermbg=none
" If transparency allowed
hi Normal guibg=NONE ctermbg=NONE
" If lightline plugin allowed
set noshowmode

" }}}


" SEARCHING ---------------------------------------------------------------- {{{

set incsearch
set ignorecase
set smartcase
set showcmd
set showmatch

" }}}


" PLUGINS ---------------------------------------------------------------- {{{

" Local Vim packages
packadd! matchit

" Online Vim plugins (from GitHub)
call plug#begin('~/.vim/plugged')

  Plug 'itchyny/lightline.vim'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

call plug#end()

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

let mapleader = " "

nnoremap o o<esc>
nnoremap O O<esc>
nnoremap n nzzzv
nnoremap N Nzzzv

" Navigate the split view using Vim motions
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" Resize split windows using arrow keys:
" CTRL-UP, CTRL-DOWN, CTRL-LEFT, or CTRL-RIGHT.
noremap <C-up> <C-w>-
noremap <C-down> <C-w>+
noremap <C-left> <C-w><
noremap <C-right> <C-w>>

" Launch FZF file search:
" (select multiple files with TAB -> open files in tabs with CTRL-T)
" (open file with ENTER, CTRL-X [horizontal split], CTRL-V [vertical split])
noremap <leader>f :FZF<CR>

" Keep cursor in the same place while joining lines
nnoremap J mzJ`z
" Keep cursor in the same place while half-page jumping
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
" Use CTRL-C as Esc to leave Insert Mode!
inoremap <C-c> <esc>

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" Enable code folding with the marker method
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}

