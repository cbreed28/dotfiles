set nocompatible
filetype off				 " Required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'   	 " Required

" Insert other Plugins here
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-commentary'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on		 " Required

" Editor Settings
set hlsearch            " Highlight searches
set nostartofline       " Don’t reset cursor to start of line when moving around.
set scrolloff=3         " Start scrolling three lines before the horizontal window border
set clipboard=unnamed   " Use the OS clipboard by default (on versions compiled with `+clipboard`)


" Color Schemes
set number
syntax enable
set background=dark
colorscheme solarized
set t_Co=256
let g:solarized_termcolors=256      " use solarized 256 fallback

set backspace=2

" Airline Plugin Settings
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

" NERDTree Plugin Settings
map <C-f> :NERDTree<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" GitGuter Plugin Settings
let g:gitgutter_realtime=1

" Mouse Settings
set mouse=a             " Allow Scroll in vim
if has("mouse_sgr")
    set ttymouse=sgr
else 
    set ttymouse=xterm2
end


" General File Settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set showcmd


" Python File Settings ( Overrides General Settings)
au BufNewFile,BufRead *.py set
    \ ft=python 
    \ tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix

" JSON File Settings ( Overrides General Settings )
au BufNewFile,BufRead *.json set
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix

" Other file types
au BufNewFile,BufRead *.css, *.html, *.yml set
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
    \ textwidth=79
    \ expandtab
    \ autoindent      

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" 
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
