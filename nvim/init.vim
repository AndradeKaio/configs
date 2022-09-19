" Required:
"call plug#begin(expand('~/.config/nvim/plugged'))
call plug#begin()
"*****************************************************************************
"" Plug install packages
"*****************************************************************************
Plug 'preservim/nerdtree'
"Plug 'jistr/vim-nerdtree-tabs'
"Plug 'tpope/vim-commentary'
"Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
"Plug 'vim-scripts/grep.vim'
"Plug 'vim-scripts/CSApprox'
Plug 'Raimondi/delimitMate'
Plug 'majutsushi/tagbar'
"Plug 'dense-analysis/ale'
Plug 'Yggdroot/indentLine'
"Plug 'editor-bootstrap/vim-bootstrap-updater'
"Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'prabirshrestha/vim-lsp'
Plug 'preservim/nerdcommenter'
"*****************************************************************************
"*****************************************************************************
call plug#end()


set autoread
set number
set relativenumber
set mouse=a

" navigation
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>
nnoremap <C-h> <Left>
nnoremap <C-j> <Down>
nnoremap <C-k> <Up>
nnoremap <C-l> <Right>

"file saving
imap <C-q> <Esc> :q<cr>
nnoremap <C-q> <Esc>:q<cr>
cnoremap <C-q> <Esc>:q<cr>
inoremap <C-q> <Esc>:q<cr>
imap <C-s> <Esc>:w<cr>
nnoremap <C-s> <Esc>:w<cr>
inoremap <C-s> <Esc>:w<cr>
cnoremap <C-s> <Esc>:w<cr>
map <C-s> <Esc>:w<cr>

imap <C-z> <Esc>:u<cr>i
nnoremap <C-z> <Esc>:u<cr>
inoremap <C-z> <Esc>:u<cr>i
cnoremap  <C-z> <Esc>:u<cr>

"bultin painel
map <A-v> :Vexplore<cr>
map <A-s> :Sexplore<cr>
map <A-e> :Explore<cr>

" Plugins
nnoremap <C-p> :FZF<cr>
luafile ~/.config/nvim/tree.lua
"source ~/.config/nvim/coc.vim
let g:python3_host_prog = '/usr/bin/python3'

" style
set background=dark
colorscheme gruvbox

" core
let mapleader = " "
set timeoutlen=2000
nnoremap <leader>so :so<cr>
nnoremap <leader>pls :PlugInstall<cr>
nnoremap <leader>f :NERDTreeToggle<cr>
inoremap jj <Esc>

