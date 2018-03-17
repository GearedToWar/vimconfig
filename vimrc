set runtimepath+=~\vimfiles\bundle\vim-fugitive

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

" For Win32 version, have "K" lookup the keyword in a help file
"if has("win32")
"  let winhelpfile='windows.hlp'
"  map K :execute "!start winhlp32 -k <cword> " . winhelpfile <CR>
"endif

" Set nice colors
" background for normal text is light grey
" Text below the last line is darker grey
" Cursor is green, Cyan when ":lmap" mappings are active
" Constants are not underlined but have a slightly lighter background
" highlight Normal guibg=black
" highlight Normal guifg=white
" highlight Cursor guibg=Green guifg=NONE
" highlight lCursor guibg=Cyan guifg=NONE
" highlight NonText guibg=grey30
"highlight Constant gui=NONE guibg=grey95
"highlight Special gui=NONE guibg=grey95


set backup
set backupdir=$TEMP
set noswapfile

set ignorecase smartcase
set autoindent
set showmatch " show matching brackets
set hlsearch " Switch on search pattern highlighting.

" set tags+=C:\repos\ProjectServices\tags
" set tags+=C:\repos\VS\src\vsproject\tags
set tags=tags;/
set tagstack

" make up and down work correctly
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk

map <F2> :w<CR>
map <F3> :e $HOME\_vimrc<CR>
map <F12> :q<CR>

imap ` <Esc>bve<C-C>ve<Esc>a

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

" When _gvimrc file is sourced twice, the autocommands will appear twice.
" To avoid this remove ALL autocommands for the current group before adding
" them.
"autocmd!

" Move to the directory of the file that is opened.
autocmd BufEnter * cd %:p:h

" Open tag in a new tab
" nmap <c-]> :tab tag <c-r><c-w><cr>

set switchbuf=usetab,newtab

