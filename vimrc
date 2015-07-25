set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}
" status/tabline for vim
Plugin 'bling/vim-airline'
" Gitgutter shows difference in git
Plugin 'airblade/vim-gitgutter'
" nerdtree file tree
Plugin 'scrooloose/nerdtree'
" shows indentationlevels nicer
Plugin 'nathanaelkane/vim-indent-guides'
" latex box for latex compilation and other stuff
Plugin 'lervag/vimtex'
" this plugin would need vim to run with server, so its not possible for me

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"----------------------------------------------------------------------------



"shows horizontal and vertical line where the cursor is in the file
set cursorline cursorcolumn
set wrap
set breakindent

syntax enable
set mouse=a
set t_Co=256
set background=dark
filetype indent on
set backspace=2 
set number
set nobackup
set nowb
set noswapfile
filetype plugin on
filetype indent on
set ruler
set history=999
set scrolloff=999
set hlsearch
set showmatch

set shiftwidth=4
set tabstop=4



colorscheme Tomorrow-Night
set encoding=utf8
set background=dark




" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
