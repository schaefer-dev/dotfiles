" set leader Key to space
let mapleader=" "

set cb=unnamed

" <Leader>rtw will remove all trailing whitespace
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

" next and previous tab
map <leader>p :tabp<CR>
map <leader>n :tabn<CR>

" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>

" Compile C Program with F8
map <F8> :w <CR> :!gcc % && ./a.out <CR>

