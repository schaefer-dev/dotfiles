source ~/dotfiles/nvim/plugins.vim


" =====================================================================================================================
" 6.0 Color and highlighting settings
" =====================================================================================================================
" Syntax highlighting 
syntax on

" Color scheme 
set bg=dark
colorscheme hybrid
"colorscheme gruvbox
"set termguicolors			" True color support

" color for cursorline and cursorcolumn
hi CursorColumn ctermbg=237 guibg=#282A2D
hi CursorLine ctermbg=237 guibg=#282A2D

" Force buffers to be tabs
:au BufAdd,BufNewFile * nested tab sball

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" make backspace behave in a sane manner
set backspace=indent,eol,start

" Tab control
set expandtab               " insert spaces rather than tabs for <Tab>
set smarttab                " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4               " the visible width of tabs
set softtabstop=4           " edit as if the tabs are 4 characters wide
set shiftwidth=4            " number of spaces to use for indent and unindent
set shiftround              " round indent to a multiple of 'shiftwidth'
set completeopt+=longest

" code folding settings
set foldmethod=syntax       " fold based on indent
set foldnestmax=10          " deepest fold is 10 levels
set nofoldenable            " don't fold by default
set foldlevel=1

set ttyfast                 " faster redrawing
set diffopt+=vertical
set laststatus=2            " show the satus line all the time
set so=7                    " set 7 lines to the cursors - when moving vertical
set wildmenu                " enhanced command line completion
set hidden                  " current buffer can be put into background
set showcmd                 " show incomplete commands
set noshowmode              " don't show which mode disabled for PowerLine
set wildmode=list:longest   " complete files like a shell
set shell=$SHELL
set cmdheight=1             " command bar height
set title                   " set terminal title

" Searching
set ignorecase              " case insensitive searching
set smartcase               " case-sensitive if expresson contains a capital letter
set hlsearch                " highlight search results
set incsearch               " set incremental search, like modern browsers
set nolazyredraw            " don't redraw while executing macros

set magic                   " Set magic on, for regex

set showmatch               " show matching braces
set mat=2                   " how many tenths of a second to blink

set cursorline cursorcolumn " horizontal and vertical cursorlines
set wrap breakindent        " linebreaks after long line are indented correctly
set relativenumber number   " show linenumbers
set nobackup nowb noswapfile "disable creating of all sort of swapfiles
set ruler                   " shows number of columns and lines in powerbar
set encoding=utf8           " sets character encoding
set scrolloff=10			" show at least x lines above/below the cursor
set history=999

" set cb=unnamed				" clipboard setting to make everything work in vim


" vim tab navigation
  " :tabe <filepath> to add a new tab
  " :ls to list tabs
  " :tabn next tab
  " :tabp previous tab

" vim buffer navigation
  " :e to edit file
  " :ls to list buffers
  " :b to change to buffer y (autocomplete)



" Highlight term cursor differently
highlight TermCursor ctermfg=green guifg=green
let NVIM_TUI_ENABLE_CURSOR_SHAPE=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" Listchars highlighting 
highlight NonText ctermfg=235 guifg=gray
highlight SpecialKey ctermfg=235 guifg=gray

" Remove underline in folded lines
hi! Folded term=NONE cterm=NONE gui=NONE ctermbg=NONE

" Link highlight groups to improve buftabline colors
hi! link BufTabLineCurrent Identifier
hi! link BufTabLineActive Comment
hi! link BufTabLineHidden Comment
hi! link BufTabLineFill Comment


" Proper search
set incsearch
set ignorecase
set smartcase
set gdefault

" Permanent undo
set undodir=~/.vimdid
set undofile

let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'


source ~/dotfiles/nvim/remaps.vim

source ~/dotfiles/nvim/pluginSettings.vim
let $VTE_VERSION="100"
