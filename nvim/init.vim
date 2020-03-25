" Install plugin manager
"if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
"  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
"    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif

" Plugins
"call plug#begin('~/.local/share/nvim/site/plugged')
"Plug 'vim-scripts/Vimchant'
"call plug#end()

" Plugin options
"let g:vimchant_spellcheck_lang = 'fi'

" Movement
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Misc
syntax off
set foldmethod=marker
set ignorecase
au FileType gitcommit set tw=72 " wrap at 72 chars for git commits
highlight NonText ctermfg=8
