set nocompatible            " get rid of Vi compatibility
set clipboard=unnamed       " use X11's primary selection

" Move vertically by visual (instead of logical) lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" space open/closes folds
nnoremap <space> za

" colorscheme desert          " nice colors
syntax enable               " enable syntax higlighting

set expandtab               " tabs are spaces
set tabstop=4               " number of visual spaces per TAB
set softtabstop=4           " number of spaces in tab when editing
set shiftwidth=4            " number of spaces when shifting
set shiftround              " Always indent/outdent to the nearest tabstop
set smartindent             " indent intelligently (maybe)
" set autoindent              " indent next line similarly to the previous one
" filetype indent on          " load filetype-specific indent files

set number                  " show line numbers
set showcmd                 " show command in bottom bar
set ruler                   " always show ruler
set nowrap                  " don't wrap long lines
" set cursorline	        " highlight current line
set wildmenu                " visual autocomplete for command menu
set lazyredraw              " redraw only when we need to.

set incsearch               " search as characters are entered
set hlsearch                " highlight matches
set ignorecase		        " make searches case-insensitive.
set nohlsearch		        " don't continue to highlight searched phrases.

set foldenable              " enable folding
set foldlevelstart=10       " open most folds by default
set foldnestmax=10          " 10 nested fold max
set foldmethod=indent       " fold based on indent level
