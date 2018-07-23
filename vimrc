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

" NerdCommenter Setting
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a
" region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" Lightline configuration
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" GitGutter
let g:gitgutter_sign_column_always=1

