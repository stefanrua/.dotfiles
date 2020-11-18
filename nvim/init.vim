syntax on

set autoindent
set nohlsearch
set smartcase
set expandtab
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set clipboard^=unnamed,unnamedplus
set scrolloff=5

noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

highlight NonText ctermfg=darkgray
highlight LineNr ctermfg=darkgray

set laststatus=2
hi StatusLine ctermfg=black ctermbg=NONE cterm=NONE
hi StatusLineNC ctermfg=darkgray ctermbg=NONE cterm=NONE
hi User1 ctermfg=black ctermbg=white
hi User2 ctermfg=black ctermbg=gray
hi User3 ctermfg=white ctermbg=darkgray
hi User4 ctermfg=white ctermbg=gray
set statusline=%=%1*\ %m\ %f\ %2*\ %l/%L\ %*
"set statusline=%=%3*\ %m\ %f\ %4*\ %l/%L\ %*

autocmd FileType gitcommit setlocal textwidth=72
