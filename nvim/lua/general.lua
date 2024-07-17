vim.cmd([[
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
  set backspace=indent,eol,start
  set autoindent
  set copyindent
  set cmdheight=1
  set tabstop=2
  set shiftwidth=2
  set expandtab
  set showmatch
  set smartcase
  set wildignore=*.swp,*.bak
  set nobackup
  set nowritebackup
  set noswapfile
  set splitright
  set foldmethod=manual
  set foldcolumn=1
  set signcolumn=yes
  set matchtime=2
  set wrapscan
  set autoread
  set display+=lastline
  set timeoutlen=500
  set shell=/bin/bash
  set nolist
  set nospell

  syntax on
  colorscheme srcery
  let g:srcery_italic = 1

  noremap <space> :
  nnoremap <PageUp> <C-u>
  nnoremap <PageDown> <C-d>

  command! CWD execute "lcd %:p:h"
  command! NoPaste :set paste<CR>:put  *<CR>:set nopaste<CR>
  command! WindowDecrease :vertical resize -10<CR>
  command! WindowIncrease :vertical resize +10<CR>

  vnoremap <leader>c "*y
  nnoremap <Leader>z :PrettierAsync<CR>
  nnoremap <leader><BS> :only<CR>

  inoremap <leader>v <C-O>za
  nnoremap <leader>v za
  onoremap <leader>v <C-C>za
  vnoremap <leader>v zf

  nmap <s-Tab> <c-w><c-w>

  nnoremap <silent> [b :bprevious<CR>
  nnoremap <silent> ]b :bnext<CR>
  nnoremap <silent> [B :bfirst<CR>
  nnoremap <silent> ]B :blast<CR>

  nnoremap <C-Down> :m .+1<CR>==
  nnoremap <C-Up> :m .-2<CR>==
  inoremap <C-Down> <Esc>:m .+1<CR>==gi
  inoremap <C-Up> <Esc>:m .-2<CR>==gi
  vnoremap <C-Down> :m '>+1<CR>gv=gv
  vnoremap <C-Up> :m '<-2<CR>gv=gv

  nnoremap <leader><leader> :cclose<CR>
]])
