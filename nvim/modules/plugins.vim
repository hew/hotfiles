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
  Plug 'scrooloose/nerdtree',                 { 'on':  'NERDTreeToggle'       }
  Plug 'liuchengxu/vim-which-key'
  Plug 'mileszs/ack.vim'

  " Snippets
  Plug 'andreyorst/SimpleSnippets.vim',        { 'for': 'javascript'           }

  " Language & Syntax
  Plug 'isRuslan/vim-es6'
  Plug 'reasonml-editor/vim-reason-plus',     { 'for': 'reason'               }
  Plug 'prettier/vim-prettier',               { 'for': 'javascript'           }
  Plug 'mattn/emmet-vim',                     { 'for': 'javascript'           }
  Plug 'w0rp/ale',                            { 'for': 'javascript'           }
  Plug 'autozimu/LanguageClient-neovim',      { 'for': 'reason', 'branch': 'next', 'do': 'bash install.sh' }

  " No need for completion when running inside Oni
  if has("gui_running")
  else
    Plug 'Shougo/deoplete.nvim',          { 'do': ':UpdateRemotePlugins' }
  endif

call plug#end()

"------------------------------------------------------------------- "
" Sourced Config Files:
"------------------------------------------------------------------- "
" (should be referenced AFTER initiating the plugins above)
source ~/.config/nvim/modules/prettier.vim
source ~/.config/nvim/modules/which-key.vim


"------------------------------------------------------------------- "
" Plugins Config:
"------------------------------------------------------------------- "

" --- Ale ---
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


" --- Commentary ---
nnoremap zz :Commentary<CR>


" --- Deoplete ---
let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#auto_complete_start_length = 2
let g:deoplete#enable_smart_case = 1
" let g:deoplete#disable_auto_complete = 1
" let g:deoplete#complete_method = 'omnifunc'
" (Keeps the preview window always closed)
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" set completeopt-=preview


" --- Emmet ---
let g:user_emmet_settings = {
      \  'javascript' : {
      \      'extends' : 'jsx',
      \  },
      \}


" --- Netrw ---
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_banner = 0
let g:netrw_winsize = 20


" --- Language Server ---
let g:LanguageClient_serverCommands = {
    \ 'reason': ['reason-language-server.native'],
    \ 'ocaml': ['reason-language-server.native'],
    \ 'javascript': ['typescript-language-server', '--stdio'],
    \ }
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
nnoremap <silent> <F1> :call LanguageClient_contextMenu()<CR>
autocmd FileType reason map <buffer> <D-M> :ReasonPrettyPrint<Cr>
set formatexpr=LanguageClient#textDocument_rangeFormatting_sync()
" let g:LanguageClient_changeThrottle = 1
" let g:LanguageClient_hoverPreview = 'Never'
" let g:LanguageClient_completionPreferTextEdit = 1


" --- FZF ---
imap <c-x><c-x> <plug>(fzf-complete-file-ag)
au FileType fzf tnoremap <buffer> <Esc> <Esc>


" --- Surround ---
vmap ( S(
vmap ) S)
vmap [ S[
vmap ] S]
vmap ' S'
vmap ` S`


" --- Which Key ---
nnoremap <silent> <leader>m :WhichKey '<leader>'<CR>


" --- GH Dashboard ---
" let g:github_dashboard = { 'username': 'hew', 'password': $GHTOKEN }


" --- NERDTree ---
" let g:NERDCompactSexyComs = 1
" let g:NERDSpaceDelims = 1
" let g:NERDDefaultAlign = 'left'
" let g:NERDCustomDelimiters = { 'reason': { 'left': '/*','right': '*/', 'nested': 1 } }
" nmap zz <plug>NERDCommenterComment
