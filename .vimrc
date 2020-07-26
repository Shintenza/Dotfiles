""""""""""PLUGINS""""""""""
"""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dikiaap/minimalist'
Plug 'valloric/youcompleteme'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'

call plug#end()


""""""""""AIRLINE SETTINGS""""""""""
""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_theme='own'
let g:airline#extensions#tabline#enabled = 1


"""""""""""EDITOR SETTINGS""""""""""
""""""""""""""""""""""""""""""""""""
set number relativenumber

"1 tab == 4 spaces
set shiftwidth=4
set tabstop=4


""""""""""THEME SETTINGS""""""""""
""""""""""""""""""""""""""""""""""
set t_Co=256
syntax on
colorscheme minimalist

" Background transparency
hi Normal 		guibg=NONE ctermbg=NONE
hi NonText		guibg=NONE ctermbg=NONE
hi MatchParen 	guibg=NONE ctermbg=NONE
hi LineNr 		guibg=NONE ctermbg=NONE
hi Folded		guibg=NONE ctermbg=NONE


""""""""""NERDTREE""""""""""
""""""""""""""""""""""""""""

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
