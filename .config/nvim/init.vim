call plug#begin()
    Plug 'scrooloose/nerdtree'
    Plug 'mhinz/vim-startify'
    Plug 'ryanoasis/vim-devicons'
    Plug 'neoclide/coc.nvim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'liuchengxu/vim-which-key'
    Plug 'MattesGroeger/vim-bookmarks'
    Plug 'mattn/emmet-vim'
    Plug 'scrooloose/syntastic'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1


map <C-n> :NERDTreeToggle<CR>
