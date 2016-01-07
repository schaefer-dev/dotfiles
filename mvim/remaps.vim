" Latex Suite remaps:
augroup MyIMAPs
        au!
        au VimEnter * call IMAP('(', '(<++>)<++>', 'tex')
        au VimEnter * call IMAP('((', '((<++>)<++>)<++>', 'tex')
        au VimEnter * call IMAP('(((', '(((<++>)<++>)<++>)<++>', 'tex')
        au VimEnter * call IMAP('{', '{<++>}<++>', 'tex')
        au VimEnter * call IMAP('\{', '\{<++>\}<++>', 'tex')
        au VimEnter * call IMAP('[', '[<++>]<++>', 'tex')
        au VimEnter * call IMAP('$', '$<++>$<++>', 'tex')
        au VimEnter * call IMAP('\s ', '\section{<++>}<++>', 'tex')
        au VimEnter * call IMAP('\s* ', '\section*{<++>}<++>', 'tex')
        au VimEnter * call IMAP('\sss ', '\subsubsection{<++>}<++>', 'tex')
        au VimEnter * call IMAP('\ss ', '\subsection{<++>}<++>', 'tex')
        au VimEnter * call IMAP('\sss* ', '\subsubsection*{<++>}<++>', 'tex')
        au VimEnter * call IMAP('\ss* ', '\subsection*{<++>}<++>', 'tex')
        au VimEnter * call IMAP('\enumerate ', '\begin{enumerate}<++>', 'tex')
        au VimEnter * call IMAP ('\itemize ', '\begin{itemize}<++>','tex')
        au VimEnter * call IMAP('\bf ','\textbf{<++>}<++>','tex')
        au VimEnter * call IMAP('\t ','\text{<++>}<++>','tex')
        au VimEnter * call IMAP('\t{','\text{<++>}<++>','tex')
        au VimEnter * call IMAP('\un ','\underline{<++>}<++>','tex')
        au VimEnter * call IMAP('\under ','\underline{<++>}<++>','tex')
        au VimEnter * call IMAP('\over ','\overline{<++>}<++>','tex')
        au VimEnter * call IMAP('\conc ','$\rightarrow$ <++>','tex')
        au VimEnter * call IMAP('\frac{','\frac{<++>}{<++>}<++>','tex')
        au VimEnter * call IMAP('\frac ','\frac{<++>}{<++>}<++>','tex')
        au VimEnter * call IMAP('\underbrace{','\underbrace{<++>}_{<++>}<++>','tex')
        au VimEnter * call IMAP('\overbrace{','\overbrace{<++>}^{<++>}<++>','tex')
        au VimEnter * call IMAP('\underbrace ','\underbrace{<++>}_{<++>}<++>','tex')
        au VimEnter * call IMAP('\overbrace ','\overbrace{<++>}_{<++>}<++>','tex')
        au VimEnter * call IMAP('\Conc ','$\Rightarrow$ <++>','tex')
        au VimEnter * call IMAP('\pic ','\includegraphics[scale = 0.11]{pictures/<++>}\\<++>','tex')
        au VimEnter * call IMAP('\pic{','\includegraphics[scale = 0.11]{pictures/<++>}\\<++>','tex')
        au VimEnter * call IMAP('\nl ','\newline <++>','tex')
        au VimEnter * call IMAP('\margin ','\begin{addmargin}[2em]{2em}% 2em left, 2em right <++>','tex')
        au VimEnter * call IMAP('\mar ','\begin{addmargin}[2em]{2em}% 2em left, 2em right <++>','tex')
        au VimEnter * call IMAP("''","''<++>''<++>",'tex')
augroup END

" vim tab navigation
" :tabe <filepath> to add a new tab
" :ls to list tabs
" :tabn next tab
" :tabp previous tab

" vim buffer navigation
" :e to edit file
" :ls to list buffers
" :b to change to buffer y (autocomplete)


" set leader Key to space
let mapleader=" "

" <Leader>rtw will remove all trailing whitespace
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

" toggle NerdTree
map <leader>k :NERDTreeToggle<CR>

" next and previous tab
map <leader>p :tabp<CR>
map <leader>n :tabn<CR>

" toggle ctrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>
