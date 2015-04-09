call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'vivkin/flatland.vim'
Plug 'tomasr/molokai'
Plug 'w0ng/vim-hybrid'
Plug 'baskerville/bubblegum'
Plug 'nanotech/jellybeans.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'whatyouhide/vim-gotham'
Plug 'bling/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'gorkunov/smartpairs.vim'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'mattn/emmet-vim'
Plug 'tomtom/tcomment_vim'
Plug 'msanders/snipmate.vim'
Plug 'scrooloose/syntastic'
Plug 'jelera/vim-javascript-syntax'
Plug 'heavenshell/vim-jsdoc'
Plug 'vim-scripts/JavaScript-Indent'
Plug 'phleet/vim-mercenary'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Raimondi/delimitMate'
Plug 'Lokaltog/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'marijnh/tern_for_vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'wavded/vim-stylus'
Plug 'facebook/vim-flow'
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/neocomplete.vim'
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

set clipboard=unnamed
set guioptions=mg
set background=dark

if has("gui_running")
    set columns=180 lines=60
    " colorscheme hybrid 
    colorscheme jellybeans

    if has("win32")
        set guifont=Consolas:h11:cRUSSIAN
    else
        set guifont=Menlo
    endif
else
    colorscheme jellybeans
endif

let g:snips_author = system("git config user.name")
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
let g:molokai_original=1
let g:airline#extensions#tabline#enabled=1
" let mapleader=','

let g:syntastic_jscs_exec = '/Users/michael/.nvm/v0.12.0/bin/jscs'
let g:syntastic_javascript_jsxhint_exec = '/Users/michael/.nvm/versions/v0.12.0/bin/jsxhint'
let g:syntastic_javascript_checkers = ['jsxhint','jscs']
let g:syntastic_auto_loc_list = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_aggregate_errors = 1

let g:typescript_compiler_options = '-target ES5 -sourcemap -module commonjs'
let g:syntastic_typescript_tsc_args = '--target ES5 -module commonjs'
let g:syntastic_typescript_checkers = ['tslint']
let g:neocomplete#enable_at_startup = 1

map <F1> :set background=dark<CR>
map <F2> :set background=light<CR>

nmap K A<CR><ESC>
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
nmap <Leader><Leader> :set lines=999<CR>

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

nnoremap <silent> <C-d> :lclose<CR>:bdelete<CR>
cabbrev <silent> bd lclose\|bdelete

let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-s)
nmap S <Plug>(easymotion-s2)
let g:EasyMotion_smartcase = 1
map  <leader>/ <Plug>(easymotion-sn)

" au BufReadPost,BufWritePost *.js :SyntasticCheck
au BufNewFile,BufReadPost *.html setl tabstop=2 shiftwidth=2
au BufRead,BufNewFile *.json set filetype=json
au BufRead,BufNewFile *.ts setlocal filetype=typescript

autocmd FileType typescript setlocal omnifunc=TSScompleteFunc

set rtp+=/Users/michael/.nvm/versions/v0.12.0/lib/node_modules/typescript-tools/
