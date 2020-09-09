
set tabstop=2 softtabstop=2
set shiftwidth=2
set number
set expandtab
set smartindent
set nowrap
set smartindent
set noswapfile
set nobackup
set incsearch
set undodir=~/.vim/undodir
set undofile
set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'dense-analysis/ale'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
call plug#end()
set background=dark

let g:user_emmet_leader_key=','
map <C-n> :NERDTreeToggle<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
