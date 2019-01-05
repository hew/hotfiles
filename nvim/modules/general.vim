"------------------------------------------------------------------- "
" Set:
"------------------------------------------------------------------- "
set nocompatible
filetype indent plugin on

" set mouse=c
set encoding=utf8
set number
set wrap
set hidden
set list
set lazyredraw
set incsearch
set backspace=indent,eol,start              " allow backspacing over everything in insert mode
set autoindent                              " always set autoindenting on
set copyindent                              " copy the previous indentation on autoindenting
set number                                  " always show line numbers
set tabstop=2                               " a tab is two spaces
set shiftwidth=2                            " number of spaces to use for autoindenting
set expandtab                               " expand <Tab>s with spaces
set showmatch                               " set show matching parenthesis
set smartcase                               " ignore case if search pattern is all lowercase,
set nohlsearch                              " Don't highlight search words"
set wildignore=*.swp,*.bak                  " ignore files
set visualbell                              " don't beep
set noerrorbells                            " don't beep
set nobackup                                " don't backup
set noswapfile                              " don't save with swap files
set splitright                              " Split preferences
set showcmd                                 " Show which keys are pressed in normal mode
set foldmethod=manual                       " Manual folds
" set laststatus=2                            " Displays airline when it won't display
set signcolumn=yes                          " always show signcolumns
set noshowmode                              " removes '--insert--' because that is shown in Lightline"
set matchtime=2                             " Jump to matching parents for 30ms
set wrapscan                                " Searches wrap around end of file
set autoread                                " reload unedited files that changed
" set cmdheight=2                             " Better error/system messages
set display+=lastline                       " show long last line in window
set timeoutlen=500                          " eliminate any lag ESC lag
set shell=/usr/local/bin/fish               " Use the fish shell
set ttimeoutlen=0
set completeopt=noinsert,menuone,noselect   " IMPORTANTE: :help Ncm2PopupOpen for more information
set listchars=tab:▸–,trail:·,extends:❯,precedes:❮,nbsp:⌴

let g:python3_host_prog = '/Users/hew/.pyenv/shims/python'


" ------------------------------------------------------------------- " 
" F Keys:
" ------------------------------------------------------------------- " 

" Code folding
inoremap <F5> <C-O>za
nnoremap <F5> za
onoremap <F5> <C-C>za
vnoremap <F5> zf

" Sort alphabetically
vmap <F6> :sort ui<Cr>

" Resize Window
imap <F7> <Esc>:vertical resize -10<CR>
nmap <F7> :vertical resize -10<CR>
imap <F8> <Esc>:vertical resize +10<CR>
nmap <F8> :vertical resize +10<CR>


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
hi Normal ctermbg=none

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1


" ------------------------------------------------------------------- " 
" Leader Keys:
" ------------------------------------------------------------------- " 

nnoremap <leader>b :Buffers<CR>
nnoremap <leader>p :GFiles<CR>
nnoremap <leader>g :GFiles?<CR>
nnoremap <leader>f :Files<CR>

nnoremap <Leader>z :PrettierAsync<CR>
nnoremap <leader>d :ALEFix<CR>

nnoremap <leader>s :Ack 
nnoremap <leader>x :Ex<CR>

vnoremap <leader>y "*y
nnoremap <leader><leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>
nnoremap <leader>ec e $CONFIG./nvim/modules/preferences.vim<CR>
nnoremap <leader>cd cd %:p:h
nnoremap <leader><BS> :only<CR>

"------------------------------------------------------------------- "
" Movement:
"------------------------------------------------------------------- "

" Splits
nmap <s-Tab> <c-w><c-w>

" Buffers
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>


"------------------------------------------------------------------- "
" Preferences:
"------------------------------------------------------------------- "

noremap <space> :
" Better scrolls
nnoremap <PageUp> <C-u>
nnoremap <PageDown> <C-d>

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==
inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-Up> <Esc>:m .-2<CR>==gi
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv

"------------------------------------------------------------------- "
" Persistent Undo:
"------------------------------------------------------------------- "

if has("persistent_undo")
  set undodir=~/.undodir/
  set undofile
endif

"------------------------------------------------------------------- "
" Misc:
"------------------------------------------------------------------- "

" Wrap mult-line error/linter/etc messages
autocmd FileType qf setlocal wrap

au VimLeave * if filereadable("~/.config/nvim/.netrwhist")|call 
      \  delete("~/.config/nvim/.netrwhist")|endif 

