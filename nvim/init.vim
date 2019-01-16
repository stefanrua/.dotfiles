set clipboard=unnamedplus
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set autoindent
set nowrap                " don't wrap text
set shiftround            " always indent/outdent to the nearest tabstop
set number                " show line numbers
" set scrolloff=8

" Move by visual (instead of logical) lines vertically
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
