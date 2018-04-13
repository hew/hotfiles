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
