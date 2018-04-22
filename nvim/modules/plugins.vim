"------------------------------------------------------------------- "
" Plugins:
"------------------------------------------------------------------- "

call plug#begin('~/.config/nvim/plugged')

  " Language & Syntax
  Plug 'isRuslan/vim-es6'
  Plug 'reasonml-editor/vim-reason',     { 'for': 'reason'               }
  Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
  Plug 'prettier/vim-prettier',          { 'for': 'javascript'           }
  Plug 'mattn/emmet-vim',                { 'for': 'javascript'           }
  " Plug 'chemzqm/vim-jsx-improve',        { 'for': 'javascript'           }
  " Plug 'w0rp/ale',                       { 'for': 'javascript'           }

  " Nice-to-haves
  Plug 'junegunn/vim-peekaboo'

  " Pope Essentials
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-eunuch'

  " Themes
  Plug 'mhartington/oceanic-next'
  Plug 'tpope/vim-vividchalk'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'jguddas/onecustom.vim'
  Plug 'h3xx/vim-late_evening'
  Plug 'itchyny/landscape.vim'
  
  " Search / Fuzzy / Files
  Plug 'brookhong/ag.vim'
  Plug 'junegunn/fzf.vim'
  Plug '/usr/local/opt/fzf'
  Plug 'Shougo/neoinclude.vim'
  Plug 'scrooloose/nerdtree',            { 'on':  'NERDTreeToggle'       }

  " Snippets
  Plug 'SirVer/ultisnips',               { 'for': 'javascript'           }
  Plug 'honza/vim-snippets',             { 'for': 'javascript'           }

  " No need for completion when running inside Oni
  if has("gui_running")
  else
    Plug 'Shougo/deoplete.nvim',  { 'do': ':UpdateRemotePlugins' }
  endif

  " Possibly non-performant
  " Plug 'junegunn/vim-github-dashboard', { 'on': 'GHActivity' }
  " Plug 'mxw/vim-jsx'

call plug#end()

"------------------------------------------------------------------- "
" Plugins Config:
"------------------------------------------------------------------- "

" --- NERDTree ---
" let g:NERDCompactSexyComs = 1
" let g:NERDSpaceDelims = 1
" let g:NERDDefaultAlign = 'left'
" let g:NERDCustomDelimiters = { 'reason': { 'left': '/*','right': '*/', 'nested': 1 } }
" nmap zz <plug>NERDCommenterComment


" --- Commentary ---
nnoremap zz :Commentary<CR>


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
source ~/.config/nvim/modules/prettier.vim


" --- Prettier ---
autocmd FileType reason map <buffer> <D-M> :ReasonPrettyPrint<Cr>

" --- Language Server ---
let g:LanguageClient_serverCommands = {
    \ 'reason': ['ocaml-language-server', '--stdio'],
    \ 'ocaml': ['ocaml-language-server', '--stdio'],
    \ 'javascript': ['typescript-language-server', '--stdio'],
    \ }
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

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

" --- FZF ---
imap <c-x><c-f> <plug>(fzf-complete-file-ag)
au FileType fzf tnoremap <buffer> <Esc> <Esc>


" --- Deoplete ---
let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1
" let g:deoplete#complete_method = 'omnifunc'


" --- Emmet ---
let g:user_emmet_settings = {
      \  'javascript' : {
      \      'extends' : 'jsx',
      \  },
      \}


" --- GH Dashboard ---
let g:github_dashboard = { 'username': 'hew', 'password': $GHTOKEN }
