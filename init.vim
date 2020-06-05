set number
set relativenumber
set mouse=a



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

nnoremap <C-c> <Esc>

imap <C-v> <Esc> v

imap <C-z> <Esc> ui
nnoremap <C-z> <Esc> u

imap <C-q> <Esc> :q<cr>
nnoremap <C-q> <Esc> :q<cr>
cnoremap <C-q> <Esc> :q<cr>
inoremap <C-q> <Esc> :q<cr>

nnoremap <9> &

imap <C-s> <Esc>:w<cr>
nnoremap <C-s> <Esc>:w<cr>


nnoremap <c-;> A;
nnoremap <C-m> :source ~/.config/nvim/init.vim<cr>
nnoremap <C-e> :vsplit ~/.config/nvim/init.vim<cr>
