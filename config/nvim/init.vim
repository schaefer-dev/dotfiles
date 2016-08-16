" ======================================================================================================================
" 1.0 Plugin manager (Plug) settings
" ======================================================================================================================
"{{{

" Autoinstall {{{
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
" }}}
call plug#begin('~/.config/nvim/plugged')



" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 1.1 Plugin list
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" ---------------------------------------------------------------------------------------------------------------------
" Language agnostic plugins {{{
" ---------------------------------------------------------------------------------------------------------------------

" Asynchronous maker and linter (needs linters to work)
Plug 'benekastah/neomake', { 'on': ['Neomake'] }
" Autocomplete
Plug 'Shougo/deoplete.nvim'
" Automatically closing pair stuff
Plug 'cohama/lexima.vim'
" Snippet support (C-j)
Plug 'SirVer/ultisnips'
" Commenting support (gc)
Plug 'tpope/vim-commentary'
" CamelCase and snake_case motions
Plug 'bkad/CamelCaseMotion'
" Heuristically set indent settings
Plug 'tpope/vim-sleuth'
"}}}
"

" ---------------------------------------------------------------------------------------------------------------------
" Other languages {{{
" ---------------------------------------------------------------------------------------------------------------------

" Yaml indentation
Plug 'martin-svk/vim-yaml'
" Markdown syntax
Plug 'tpope/vim-markdown'
" Git syntax
Plug 'tpope/vim-git'
" Tmux syntax
Plug 'keith/tmux.vim'
" Latex suite
Plug 'jcf/vim-latex'
"}}}


" ---------------------------------------------------------------------------------------------------------------------
" Interface improving {{{
" ---------------------------------------------------------------------------------------------------------------------

" Lightline (simple status line)
Plug 'itchyny/lightline.vim'
Plug 'cocopon/lightline-hybrid.vim'
Plug 'christoomey/vim-tmux-navigator'
"}}}


" ---------------------------------------------------------------------------------------------------------------------
" External tools integration plugins {{{
" ---------------------------------------------------------------------------------------------------------------------

" Fugitive
Plug 'tpope/vim-fugitive'
" Git changes showed on line numbers
Plug 'airblade/vim-gitgutter'
"}}}


" ---------------------------------------------------------------------------------------------------------------------
" Text insertion/manipulation {{{
" ---------------------------------------------------------------------------------------------------------------------

" Surround (cs"')
Plug 'tpope/vim-surround'
" Easy alignment
Plug 'godlygeek/tabular', { 'on':  'Tabularize' }
" Safely editing in isolation
Plug 'ferranpm/vim-isolate', { 'on':  ['Isolate', 'UnIsolate'] }
" Cycling related words via C-a C-x (i.e. true/false)
Plug 'zef/vim-cycle'
" Titlecase motion (gt)
Plug 'christoomey/vim-titlecase'
"}}}

" ---------------------------------------------------------------------------------------------------------------------
" Extra text objects {{{
" ---------------------------------------------------------------------------------------------------------------------

" Custom text objects creation (dependency for the latter)
Plug 'kana/vim-textobj-user'
" Argument text object (via, >a)
Plug 'PeterRincker/vim-argumentative'
" Indent text object (vii)
Plug 'kana/vim-textobj-indent'
" Line text object (vil)
Plug 'kana/vim-textobj-line'
" Entire buffer text object (vae)
Plug 'kana/vim-textobj-entire'
" Ruby block text object (vir)
Plug 'nelstrom/vim-textobj-rubyblock'
" Comment text object (vac)
Plug 'glts/vim-textobj-comment'
" XML attribute
Plug 'whatyouhide/vim-textobj-xmlattr'
" Improved targets line cin) next parens
Plug 'wellle/targets.vim'
"}}}


" ---------------------------------------------------------------------------------------------------------------------
" Colorschemes {{{
" ---------------------------------------------------------------------------------------------------------------------

" Hybrid
Plug 'w0ng/vim-hybrid'
" Badwolf
Plug 'sjl/badwolf'
" Molokai
Plug 'tomasr/molokai'
" Iceberg
Plug 'cocopon/iceberg.vim'
" Tender
Plug 'jacoborus/tender.vim'
"}}}


" ---------------------------------------------------------------------------------------------------------------------
" Other {{{
" ---------------------------------------------------------------------------------------------------------------------

" Intelligent buffer closing
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
" Matchit enhances jump motions
Plug 'edsono/vim-matchit'
" More . repeat functionality
Plug 'tpope/vim-repeat'
" Populate arglist with buffers in quickfix list
Plug 'nelstrom/vim-qargs', { 'on': 'Qargs' }
"}}}

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 1.2 End of plugin declaration
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
call plug#end()
"}}}


" -----------------------------------------------------
" 4.7 Lightline settings {{{
" -----------------------------------------------------
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'hybrid',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
"}}}

" ======================================================================================================================
" 6.0 Color and highlighting settings
" ======================================================================================================================
"{{{
" Syntax highlighting {{{
syntax on
"}}}

" Color scheme {{{
set bg=dark
colorscheme hybrid
"}}}

" Highlight VCS conflict markers {{{
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'
"}}}

" Highlight term cursor differently {{{
highlight TermCursor ctermfg=green guifg=green
"}}}

" Listchars highlighting {{{
highlight NonText ctermfg=235 guifg=gray
highlight SpecialKey ctermfg=235 guifg=gray
"}}}

" Remove underline in folded lines {{{
hi! Folded term=NONE cterm=NONE gui=NONE ctermbg=NONE
"}}}

" Link highlight groups to improve buftabline colors {{{
hi! link BufTabLineCurrent Identifier
hi! link BufTabLineActive Comment
hi! link BufTabLineHidden Comment
hi! link BufTabLineFill Comment
"}}}

" color for cursorline and cursorcolumn
hi CursorColumn ctermbg=237 guibg=#373B40 
hi CursorLine ctermbg=237 guibg=#373B40 

"}}}


" OLD VIM SETTINGS -------------------------------------------

"shows horizontal and vertical line where the cursor is in the file
set cursorline cursorcolumn

"linebreaks after long line are indented correctly
set wrap

" long lines have same indent
set breakindent

"show syntax colors
syntax enable

"enable filetype detection
filetype on
filetype plugin on
filetype indent on

" make backspace work like most other apps
set backspace=2

" show linenumbers
set relativenumber
set number

"disable creating of all sort of swapfiles
set nobackup
set nowb
set noswapfile

"shows number of columns and lines in powerbar
set ruler

" hide -- INSERT --
set noshowmode 

"sets width for shifting with >> or << and tablength and converts tab to spaces
set shiftwidth=4
set tabstop=4
set expandtab

"sets character encoding
set encoding=utf8

" automatically change window's cwd to file's dir
set autochdir

" i want to see at least x lines above/below the cursor
set scrolloff=10

set history=999
set hlsearch
set showmatch

" enhanced tab completion, especially useful for tab/buffer navigation
set wildmenu

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" True color
let $NVIM_TUI_ENABLE_TRUE_COLOR=1


" END OLD VIM SETTINGS ---------------------------------------





" Latex Suite setup:--------------------------------------------------

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
" set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" Ltatex Suite settings
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

let g:Tex_CompileRule_pdf = 'latexmk -pdf'




" REMAPS START --------------------------------------------------------------------------------

" Latex Suite remaps:
augroup MyIMAPs
        au!
        au VimEnter * call IMAP('(', '(<++>)<++>', 'tex')
        au VimEnter * call IMAP('((', '((<++>)<++>', 'tex')
        au VimEnter * call IMAP('(((', '(((<++>)<++>', 'tex')
        au VimEnter * call IMAP('((((', '((((<++>)<++>', 'tex')
        au VimEnter * call IMAP('(((((', '(((((<++>)<++>', 'tex')
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
        au VimEnter * call IMAP('\pic ','\includegraphics[scale = 0.22]{pictures/<++>}\\<++>','tex')
        au VimEnter * call IMAP('\pic{','\includegraphics[scale = 0.22]{pictures/<++>}\\<++>','tex')
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

" next and previous tab
map <leader>p :tabp<CR>
map <leader>n :tabn<CR>

" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>

" Compile C Program with F8
map <F8> :w <CR> :!gcc % && ./a.out <CR>


" Remaps end -------------------------------------------------------------------------------------------

" NeoBundle Scripts-----------------------------
if has('vim_starting')  
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
  set runtimepath+=~/.config/nvim/
endif


let neobundle_readme=expand('~/.config/nvim/bundle/neobundle.vim/README.md')

if !filereadable(neobundle_readme)  
  echo "Installing NeoBundle..."
  echo ""
  silent !mkdir -p ~/.config/nvim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.config/nvim/bundle/neobundle.vim/
  let g:not_finsh_neobundle = "yes"
endif

call neobundle#begin(expand('$HOME/.config/nvim/bundle'))  
NeoBundleFetch 'Shougo/neobundle.vim'

" ------------------------------------
" THIS IS WHERE YOUR PLUGINS WILL COME
" ------------------------------------

call neobundle#end()  
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck  
"End NeoBundle Scripts-------------------------
