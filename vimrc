let mapleader =" "
syntax on
set nocompatible
set number
set relativenumber
set cursorline
set hlsearch
set incsearch
set showcmd
set wildmenu
set ignorecase
set smartcase
set nowrap
set showmatch
set ruler
set scrolloff=5
" tab space config
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
" share vim paste buffer with system level
set clipboard=unnamed
" save and quite key map
map S :w<CR>
map Q :q<CR>

"change direction keys in insert mode
vmap jk <ESC> 
imap jk <ESC>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>


"space+enter to make search light disappear
noremap <LEADER><CR> :nohlsearch<CR>

"window switch
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
let &t_ut=''
"change cursor style of insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"cursor on last exit
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"vim config change take effect immediately
autocmd BufWritePost $MYVIMRC source $MYVIMRC

let g:SnazzyTransparent = 1
color snazzy
"NERDTree config
map <LEADER>t :NERDTree<CR>
map <LEADER>tt :NERDTreeToggle<CR>
"ctrlp config
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_by_filename = 1
