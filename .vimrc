syn on " Syntax on
set nocompatible " Use Vim defaults

filetype off

set rtp+=~/.vim/bundle/vundle/\
call vundle#rc()
set t_Co=256

Bundle 'gmarik/vundle'

"colorschemes
Bundle 'altercation/vim-colors-solarized'
" Bundle 'tomasr/molokai'
" Bundle 'jpo/vim-railscasts-theme'
" Bundle '29decibel/codeschool-vim-theme'

Bundle 'kchmck/vim-coffee-script'
" Bundle 'chrisbra/NrrwRgn'
Bundle 'tpope/vim-fugitive'
Bundle 'leshill/vim-json'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'pangloss/vim-javascript'
Bundle 'nono/jquery.vim'
Bundle 'vim-ruby/vim-ruby'
" Bundle 'spf13/PIV'
Bundle 'tpope/vim-rails.git'
" Bundle 'Rip-Rip/clang_complete'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Raimondi/delimitMate'
Bundle 'ervandew/supertab'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/snipmate-snippets'
Bundle 'garbas/vim-snipmate'
Bundle 'godlygeek/tabular'
Bundle 'gregsexton/MatchTag'
Bundle 'mileszs/ack.vim'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-surround'
Bundle 'tsaleh/vim-matchit'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'bonsaiben/bootstrap-snippets'

filetype on
filetype plugin on
filetype plugin indent on

set bs=2 " backspacing over everything in insert mode
set ai " Auto indenting
set history=100 " keep 100 lines of history
set expandtab " tabs are spaces
set softtabstop=4 " how many spaces for one tab
set tabstop=4
set shiftwidth=4 " nb of tabs when auto indent
set smartindent
set cindent
set autoindent
set number
"set relativenumber
set encoding=utf-8
set scrolloff=5
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set backspace=indent,eol,start
set laststatus=2
set showmatch
set hlsearch " highlight the last searched term
set incsearch
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85
set nofoldenable
set nobackup
set noswapfile
set undodir=~/.vim/undo
set undofile
set undolevels=1000
set undoreload=10000 
set background=dark
colorscheme solarized

let g:solarized_termcolors="16"


let mapleader = ","
let g:yankring_history_dir='$HOME/.vim/'
let g:DisableAutoPHPFolding = 1 " Disable PHP code folding
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabDefaultCompletionType = "context"

let g:ctrlp_map = '<leader>o'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
nmap + <C-a>
nmap = <C-a>
nmap - <C-x>
nmap _ <C-x>
noremap H ^
noremap L $
nmap <silent> ,/ :nohlsearch<CR>
nnoremap <silent> ss :split<CR>
nnoremap <silent> vv :vsplit<CR>
vmap > >gv
vmap < <gv
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q
map <Leader>a ggVG"
noremap <Leader>p "+p
noremap <leader>c "*y
noremap <F1> <Esc>
" inoremap ii <Esc>`^
nnoremap ; :
nmap <Leader>v :source $MYVIMRC<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
nmap <Leader>a& :Tabularize /&<CR>
vmap <Leader>a& :Tabularize /&<CR>
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a:: :Tabularize /:\zs<CR>
vmap <Leader>a:: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
map <Esc>[A <Down>
nnoremap <F2> :silent 1,$!xmllint --format --recover - 2>/dev/null<cr>
autocmd Filetype html command :silent open -a "Google Chrome" %<CR>
autocmd Filetype markdown map <D-Enter> :silent ! markdown % > /tmp/%<.html; open -a "Google Chrome" /tmp/%<.html<CR>

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

augroup myfiletypes
    autocmd!
    autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

set completeopt=menu,menuone
