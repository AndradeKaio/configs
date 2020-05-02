set hidden
set number
set relativenumber


imap <c-s> <Esc> :w <cr>

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

imap <c-v> <Esc> v


imap <c-z> <Esc> ui
nnoremap <c-z> <Esc> u




let mapleader ="\,"
nnoremap <c-s> <Esc> :w <cr>
nnoremap <c-;> A;
noremap <c-r> :source ~/.config/nvim/init.vim<cr>
noremap <c-e> :vsplit ~/.config/nvim/init.vim<cr>
