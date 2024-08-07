" |---------------------|
" |--- My Vim config ---|
" |---------------------|

" Disable compatibility with VI (can cause unexpected issues)
set nocompatible

" Enable type file detection + plugins + indent + syntax highlighting
filetype on
filetype plugin on
filetype indent on
syntax on

" Add relative numbering to each line
set number
set relativenumber

" Set widths to 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" Do not save backup files + fast update
set nobackup
set updatetime=50

" Do not let cursor scroll below or above N lines when scrolling
set scrolloff=8

" Do not wrap lines (allow long lines to extend as far as the line goes)
" Add a color column at 80 characters width
set nowrap
set colorcolumn=80

" Set the commands to save in history (default is 20)
set history=1000

" Use dark Rosé Pine theme
set termguicolors
set background=dark
let g:lightline = { 'colorscheme': 'rosepine' }
colorscheme rosepine 
" Show the status on the second to last line
set laststatus=2
" Mode can be hidden while using Lightline plugin
set noshowmode


" COMPLETION ---------------------------------------------------------------- {{{

" Enable auto completion menu after pressing TAB
set wildmenu
" Make wildmenu behave similar to Bash completion
set wildmode=list:longest
" There are certain files that we would never want to edit with Vim
" Wildmenu will ignore files with these extensions
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" }}}


" SEARCHING ---------------------------------------------------------------- {{{

" Incrementally highlight matching characters as you type when searching
set incsearch
" Ignore capital letters during search
set ignorecase
" Override the ignorecase option if searching for capital letters
" This will allow you to search specifically for capital letters
set smartcase
" Show partial command you type in the last line of the screen
set showcmd
" Show the mode you are on the last line
" Disabled while using Lightline plugin
"set showmode
" Show matching words during a search
set showmatch

" }}}


" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

  Plug 'dense-analysis/ale'
  Plug 'preservim/nerdtree'
  Plug 'rose-pine/vim'
  Plug 'itchyny/lightline.vim'
  Plug 'christoomey/vim-tmux-navigator'

call plug#end()

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Space bar as the leader key
let mapleader = " "
" Jump to [p]revious cursor position
nnoremap <leader>p ``
" Leader twice to type ':' character
nnoremap <leader><leader> :
" Exit insert mode after creating new line above or below current
nnoremap o o<esc>
nnoremap O O<esc>
" Center the cursor when moving to the next word during search
nnoremap n nzzzv
nnoremap N Nzzzv
" Yank from cursor to end of line
nnoremap Y y$
" You can split windows in Vim with ':split' or ':vsplit'
" Navigate the split view using Vim motions
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" Resize split windows using arrow keys:
" CTRL-UP, CTRL-DOWN, CTRL-LEFT, or CTRL-RIGHT.
noremap <C-up> <C-w>+
noremap <C-down> <C-w>-
noremap <C-left> <C-w>>
noremap <C-right> <C-w><

" NERDTree specific mappings:
" Toggle tree
nnoremap <leader>pv :NERDTreeToggle<CR>
" Use 'I' to show dotfiles!
" Have NERDTree ignore certain files and directories
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

" BEST REMAPS EVER
" Keep cursor in the same place while joining lines
nnoremap J mzJ`z
" Keep cursor in the same place while half-page jumping
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
" Use CTRL-C as Esc to leave Insert Mode!
inoremap <C-c> <esc>

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" If the current file type is HTML, set indentation to 2 spaces.
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab

" If Vim version is equal to or greater than 7.3 enable undofile.
" This allows you to undo changes to a file even after saving it.
if version >= 703
    set undodir=~/.vim/backup
    set undofile
    set undoreload=10000
endif

" }}}


