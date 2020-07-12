" -------------------
" basic function
" -------------------
set number
set clipboard=unnamed
set cursorline
set noswapfile
set nolist

set noshowmode
set showcmd

set ruler
set wrap
set linebreak
set scrolloff=3

" -------------------
" space and tab
" -------------------
set softtabstop=2
set shiftwidth=2
set expandtab

" -------------------
" tab and windows
" -------------------
set showtabline=2
set splitbelow
set splitright

" -------------------
" search
" -------------------
set hlsearch
set ignorecase
set incsearch
set smartcase

" -------------------
" backspace
" -------------------
set backspace=indent,eol,start

" -------------------
" color
" -------------------
syntax on
try
  colorscheme Gruvbox
catch
endtry

" -------------------
" filetype
" -------------------
filetype on
filetype indent on
filetype plugin on

" -------------------
" key map
" -------------------

" clear search hightlight
nnoremap <Leader><space> :noh<cr>

vnoremap <Tab> >
vnoremap <S-Tab> <

nnoremap <Enter> o

" -------------------
" event
" -------------------
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

autocmd BufWritePre * :%s/\s\+$//e

if executable("ruby")
  autocmd BufRead,BufNewFile *.rb noremap <F5> :% w !ruby -w<Enter>
else
  autocmd BufRead,BufNewFile *.rb noremap <F5> :echo "you need to install ruby"<Enter>
endif

if executable("node")
  autocmd BufRead,BufNewFile *.js noremap <F5> :% w !node<Enter>
else
  autocmd BufRead,BufNewFile *.js noremap <F5> :echo "you need to install node"<Enter>
endif

" -------------------
" plugins
" -------------------

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tomtom/tcomment_vim'

" Initialize plugin system
call plug#end()
