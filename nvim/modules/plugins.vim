"------------------------------------------------------------------- "
" Plugins:
"------------------------------------------------------------------- "

call plug#begin('~/.config/nvim/plugged')

  " Pope Essentials
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-eunuch'

  " Junegunn Essentials
  Plug 'junegunn/gv.vim'
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/vim-peekaboo'
  Plug 'junegunn/vim-slash'

  " Themes
  Plug 'mhartington/oceanic-next'
  
  " Search / Fuzzy / Files
  Plug '/usr/local/opt/fzf'
  " Plug 'liuchengxu/vim-which-key'
  Plug 'mileszs/ack.vim'

  " Display
  Plug 'itchyny/lightline.vim'

  " Language & Syntax
  Plug 'isRuslan/vim-es6'
  Plug 'reasonml-editor/vim-reason-plus',     { 'for': 'reason'               }
  Plug 'neoclide/jsonc.vim'
  Plug 'prettier/vim-prettier',               { 'for': ['javascript', 'json']   }
  Plug 'autozimu/LanguageClient-neovim',      { 'for': 'reason', 'branch': 'next', 'do': 'bash install.sh' }
  Plug 'neoclide/coc.nvim',                   {'tag': '*', 'do': { -> coc#util#install()}}

  " Dormant
  " Plug 'mattn/emmet-vim',                     { 'for': 'javascript'           }
  " Plug 'scrooloose/nerdtree',                 { 'on':  'NERDTreeToggle'       }
  " Plug 'w0rp/ale',                            { 'for': 'javascript'           }

call plug#end()


"------------------------------------------------------------------- "
" Sourced Configs:
"------------------------------------------------------------------- "
" (should be referenced AFTER initiating the plugins above)
source ~/.config/nvim/modules/prettier.vim
source ~/.config/nvim/modules/coc.vim


"------------------------------------------------------------------- "
" Ale:
"------------------------------------------------------------------- "
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_lint_on_save = 1
let g:ale_linters = {
      \ 'javascript':['eslint'], 
      \ 'ruby': ['rubocop'], 
      \ 'ocaml': ['merlin'], 
      \ 'reason': ['merlin'] 
      \}


"------------------------------------------------------------------- "
" Commentary:
"------------------------------------------------------------------- "
nnoremap zz :Commentary<CR>


"------------------------------------------------------------------- "
" Emmet:
"------------------------------------------------------------------- "
let g:user_emmet_settings = {
      \  'javascript' : {
      \      'extends' : 'jsx',
      \  },
      \}


"------------------------------------------------------------------- "
" Netrw:
"------------------------------------------------------------------- "
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_banner = 0
let g:netrw_winsize = 20


"------------------------------------------------------------------- "
" FZF:
"------------------------------------------------------------------- "
imap <c-x><c-x> <plug>(fzf-complete-file-ag)
au FileType fzf tnoremap <buffer> <Esc> <Esc>


"------------------------------------------------------------------- "
" Surround:
"------------------------------------------------------------------- "
vmap ( S(
vmap ) S)
vmap [ S[
vmap ] S]
vmap ' S'
vmap ` S`

"------------------------------------------------------------------- "
" NerdTRee:
"------------------------------------------------------------------- "
" let g:NERDCompactSexyComs = 1
" let g:NERDSpaceDelims = 1
" let g:NERDDefaultAlign = 'left'
" let g:NERDCustomDelimiters = { 'reason': { 'left': '/*','right': '*/', 'nested': 1 } }
" nmap zz <plug>NERDCommenterComment
