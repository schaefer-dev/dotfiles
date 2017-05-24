" set leader Key to space
let mapleader=" "

" remap jj to esc only in insert mode
:imap jj <Esc>


" <Leader>rtw will remove all trailing whitespace
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

" next and previous tab
map <leader>p :tabp<CR>
map <leader>n :tabn<CR>

" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>

" Compile C Program with F8
map <F8> :w <CR> :!gcc % && ./a.out <CR>

"" copy and paste from system clipboard by using leader key

" " Copy to system clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from system clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
