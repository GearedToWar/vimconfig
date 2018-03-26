" Get the expected select using mouse and clipboard cut/copy/paste behavior 
:behave mswin

set ch=2    " Make command line two lines high

set mousehide       " Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>


" I like highlighting strings inside C comments
let c_comment_strings=1

syntax on
filetype on
colorscheme Tomorrow-Night-Blue

au BufNewFile,BufRead *.wixproj set filetype=xml 
au BufNewFile,BufRead *.targets set filetype=xml 

" Switch on search pattern highlighting.
set hlsearch

"Switch on incremental search
set incsearch

"Show line numbers
set number

set title

" Show current position
set ruler

"Convert all tabs to spaces

"Switch on relevant indentation
set shiftwidth=4
filetype indent on
set expandtab
set tabstop=4

" allow backspacing over everything in insert mode
set bs=2
set backspace=indent,eol,start

" always set autoindenting on
set ai 

set backup
set backupdir=$TEMP
set noswapfile

set ignorecase smartcase
set autoindent
set showmatch " show matching brackets
set hlsearch " Switch on search pattern highlighting.

set tags=tags;/
set tagstack

map <F2> :w<CR>
map <F3> :e $HOME\vimfiles\vimrc<CR>
map <F12> :q<CR>

" always enable Vim tabs
set showtabline=2

" open tab, close tab, next tab, previous tab
map <C-t> <Esc>:tabnew<CR>
map <C-F4> <Esc>:tabclose<CR>
map <C-Tab> <Esc>:tabnext<CR>
map <C-S-Tab> <Esc>:tabprev<CR>

" close buffer, next buffer, previous buffer
map <F11> :bdel<CR>
nnoremap <F8> <Esc>:bnext<CR>
nnoremap <S-F8> <Esc>:bprevious<CR>

" Make cut (Ctrl-x), copy (Ctrl-c) and paste (Ctrl-v) work in command and insert mode
map <C-c> "+y
map <C-x> "+x
map <C-v> "+gP
imap <C-c> <C-o>"+y
imap <C-x> <C-o>"+x
imap <C-v> <C-o>"+gP

" Select all
map <C-a> ggVG
imap <C-a> <C-o>ggVG

" Move to the directory of the file that is opened.
autocmd BufEnter * cd %:p:h

" Open tag in a new tab
" nmap <c-]> :tab tag <c-r><c-w><cr>

set switchbuf=usetab,newtab

