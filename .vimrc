"
"   Author  :: Cory Breed
"   Created :: 06/30/16
"
"   VIM Configuration
"
"   Using vim-plug for plugin management
"


set nocompatible        " Must be using VIM, not VI


" --------------------------------------------------------------------
" vim-plug Installation
" --------------------------------------------------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !mkdir -p ~/.vim/autoload
  silent !curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif


call plug#begin('~/.vim/plugged')

" Lightweight editor status line for vim
Plug 'vim-airline/vim-airline'

" Syntax checker for many languages
Plug 'scrooloose/syntastic'

" File explorer for vim
Plug 'scrooloose/nerdtree'

" Tab based File Explorer add-on
Plug 'jistr/vim-nerdtree-tabs'

" Quickly format code blocks
Plug 'godlygeek/tabular'

" Git editor gutter showing file modifications
Plug 'airblade/vim-gitgutter'

" Comment out chunks of code with 'gcc' 'gc'
Plug 'tpope/vim-commentary'

" An intelli-sense engine for Vim
Plug 'Shougo/neocomplete.vim'

" Support for Apple's Swift language
Plug 'kballard/vim-swift'


call plug#end()


" --------------------------------------------------------------------
"  vim editor configuration
"  -------------------------------------------------------------------


" Editor Settings
set nobackup                    " Don't write backup files
set nowritebackup               " Don't write backup files
set noswapfile                  " Don't write swp files
set scrolloff=3                 " Start scrolling three lines before the horizontal window border
set backspace=indent,eol,start  " Fore the backspace key to behave like a normal text editor
set nostartofline               " Don't reset the cursor to teh start of the line when moving around
set wrap                        " Force lines to wrap visually, don't change the buffer
set ttyfast                     " Improves redrawing for newer computers
set laststatus=2                " Always show the status bar

" Mouse Settings
set mouse=a     " Allow scrolling in the editor
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

" Copy Paste Settings
set clipboard=unnamed           " Use the OS clipboard by default (on vim versions compiled with +clipboard)

" Search Settings
set hlsearch                    " Highlight searches

" Programming Settings
filetype plugin indent on       " Load filetype-specific indent files
syntax on                       " Enable syntax highlighting
set showmatch                   " Highlight matching brackets and parens
set matchtime=2                 " How long to highlight match
set number                      " Show line numbers

" Color Schemes
set background=dark             " Use a dark background
colorscheme Kafka               " Use the Kafka theme, see colors/Kafka.vim
set t_Co=256                    " force iTerm to use 256 colors

" General File Settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set showcmd
set backspace=2


" ---------------------------------------------------------------------
"  plugin settings
"  -------------------------------------------------------------------


" Airline Plugin Settings
let g:airline#extensions#tabline#enabled = 1


" NERDTree Plugin Settings
map <C-f> :NERDTreeTabsToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:nerdtree_tabs_open_on_console_startup=1
let NerdTreeIgnore=['.DS_Store[[file]]']        " Ignore .DS_STORE files

" GitGuter Plugin Settings
let g:gitgutter_realtime=1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"  NeoComplete
let g:neocomplete#enable_at_startup = 1                     " Start at vim startup
let g:neocomplete#enable_smart_case = 1                     " use smart case
let g:neocomplete#sources#syntax#min_keyword_length = 3     " Set minimum syntax keyword length

" NeoComplete key-mappings
" ------------------------
inoremap <expr><C-l> neocomplete#complete_common_string()
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
    " For no inserting <CR> key.
        "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" ------------------------------------------------------------------------
" file specific formatting settings
" ------------------------------------------------------------------------

" Python File Settings ( Overrides General Settings)
au BufNewFile,BufRead *.py set
    \ ft=python 
    \ tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=0
    \ expandtab
    \ autoindent
    \ fileformat=unix

" JSON File Settings ( Overrides General Settings )
au BufNewFile,BufRead *.json set
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
    \ textwidth=0
    \ expandtab
    \ autoindent
    \ fileformat=unix

" CSS File Settings ( Override General Settings )
au BufNewFile,BufRead *.css set
    \ tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=0
    \ expandtab
    \ autoindent

" HTML File Settings ( Override General Settings )
au BufNewFile,BufRead *.html set
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
    \ textwidth=0
    \ expandtab
    \ autoindent

" YML File Settings ( Override General Settings )
au BufNewFile,BufRead *.yml set
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
    \ textwidth=0
    \ expandtab
    \ autoindent      


