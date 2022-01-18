syntax on
colorscheme zellner

set autoindent
set nohlsearch
set ignorecase
set smartcase
set expandtab
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set clipboard^=unnamed,unnamedplus
set scrolloff=5

set linebreak
set wrap

nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

nnoremap <C-k> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-l> :+tabmove<CR>
nnoremap <C-h> :-tabmove<CR>
nnoremap <C-t> :tabedit<CR>
nnoremap <C-w> :quit<CR>

nnoremap <C-n> :wincmd w<CR>
nnoremap <C-p> :wincmd W<CR>

nnoremap <C-m> :w <bar> :!make<CR>

" highlight NonText ctermfg=darkgray
" highlight LineNr ctermfg=darkgray
" 
set laststatus=1
" hi StatusLine ctermfg=white ctermbg=darkgray cterm=NONE
" hi StatusLineNC ctermfg=gray ctermbg=darkgray cterm=NONE
" hi VertSplit ctermfg=darkgray ctermbg=darkgray cterm=NONE
" hi User1 ctermfg=black ctermbg=white
" hi User2 ctermfg=black ctermbg=gray
" hi User3 ctermfg=white ctermbg=darkgray
" hi User4 ctermfg=white ctermbg=gray
" "set statusline=%=%1*\ %m\ %f\ %2*\ %l/%L\ %*
" set statusline=%=%3*\ %m\ %f\ %4*\ %l/%L\ %*
" "set statusline=%=%2*\ %l/%L\ %*
" 
" hi TabLineFill ctermfg=black ctermbg=NONE
" hi TabLine ctermfg=gray ctermbg=NONE cterm=NONE
" hi TabLineSel ctermfg=white ctermbg=NONE cterm=bold

hi TabLine cterm=none
hi Visual ctermfg=none ctermbg=darkgray
hi MatchParen ctermfg=none ctermbg=darkgray

autocmd FileType gitcommit setlocal textwidth=72


"
" Plugins
"

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'eigenfoo/stan-vim'
Plug 'tpope/vim-commentary'
call plug#end()
