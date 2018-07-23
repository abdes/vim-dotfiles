filetype on
filetype plugin on
syntax on
colorscheme Tomorrow-Night
set guifont=Menlo\ Regular:h18
set colorcolumn=90
set number
let mapleader=" "
map <leader>s :source ~/.vimrc<CR>

" Smart Defaults

" Keep more info in memory to speed things up
set hidden
set history=100

" Have some logic when indenting:
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" Here’s a handy command to remove whitespaces on save.
autocmd BufWritePre * :s/\s\+$//e

" When running a search, get Vim to highlight found words:
set hlsearch
" Ability to cancel a search with Escape:
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" When selecting a parenthesis it will highlight the one matching:
set showmatch

execute pathogen#infect()

noremap <Leader>r :CommandTFlush<CR>


