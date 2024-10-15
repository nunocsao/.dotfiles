" |---------------------|
" |--- My Vim config ---|
" |---------------------|

" ENVIRONMENT ---------------------------------------------------------------- {{{

set nocompatible
"set mouse=a

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

colorscheme desert
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

call plug#begin('~/.vim/plugged')

  Plug 'itchyny/lightline.vim'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'

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


" LSP ---------------------------------------------------------------- {{{

function! OnLspBufferEnabled() abort
    " Toggle completion with docs using <CTRL-X-O>
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gI <plug>(lsp-implementation)
    nmap <buffer> <leader>D <plug>(lsp-type-definition)
    nmap <buffer> <leader>ds <plug>(lsp-document-symbol-search)
    nmap <buffer> <leader>ws <plug>(lsp-workspace-symbol-search)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> <leader>ca <plug>(lsp-code-action)
    nmap <buffer> gD <plug>(lsp-declaration)
    nmap <buffer> K <plug>(lsp-hover)
    nmap <buffer> [d <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]d <plug>(lsp-next-diagnostic)
endfunction
	
augroup lsp_install
  au!
  autocmd User lsp_buffer_enabled call OnLspBufferEnabled()
augroup END

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" Enable code folding with the marker method
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}


