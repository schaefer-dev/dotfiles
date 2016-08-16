" -----------------------------------------------------
" 4.7 Lightline settings {{{
" -----------------------------------------------------
set laststatus=2
" hide -- INSERT --
set noshowmode 

let g:lightline = {
      \ 'colorscheme': 'hybrid',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
"}}}


" Use deoplete.
let g:deoplete#enable_at_startup = 1
