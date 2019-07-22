" install plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin()
" colorschemes
Plug 'AlessandroYorba/Alduin'
Plug 'rakr/vim-one'
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
" other plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lervag/vimtex'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'junegunn/goyo.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
call plug#end()

" plugin options
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" Movement
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Tabbing
set expandtab				" use spaces, not tabs
set softtabstop=4           " number of spaces in tab when editing
set tabstop=4               " number of visual spaces per TAB
set shiftwidth=4            " number of spaces when shifting
set shiftround              " Always indent/outdent to the nearest tabstop
set smartindent             " indent intelligently

" Search
set incsearch               " search as characters are entered
set ignorecase		        " make searches case-insensitive.

" Misc
colorscheme one             " set colorscheme
set background=light        " setting light/dark mode
set termguicolors           " enable true colors support

set showcmd                 " show command in bottom bar
set ruler                   " always show ruler
set nowrap                  " don't wrap long lines
set wildmenu                " visual autocomplete for command menu
set lazyredraw              " redraw only when we need to.
set noshowmode              " hide current mode

syntax enable               " enable syntax higlighting
filetype plugin indent on   " enable plugins and indenting according to filetype
au FileType gitcommit set tw=72 " wrap at 72 chars for git commits
