set nocompatible	  " Get rid of Vi compatibility
set clipboard=unnamed	  " Use X11's primary selection
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set autoindent
set nowrap                " Don't wrap text
set shiftround            " Always indent/outdent to the nearest tabstop
set number                " Show line numbers
syntax on

" Move by visual (instead of logical) lines vertically
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
