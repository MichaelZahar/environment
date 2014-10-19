call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'vivkin/flatland.vim'
Plug 'tomasr/molokai'
Plug 'w0ng/vim-hybrid'
Plug 'baskerville/bubblegum'
Plug 'nanotech/jellybeans.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'whatyouhide/vim-gotham'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'gorkunov/smartpairs.vim'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'mattn/emmet-vim'
Plug 'tomtom/tcomment_vim'
Plug 'msanders/snipmate.vim'
Plug 'Shutnik/jshint2.vim'
Plug 'scrooloose/syntastic'
Plug 'jelera/vim-javascript-syntax'
Plug 'vim-scripts/JavaScript-Indent'
Plug 'phleet/vim-mercenary'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/vimproc.vim', { 'dir': '~/.vim/plugged/vimproc.vim', 'do': 'make' }
Plug 'Shougo/vimshell.vim'
Plug 'marijnh/tern_for_vim', { 'dir': '~/.vim/plugged/tern_for_vim', 'do': 'npm i' }
"Plug 'Valloric/YouCompleteMe', { 'dir': '~/.vim/plugged/YouCompleteMe', 'do': './install.sh' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffe' }
Plug 'wavded/vim-stylus', { 'for': 'styl' }
call plug#end()

filetype plugin indent on
syntax on
set nocp
set exrc

set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set cinoptions=:0,l1,g0,N-s,(0

set cursorline
set number
set showcmd
set laststatus=2
set listchars=tab:>-,eol:$,trail:-

set nowrap
set nostartofline
set scrolloff=1
set sidescrolloff=8

set gdefault
set hlsearch
set incsearch
set ignorecase
set smartcase

set wildmenu
set visualbell t_vb=

set autoread
set autowrite
set noswapfile

set omnifunc=syntaxcomplete#Complete

set clipboard=unnamed
set guioptions=mg
set background=dark
if has("gui_running")
    set columns=180 lines=60
    colorscheme hybrid 
    if has("win32")
        set guifont=Consolas:h11:cRUSSIAN
    else
        set guifont=Menlo
    endif
else
    colorscheme jellybeans
endif

let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
let g:molokai_original=1
let g:airline#extensions#tabline#enabled=1
" let mapleader=','

let g:syntastic_javascript_checkers = ['jshint']
let jshint2_read = 1
let jshint2_save = 1
let jshint2_close = 0
let jshint2_confirm = 0

map <F1> :set background=dark<CR>
map <F2> :set background=light<CR>

nmap K i<CR><ESC>
nmap cn :cnext<CR>
nmap cp :cprev<CR>
nmap <silent> <Leader>q :copen<CR>

nmap <C-j> :bnext<CR>
nmap <C-k> :bprevious<CR>
nmap <Leader>x :close<CR>
nmap <Leader>X :bdelete<CR>
nmap <Tab> <C-w>w
nmap <S-Tab> <C-w>W
nmap <Space> :CtrlP<CR>
nmap <Leader>j :JSHint<CR>

map <C-S><C-S> :mksession! ~/vim_session <cr>
map <C-S><C-R> :source ~/vim_session <cr>

nmap <Leader>' :NERDTreeToggle<CR>
nmap <Leader>; :NERDTree %<CR>
vmap a: :Tab /:<CR>
vmap a= :Tab /=<CR>

nmap <Leader>d :TernDef<CR>
nmap <Leader>D :TernDoc<CR>
nmap <Leader>t :TernType<CR>
nmap <Leader>r :TernRefs<CR>
nmap <Leader>R :TernRename<CR>

nnoremap <silent> F :Grep<CR> 
nnoremap <CR> :nohlsearch<CR><CR>

map <Leader>s :VimShell -split -split-command=split<CR>

nnoremap <silent> <C-d> :lclose<CR>:bdelete<CR>
cabbrev <silent> bd lclose\|bdelete

au BufReadPost,BufWritePost *.js :SyntasticCheck
