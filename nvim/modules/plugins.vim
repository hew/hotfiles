"------------------------------------------------------------------- "
" Plugins:
"------------------------------------------------------------------- "

call plug#begin('~/.config/nvim/plugged')

  " Pope Essentials
  " Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-eunuch'

  " Junegunn Essentials
  " Plug 'junegunn/gv.vim'
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/vim-peekaboo'
  Plug 'junegunn/vim-slash'

  " Themes
  Plug 'mhartington/oceanic-next'
  
  " Search / Fuzzy / Files
  " Plug 'terryma/vim-multiple-cursors'
  Plug '/usr/local/opt/fzf'
  Plug 'scrooloose/nerdtree',                 { 'on':  'NERDTreeToggle'       }
  Plug 'ddrscott/vim-side-search'

  " Snippets
  " Plug 'SirVer/ultisnips',                    { 'for': 'javascript'           }
  " Plug 'honza/vim-snippets',                  { 'for': 'javascript'           }
  Plug 'andreyorst/SimpleSnippets.vim'

  " Language & Syntax
  Plug 'isRuslan/vim-es6'
  Plug 'reasonml-editor/vim-reason-plus',     { 'for': 'reason'               }
  Plug 'prettier/vim-prettier',               { 'for': 'javascript'           }
  Plug 'mattn/emmet-vim',                     { 'for': 'javascript'           }
  " Plug 'w0rp/ale',                            { 'for': 'javascript'           }
  Plug 'autozimu/LanguageClient-neovim',      { 'for': 'reason', 'branch': 'next', 'do': 'bash install.sh' }

  " No need for completion when running inside Oni
  if has("gui_running")
  else
    Plug 'Shougo/deoplete.nvim',          { 'do': ':UpdateRemotePlugins' }
  endif

call plug#end()

"------------------------------------------------------------------- "
" Plugins Config:
"------------------------------------------------------------------- "

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
let g:SimpleSnippets_search_path = $HOME.'/.config/nvim/snippets/'
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:SimpleSnippetsExpandOrJumpTrigger = "<Tab>"
let g:SimpleSnippetsJumpBackwardTrigger = "<S-Tab>"
let g:SimpleSnippetsJumpToLastTrigger = "<C-j>"


" --- Prettier ---
source ~/.config/nvim/modules/prettier.vim


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
" set completefunc=LanguageClient#complete
" let g:LanguageClient_hoverPreview = 'Never'
" let g:LanguageClient_completionPreferTextEdit = 1


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
imap <c-x><c-x> <plug>(fzf-complete-file-ag)
au FileType fzf tnoremap <buffer> <Esc> <Esc>


" --- Deoplete ---
let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#auto_complete_start_length = 2
let g:deoplete#enable_smart_case = 1
" let g:deoplete#disable_auto_complete = 1
" let g:deoplete#complete_method = 'omnifunc'
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
set completeopt-=preview " Keeps the preview window always closed


" --- Neosnippets ---
" let g:neosnippet#disable_runtime_snippets = 0
" Tell Neosnippet about the other snippets
" let g:neosnippet#snippets_directory='~/.config/nvim/UltiSnips/'


" --- Emmet ---
let g:user_emmet_settings = {
      \  'javascript' : {
      \      'extends' : 'jsx',
      \  },
      \}


" --- Side Search ---
let g:side_search_prg = 'ag --word-regexp'
  \. " --path-to-ignore ~/.ignore "
 \. " --heading --stats -B 1 -A 4"

" SideSearch current word and return to original window
nnoremap <Leader>ss :SideSearch <C-r><C-w><CR> | wincmd p
" Create an shorter `SS` command
command! -complete=file -nargs=+ SS execute 'SideSearch <args>'
" or command abbreviation
cabbrev SS SideSearch
" Can use `vnew` or `new`
let g:side_search_splitter = 'vnew'
" I like 40% splits, change it if you don't
let g:side_search_split_pct = 0.4


let g:multi_cursor_use_default_mapping=0

" --- Multi Cursor ---
" let g:multi_cursor_start_word_key      = '<C-n>'
" let g:multi_cursor_select_all_word_key = '<A-n>'
" let g:multi_cursor_start_key           = 'g<C-n>'
" let g:multi_cursor_select_all_key      = 'g<A-n>'
" let g:multi_cursor_next_key            = '<C-n>'
" let g:multi_cursor_prev_key            = '<C-p>'
" let g:multi_cursor_skip_key            = '<C-x>'
" let g:multi_cursor_quit_key            = '<Esc>'


" --- GH Dashboard ---
" let g:github_dashboard = { 'username': 'hew', 'password': $GHTOKEN }


" --- NERDTree ---
" let g:NERDCompactSexyComs = 1
" let g:NERDSpaceDelims = 1
" let g:NERDDefaultAlign = 'left'
" let g:NERDCustomDelimiters = { 'reason': { 'left': '/*','right': '*/', 'nested': 1 } }
" nmap zz <plug>NERDCommenterComment
