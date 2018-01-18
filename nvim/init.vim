" Commands                        Mode
" --------                        ----
" nmap, nnoremap, nunmap          Normal mode
" imap, inoremap, iunmap          Insert and Replace mode
" vmap, vnoremap, vunmap          Visual and Select mode
" xmap, xnoremap, xunmap          Visual mode
" smap, snoremap, sunmap          Select mode
" cmap, cnoremap, cunmap          Command-line mode
" omap, onoremap, ounmap          Operator pending mode

" General:
"------------------------------------------------------------------- "
set nocompatible
filetype indent plugin on
" set winwidth=1
set encoding=utf8
set number
" set background=dark
set wrap
set hidden
set list
set lazyredraw
" set ttyfast
" set ttyscroll=3
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
set timeoutlen=300                      " eliminate any lag ESC lag
set shell=/usr/local/bin/fish           " Use the fish shell
set ttimeoutlen=0
set listchars=tab:▸–,trail:·,extends:❯,precedes:❮,nbsp:⌴


" Plugins:
"------------------------------------------------------------------- "
call plug#begin('~/.oni/plugins')

if has("gui_running")
else
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
endif
Plug 'w0rp/ale'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'mhartington/oceanic-next'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'prettier/vim-prettier'
Plug 'rking/ag.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'chemzqm/vim-jsx-improve'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-eunuch'
Plug 'junegunn/vim-peekaboo'
Plug 'mattn/emmet-vim'
" Plug 'mxw/vim-jsx'


" Initialize plugin system
call plug#end()


" Preferences:
"------------------------------------------------------------------- "
noremap <space> :
autocmd BufWritePost init.vim source %


" Meta Keys:
"------------------------------------------------------------------- "
nnoremap <silent> <M-s> :w<CR>
nnoremap <silent> <M-w> :bd<CR>
nnoremap <silent> <M-down> G<CR>
nnoremap <silent> <M-up> gg<CR>
nnoremap <silent> <M-\> :NERDTreeToggle<CR>
nnoremap <silent> <M-F> :NERDTreeFind<CR>
vmap <M-/> <Plug>NERDCommenterToggle
nmap <M-/> <Plug>NERDCommenterToggle
nmap <M-H> <c-w><c-h>
nmap <M-L> <c-w><c-l>


" Most Leader Keys:
" ------------------------------------------------------------------- " 
noremap <leader>b :Buffers<CR>
noremap <leader>p :GFiles<CR>
noremap <leader>g :GFiles?<CR>
noremap <leader>sn :Snippets<CR>
noremap <leader><leader>f :Files<CR>
noremap <leader>y "*y
" noremap <Leader>x <Plug>(PrettierAsync)
noremap <leader><leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>
nnoremap <leader>f :NERDTreeToggle<CR>
nnoremap <leader>d :ALEFix<CR>
nnoremap <leader>x :Ex<CR>


" Workspaces:
" ------------------------------------------------------------------- " 
" Config Workspaces 
nnoremap <silent> <M-o>    :e ~/.oni/config.js<CR>
nnoremap <leader><leader>o :e ~/.oni/config.js<CR>
nnoremap <silent> <M-i>    :e ~/.config/nvim/init.vim<CR>
nnoremap <leader><leader>i :e ~/.config/nvim/init.vim<CR>

" Work... Workspaces
nnoremap <silent> <M-e>    :cd ~/kluein/klue<CR>
nnoremap <leader><leader>e :cd ~/kluein/klue<CR>
nnoremap <leader>q         :e  ~/kluein/klue/log/development.log



" Cursor Movement:
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
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1


" Plugins:
"------------------------------------------------------------------- "
" --- NERDTree ---
let g:NERDCompactSexyComs = 0
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'reason': { 'left': '/*','right': '*/', 'nested': 1 } }

" --- Netrw ---
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_banner = 0
let g:netrw_winsize = 20

" --- vim-surround ---
vmap ( S(
vmap ) S)
vmap [ S[
vmap ] S]
vmap ' S'
vmap ` S`

" --- UltiSnips ---
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" --- Prettier ---
let g:prettier#exec_cmd_async = 1
" let g:prettier#config#config_precedence = 'file-override'

" --- Ale ---
let g:ale_linters = {
      \ 'javascript':['eslint'], 
      \ 'ruby': ['rubocop'], 
      \ 'ocaml': ['merlin'], 
      \ 'reason': ['merlin'] 
      \}
let g:ale_fixers = { 
      \ 'javascript': ['eslint']
      \}
let g:ale_lint_on_save = 1
" let g:ale_fix_on_save = 1
" let g:ale_lint_on_text_changed = 1
" let g:ale_javascript_prettier_eslint_use_global = 1
" let g:ale_javascript_prettier_use_local_config = 1
" let g:ale_javascript_prettier_eslint_options = '--eslint-config-path \"~/kluein/klue/.eslintrc.json"'
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" --- Easy Grep ---
let g:EasyGrepFilesToExclude='android,ios,node_modules,coverage,*.lock,*.log,__snapshots__'
let g:EasyGrepRecursive=1
let g:EasyGrepCommand=1   "important, otherwise, it won't work

" --- FZF ---
imap <c-x><c-f> <plug>(fzf-complete-file-ag)
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
au FileType fzf tnoremap <buffer> <Esc> <Esc>

" --- Deoplete ---
let g:deoplete#enable_at_startup = 1

" --- Emmet ---
let g:user_emmet_settings = {
      \  'javascript' : {
      \      'extends' : 'jsx',
      \  },
      \}


" Misc:
" ------------------------------------------------------------------- "
" Turn on/off matching parens
let loaded_matchparen = 1

" Diff-erent Keys. Ha ha!
nnoremap <expr> <D-J> &diff ? ']c' : '<C-W>j'
nnoremap <expr> <D-K> &diff ? '[c' : '<C-W>k'

" Terminal Escape
tnoremap <Esc> <C-\><C-n>


" F Keys:
" ------------------------------------------------------------------- " 
" F7  - // DOESN'T WORK \\
" F12 - // DOESN'T WORK \\

" Trailing whitespace
nnoremap <F6> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Prettier / Prettier & Eslint
nnoremap <F7> :PrettierAsync<CR>
nnoremap <F8> :!npx eslint --fix %<CR>

" Code folding
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

vmap <F10> :sort ui<Cr>
imap <F11> <Esc>:vertical resize -10<CR>
nmap <F11> :vertical resize -10<CR>
