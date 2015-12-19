syntax on
filetype plugin indent on

" Default leader key
let mapleader=','

" Show invisibles
set list

" Reload files changed outside vim
set autoread

" Show current mode down the bottom
set showmode

" The encoding displayed
set encoding=utf-8

" The encoding written to file
set fileencoding=utf-8

call plug#begin('~/.nvim/plugged')

Plug 'szw/vim-tags'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sleuth'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
map <leader>n :NERDTreeToggle<CR>

Plug 'scrooloose/nerdcommenter'
nmap <leader># :call NERDComment(0, "invert")<cr>
vmap <leader># :call NERDComment(0, "invert")<cr>

Plug 'flazz/vim-colorschemes'

Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_working_path_mode=0
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_cache_dir=$HOME.'/.nvim/.cache/ctrlp'

map <leader>f :let g:ctrlp_default_input = 0<cr>:CtrlP<cr>
map <leader><leader>f :let g:ctrlp_default_input = 0<cr>:CtrlPClearCache<cr>:CtrlP<cr>

Plug 'mileszs/ack.vim'
map <leader>a :Ack!<space>
map <leader>A :Ack! <C-R><C-W><CR>

" Use ag for search, it's much faster than ack.
" See https://github.com/ggreer/the_silver_searcher
" on mac: brew install the_silver_searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

Plug 'tpope/vim-endwise'
Plug 'darthdeus/vim-emblem'

call plug#end()

set incsearch
set hlsearch

set noswapfile
set nobackup
set nowb

silent !mkdir ~/.nvim/backups > /dev/null 2>&1
set undodir=~/.nvim/backups
set undofile

set wildmode=list:longest
set wildmenu
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=vendor/assets/**
set wildignore+=*.gem
set wildignore+=.tags
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

set winwidth=80

set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set linebreak

set number
set numberwidth=4

set scrolloff=8

set statusline=\ » " Firulinha
set statusline+=\ %f\  " Filename
set statusline+=%{fugitive#statusline()} " Git info
set statusline+=%= " Separator
set statusline+=%y " File type
set statusline+=[%{strlen(&fenc)?&fenc:'none'}] " File encoding
set statusline+=[%{&ff}] " File ending
set statusline+=\ %P\ of\ %L\  " Perc. file
set statusline+=(%l\:%c) " Line info
set statusline+=\ «\  " Firula

set cursorline

set list listchars=tab:\ \ ,trail:·

hi! LineNR ctermbg=NONE
hi! SignColumn ctermbg=NONE
hi! VertSplit ctermbg=NONE

set background=dark
colorscheme hybrid

map <leader>qq :qa!<cr>

set splitbelow
set splitright

nmap <leader>md :silent !mkdir -p %:h<CR>:redraw!<CR>

map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm 
map tt :tabnew 
map ts :tab split<CR>
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>

nnoremap <leader>w <C-w>v<c-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

