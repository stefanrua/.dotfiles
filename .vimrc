" install plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin()
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'junegunn/goyo.vim'
call plug#end()

" plugin options
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1



set nocompatible            " get rid of Vi compatibility
syntax enable               " enable syntax higlighting
filetype plugin on          " enable plugins
au FileType gitcommit set tw=72
" set clipboard=unnamed       " use X11's primary selection

" Move vertically by visual (instead of logical) lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" space open/closes folds
nnoremap <space> za

set expandtab				        " use spaces, not tabs
set softtabstop=4           " number of spaces in tab when editing
" set noexpandtab             " use tabs, not spaces
set tabstop=4               " number of visual spaces per TAB
set shiftwidth=4            " number of spaces when shifting
set shiftround              " Always indent/outdent to the nearest tabstop
set smartindent             " indent intelligently
" filetype plugin indent on   " indent according to filetype

" set number                  " show line numbers
set showcmd                 " show command in bottom bar
set ruler                   " always show ruler
set nowrap                  " don't wrap long lines
" set cursorline	        " highlight current line
set wildmenu                " visual autocomplete for command menu
" set lazyredraw              " redraw only when we need to.

set incsearch               " search as characters are entered
set hlsearch                " highlight matches
set ignorecase		        " make searches case-insensitive.

set foldenable              " enable folding
set foldlevelstart=10       " open most folds by default
set foldnestmax=10          " 10 nested fold max
set foldmethod=indent       " fold based on indent level

set t_Co=16                 " Use base 16 colors (from .Xresources)
" colorscheme default

highlight TabLine cterm=None " no underline for tabline

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20
