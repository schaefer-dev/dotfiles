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
"}}}


" ---------------------------------------------------------------------------------------------------------------------
" Interface improving {{{
" ---------------------------------------------------------------------------------------------------------------------

" Lightline (simple status line)
Plug 'itchyny/lightline.vim'
Plug 'cocopon/lightline-hybrid.vim'
" Buffers tabline
Plug 'ap/vim-buftabline'
"}}}


" ---------------------------------------------------------------------------------------------------------------------
" External tools integration plugins {{{
" ---------------------------------------------------------------------------------------------------------------------

" Fugitive
Plug 'tpope/vim-fugitive'
" Git log viewer (Gitv! for file mode)
Plug 'gregsexton/gitv', { 'on': 'Gitv' }
" Git changes showed on line numbers
Plug 'airblade/vim-gitgutter'
" REST Console
Plug 'diepm/vim-rest-console', { 'for': 'rest' }
" Color picker
Plug 'KabbAmine/vCoolor.vim', { 'on': ['VCoolor', 'VCase'] }
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

"enable mouse usage in GUI
if has("gui_running")
    set mouse=a
else
    set mouse=
endif

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






" END OLD VIM SETTINGS ---------------------------------------



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
