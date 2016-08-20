"============="
" VIM CONFIG  "
"============="

"==========="
" SYNTAX    "
"==========="

filetype plugin on
filetype indent on
filetype plugin indent on
syntax enable

"============="
" INDENTATION "
"============="

"" Render tabs as 2 spaces
set tabstop=2                   " Tabs are four spaces
set softtabstop=2               " Tabs counts as four spaces
set shiftwidth=2                " << >> gives you four spaces

set smarttab
set expandtab

set autoindent                  " Auto indent
set smartindent                 " Smart indent

"================"
" REMAPPING KEYS "
"================"

nmap pi :PluginInstall<cr>" install plugins
nmap ww :w<cr>            " fast save
nmap wq :wq<cr>           " fast save & quit
nmap qq :q!<cr>           " gtfo
nmap ff :Autoformat<cr>   " autoformat using filename of current file

"============"
" INTERFACE  "
"============"

"=================="
" BACKUPS          "
"=================="

set noswapfile

"=================="
" UNDO             "
"=================="

set undofile                              " Save undo's after file closes
set undodir=~/.vim/undo                   " where to save undo histories
set undolevels=1000                       " How many undos
set undoreload=10000                      " number of lines to save for undo

set ffs=unix,dos,mac                      " Use Unix as the standard file type
set completeopt=menuone,longest,preview   " Set autocomplete form

"============="
" MISC        "
"============="


" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
    %s/\s\+$//ge
      exe "normal `z"
      endfunc

autocmd BufWrite *.js :call DeleteTrailingWS()

" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc

set wildmode=longest,list,full
set wildmenu

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"==============="
" VUNDLE CONFIG "
"==============="

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"================"
" VUNDLE PLUGINS "  
"================"

Plugin 'flazz/vim-colorschemes'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'L9'
Plugin 'vim-scripts/mru.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'FuzzyFinder'
Plugin 'vim-polyglot'
Plugin 'ervandew/supertab'
Plugin 'moll/vim-node'
Plugin 'Chiel92/vim-autoformat'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'rking/ag.vim'


""""""""""""""""""""""""""""""""

call vundle#end()            " required
filetype plugin indent on    " required

"================"
" VUNDLE OPTIONS "
"================"

colorscheme molokai

map <C-n> :NERDTreeToggle<CR>

" \f and \m lets you search for files
" map <leader>f :FufFileWithCurrentBufferDir<CR>
" map <leader>m :FufFileWithFullCwd<CR>

set laststatus=2
