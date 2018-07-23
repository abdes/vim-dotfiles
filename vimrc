" Leader
let mapleader=" "

" Theme
colorscheme Tomorrow-Night

" Make it simpler to reload the .vimrc changes
map <leader>s :source ~/.vimrc<CR>

execute pathogen#infect()

set noswapfile
set autowrite     " Automatically :write before running commands
set hlsearch      " When running a search, get Vim to highlight found words:
set incsearch     " do incremental searching
set nowrap         " don't wrap text in the buffer
set tabstop=2      " 2 spaces indent
set expandtab      " replace tab with indent spaces
set shiftwidth=2   " 2 spaces when using < or >
set shiftround     " round to multiple of shiftwidth when using < or >

" Make it obvious where 90 characters is
set textwidth=90
set colorcolumn=+1

" Numbered lines
set number
set numberwidth=5

" Keep more info in memory to speed things up
set hidden
set history=100

" Have some logic when indenting:
set smartindent
set autoindent

filetype on
filetype plugin indent on

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Here’s a handy command to remove whitespaces on save.
autocmd BufWritePre * :s/\s\+$//e

" When selecting a parenthesis it will highlight the one matching:
set showmatch

" --------------------------------------------------------------------------------------
" CommandT
" --------------------------------------------------------------------------------------

noremap <Leader>r :CommandTFlush<CR>

" --------------------------------------------------------------------------------------
" NerdCommenter Setting
" --------------------------------------------------------------------------------------

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
set laststatus=2  " Always display the status line
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" --------------------------------------------------------------------------------------
" GitGutter
" --------------------------------------------------------------------------------------

let g:gitgutter_sign_column_always=1

" --------------------------------------------------------------------------------------
"  Split screen
" --------------------------------------------------------------------------------------

" Split screen navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" More natural splits
set splitbelow
set splitright

