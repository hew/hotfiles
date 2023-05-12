set mouse=a
set encoding=utf8
set number
set wrap
set hidden
set list
set lazyredraw
set incsearch
set wildmode=full
set wildoptions+=pum                        
set completeopt=menuone,noselect
set backspace=indent,eol,start              " allow backspacing over everything in insert mode
set autoindent                              " always set autoindenting on
set copyindent                              " copy the previous indentation on autoindenting
set cmdheight=1                             " Buttom space where messages are displayed
set tabstop=2                               " a tab is two spaces
set shiftwidth=2                            " number of spaces to use for autoindenting
set expandtab                               " expand <Tab>s with spaces
set showmatch                               " set show matching parenthesis
set smartcase                               " ignore case if search pattern is all lowercase,
set wildignore=*.swp,*.bak                  " ignore files
set nobackup                                " don't backup 
set nowritebackup                           " don't backup 
set noswapfile                              " don't save with swap files
set splitright                              " Split preferences
set foldmethod=manual                       " Manual folds
set foldcolumn=1                            " visual indicator for folds
set signcolumn=yes                          " always show signcolumns
set matchtime=2                             " Jump to matching parents for 30ms
set wrapscan                                " Searches wrap around end of file
set autoread                                " reload unedited files that changed
set display+=lastline                       " show long last line in window
set timeoutlen=500                          " eliminate any lag ESC lag
set shell=/bin/bash                         " Use the bash shell
set nolist
set nospell
set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
" set shell=/usr/local/bin/fish


" PREFERENCES: ------------------------------------------------------- "
noremap <space> :
nnoremap <PageUp> <C-u>
nnoremap <PageDown> <C-d>


" COMMANDS: ---------------------------------------------------------- "
command! CWD execute "lcd %:p:h"
command! NoPaste :set paste<CR>:put  *<CR>:set nopaste<CR>
command! WindowDecrease :vertical resize -10<CR>
command! WindowIncrease :vertical resize +10<CR>


" LEADER: ------------------------------------------------------------ " 
vnoremap <leader>c "*y
nnoremap <leader>q :e ~/.config/nvim/modules/custom.vim<CR>
nnoremap <Leader>z :PrettierAsync<CR>
nnoremap <leader><BS> :only<CR>

inoremap <leader>v <C-O>za
nnoremap <leader>v za
onoremap <leader>v <C-C>za
vnoremap <leader>v zf


" MOVEMENT: ---------------------------------------------------------- "
" Easily move between splits
nmap <s-Tab> <c-w><c-w>

" Buffers
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" Use control to move lines up/down
nnoremap <C-Down> :m .+1<CR>==
nnoremap <C-Up> :m .-2<CR>==
inoremap <C-Down> <Esc>:m .+1<CR>==gi
inoremap <C-Up> <Esc>:m .-2<CR>==gi
vnoremap <C-Down> :m '>+1<CR>gv=gv
vnoremap <C-Up> :m '<-2<CR>gv=gv

" Source MYVIMRC
nnoremap <C-S>1 :so $MYVIMRC

" Turn off up/down/left/right
" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>


" THEME: --------------------------------------------------------------- "
syntax on
colorscheme OneHalf
let g:srcery_italic = 1

" FONT: --------------------------------------------------------------- "
if (has("termguicolors"))
  set termguicolors
endif
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
hi Search guibg=peru guifg=wheat

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

" AUTOMATION:--------------------------------------------------------------- "
" Auto-save/load folds
" au BufWritePost,BufLeave,WinLeave ?* mkview
" au BufReadPre ?* silent loadview

" Autosource vimrc
autocmd bufwritepost .vimrc source $MYVIMRC

" check for and load file changes
autocmd WinEnter,BufWinEnter,FocusGained * checktime

" Wrap mult-line error/linter/etc messages
autocmd FileType qf setlocal wrap

" No netrw history
au VimLeave * if filereadable("~/.config/nvim/.netrwhist")|call 
      \  delete("~/.config/nvim/.netrwhist")|endif 

" Persistent Undo
if has("persistent_undo")
  set undodir=~/.undodir/
  set undofile
endif

" press <Tab> to expand or jump in a snippet. These can also be mapped separately
" via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
" -1 for jumping backwards.
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

" For changing choices in choiceNodes (not strictly necessary for a basic setup).
imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
