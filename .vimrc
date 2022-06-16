" 20200425 Copy current filepath
" https://stackoverflow.com/posts/17096082/revisions
" relative path (src/foo.txt)
nnoremap <leader>cfr :let @+=expand("%")<CR>
" absolute path (/something/src/foo.txt)
nnoremap <leader>cfa :let @+=expand("%:p")<CR>
" filename (foo.txt)
nnoremap <leader>cff :let @+=expand("%:t")<CR>
" directory name (/something/src)
nnoremap <leader>cfd :let @+=expand("%:p:h")<CR>

" vim-rails
" |CTRL-W_gf| (open in new tab)

" https://github.com/iberianpig/tig-explorer.vim
" open tig with current file
nnoremap <Leader>T :TigOpenCurrentFile<CR>

" open tig with Project root path
nnoremap <Leader>tt :TigOpenProjectRootDir<CR>

" open tig blame with current file
nnoremap <Leader>bm :TigBlame<CR>

" visual block mode
nnoremap vvv <c-v>

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

" paste multiple times
xnoremap p pgvy

" clear search hightlight
nnoremap <Leader><space> :noh<cr>

" switch tab
nnoremap gl  :tabnext<CR>
nnoremap gh  :tabprev<CR>

xnoremap <Tab> >
xnoremap <S-Tab> <

nnoremap <Enter> o

" -------------------
" event
" -------------------
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

autocmd BufWritePre * :%s/\s\+$//e

if executable("ruby")
  autocmd BufRead,BufNewFile *.rb noremap <Leader>r :% w !ruby -w<Enter>
else
  autocmd BufRead,BufNewFile *.rb noremap <Leader>r :echo "you need to install ruby"<Enter>
endif

if executable("node")
  autocmd BufRead,BufNewFile *.js noremap <F5> :% w !node<Enter>
else
  autocmd BufRead,BufNewFile *.js noremap <F5> :echo "you need to install node"<Enter>
endif

noremap <silent> <C-h> :!open %<CR>


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
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tomtom/tcomment_vim'
Plug 'thoughtbot/vim-rspec'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'hashivim/vim-terraform'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'wakatime/vim-wakatime'
Plug 'tpope/vim-fireplace'
Plug 'iberianpig/tig-explorer.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'elixir-editors/vim-elixir'

" Initialize plugin system
call plug#end()
