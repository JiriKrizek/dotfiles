" Shamelessly gathered from all over the internet
"
"
set nocompatible 
call pathogen#infect()
syntax on
filetype plugin indent on
"let g:ackprg="ack-grep -H --nocolor --nogroup --column"

set t_Co=256
set background=dark
"colorscheme Tomorrow-Night
"colorscheme desert
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=L
set guifont="bitstream vera sans"\ 9
set number             
set relativenumber

let mapleader = ","
set wildmenu
set tabpagemax=1000
set directory=/tmp
set encoding=utf-8
set ruler
set showcmd
set pastetoggle=<F5>
set autoread
set hidden
set scrolloff=2
set nobackup

set nowrap
set textwidth=80

set autoindent
set smartindent
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2

noremap gp "+p

set hlsearch
set incsearch
set ignorecase
nnoremap <CR> :nohlsearch<CR>/<BS>

nmap <C-S-tab> :tabprevious<CR>
nmap <C-tab> :tabnext<CR>
map <C-S-tab> :tabprevious<CR>
map <C-tab> :tabnext<CR>
imap <C-S-tab> <Esc>:tabprevious<CR>i
imap <C-tab> <Esc>:tabnext<CR>i
nmap <C-t> :tabnew<CR>
imap <C-t> <Esc>:tabnew<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"map <Left> <nop>
"map <Right> <nop>
"map <Up> <nop>
"map <Down> <nop>

map Q <nop>
map K <nop>

cnoremap %% <C-R>=expand('%:h').'/'<CR>
map <leader>e :edit %%
map <leader>v :view %%

map <leader>f :CommandTFlush<CR>\|:CommandT<CR>
map <leader>gf :CommandTFlush<CR>\|:CommandT %%<CR>

nnoremap <leader><leader> <c-^>

set winwidth=120
set winheight=5
set winminheight=5
set winheight=999

"au BufWritePre *.rb,*.css,*.scss,*.slim,*.js,*.coffee,*.yml :%s/\s\+$//e
