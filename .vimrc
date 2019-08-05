" get rid of vi compatibility
set nocompatible

" install plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin()
"Plug 'morhetz/gruvbox'
"Plug 'lervag/vimtex'
"Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'
"Plug 'w0rp/ale'
"Plug 'junegunn/goyo.vim'
"Plug 'kien/ctrlp.vim'
"Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
call plug#end()

" plugin options
"let g:ale_lint_on_text_changed = 0
"let g:ale_lint_on_enter = 0
"let g:ale_lint_on_save = 1
let g:netrw_banner = 0

" movement
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" use spaces instead of tabs
set expandtab
" number of spaces that a <Tab> in the file counts for
set tabstop=4
" number of spaces when shifting using '<' and '>'
set shiftwidth=4
" always indent/outdent to the nearest tabstop
set shiftround
" indent intelligently
set smartindent

" search as characters are entered
set incsearch
" highlight search results
"set hlsearch
" make searches case-insensitive
set ignorecase

" use base 16 colors
"set t_Co=16
" show command in bottom bar
set showcmd
" always show ruler
set ruler
" don't wrap long lines
set nowrap
" visual autocomplete for command menu
"set wildmenu 
" redraw only when we need to.
"set lazyredraw
"tell vim that the terminal connection is fast
set ttyfast

" colorscheme
"colorscheme gruvbox
"set background=dark

" syntax higlighting
syntax off
" enable plugins and indentation according to filetype
"filetype plugin indent on
"filetype indent on

" wrap at 72 chars for git commits
au FileType gitcommit set tw=72

" no underline for tabline
highlight TabLine cterm=None
