"------------------------------------------------------------------- "
" General:
"------------------------------------------------------------------- "
set nocompatible
filetype indent plugin on
set encoding=utf8
set number
set wrap
set hidden
set list
set lazyredraw
set incsearch
set backspace=indent,eol,start          " allow backspacing over everything in insert mode
set autoindent                          " always set autoindenting on
set copyindent                          " copy the previous indentation on autoindenting
set number                              " always show line numbers
set tabstop=2                           " a tab is two spaces
set shiftwidth=2                        " number of spaces to use for autoindenting
set expandtab                           " expand <Tab>s with spaces
set showmatch                           " set show matching parenthesis
set smartcase                           " ignore case if search pattern is all lowercase,
set nohlsearch                          " Don't highlight search words"
set wildignore=*.swp,*.bak              " ignore files
set visualbell                          " don't beep
set noerrorbells                        " don't beep
set nobackup                            " don't backup
set noswapfile                          " don't save with swap files
set splitright                          " Split preferences
set showcmd                             " Show which keys are pressed in normal mode
set foldmethod=manual                   " Manual folds
set laststatus=2                        " Displays airline when it won't display
set noshowmode                          " removes '--insert--' because that is shown in Lightline"
set matchtime=2                         " Jump to matching parents for 30ms
set wrapscan                            " Searches wrap around end of file
set autoread                            " reload unedited files that changed
set display+=lastline                   " show long last line in window
set timeoutlen=2000                     " eliminate any lag ESC lag
set shell=/usr/local/bin/fish           " Use the fish shell
set ttimeoutlen=0
set listchars=tab:▸–,trail:·,extends:❯,precedes:❮,nbsp:⌴

let g:python3_host_prog = '/Users/hew/.pyenv/shims/python'

"------------------------------------------------------------------- "
" Font:
"------------------------------------------------------------------- "

if (has("termguicolors"))
  set termguicolors
endif
syntax on
colorscheme OceanicNext

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
hi ctermbg gui=none
hi htmlArg gui=italic
hi Comment gui=italic
hi Type    gui=italic
hi htmlArg cterm=italic
hi Comment cterm=italic
hi Type    cterm=italic
hi ctermbg cterm=none

" Temp hack (https://github.com/zeit/hyper/issues/2592)
" hi Normal ctermbg=none

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1


"------------------------------------------------------------------- "
" Preferences:
"------------------------------------------------------------------- "

noremap <space> :
nnoremap <expr> <D-J> &diff ? ']c' : '<C-W>j'
nnoremap <expr> <D-K> &diff ? '[c' : '<C-W>k'
tnoremap <Esc> <C-\><C-n>
nnoremap <PageUp> <C-u>
nnoremap <PageDown> <C-d>
let loaded_matchparen = 1

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Turn off arrow keys...
" noremap <Up> <NOP>
" noremap <Down> <NOP>
" noremap <Left> <NOP>
" noremap <Right> <NOP>

if has("persistent_undo")
  set undodir=~/.undodir/
  set undofile
endif

" Change to current directory
noremap <leader>cd cd %:p:h

" Auto-source init.vim (seems to have a memory leak or something)
" au BufWritePost init.vim source %

" Auto enter insert mode when going into terminal
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" Delete history file - never used
au VimLeave * if filereadable("~/.config/nvim/.netrwhist")|call 
      \  delete("~/.config/nvim/.netrwhist")|endif 



" ------------------------------------------------------------------- " 
" F Keys:
" ------------------------------------------------------------------- " 

" Trailing whitespace
" nnoremap <F8> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Code folding
inoremap <F7> <C-O>za
nnoremap <F7> za
onoremap <F7> <C-C>za
vnoremap <F7> zf

" Sort (visual selection) alphabetically
vmap <F6> :sort ui<Cr>

" Resize Window
imap <F5> <Esc>:vertical resize -10<CR>
nmap <F5> :vertical resize -10<CR>


"------------------------------------------------------------------- "
" Cursor:
"------------------------------------------------------------------- "

" Splits
nmap <s-Tab> <c-w><c-w>

" Tabs
imap <c-Tab> <Esc>:tabnext<Cr>
imap <c-S-Tab> <Esc>:tabprev<Cr>
nmap <c-Tab> :tabnext<Cr>
nmap <c-S-Tab> :tabprev<Cr>

" Buffers
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" Insert mode 
map! <c-e> <End>
map! <c-f> <Right>
map! <c-b> <Left>
map! <c-d> <Delete>
noremap! <c-n> <Down>
noremap! <c-p> <Up>
inoremap <c-g> <c-p>

" Command line
cmap <c-a> <Home>
cmap <c-b> <Left>
cmap <c-d> <Delete>
cmap <c-e> <End>
cmap <c-f> <Right>

