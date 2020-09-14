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
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/vim-peekaboo'
  Plug 'junegunn/vim-slash'

  " Wincent Essentials
  Plug 'wincent/scalpel'

  " Themes
  Plug 'mhartington/oceanic-next'
  Plug 'jacoborus/tender.vim'
  Plug 'jdsimcoe/abstract.vim'
  
  " Search & UI
  Plug '/usr/local/opt/fzf'
  Plug 'itchyny/lightline.vim'
  Plug 'justinmk/vim-dirvish'

  " Other
  Plug 'jiangmiao/auto-pairs'
  Plug 'luochen1990/rainbow'
  Plug 'iamcco/markdown-preview.nvim',        { 'do': 'cd app & yarn install'                               }

  " Language & Syntax
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  " Plug 'mvolkmann/vim-js-arrow-function',     { 'for': ['javascript']                                       }
  Plug 'jph00/swift-apple',                   { 'for': ['swift']                                            }
  Plug 'mattn/emmet-vim',                     { 'for': ['javascript', 'json']                               }
  Plug 'isRuslan/vim-es6',                    { 'for': ['javascript', 'json']                               }
  Plug 'heavenshell/vim-jsdoc',               { 'for': ['javascript', 'json']                               }
  " Plug 'neoclide/jsonc.vim',                  { 'for': ['javascript', 'json']                               }
  Plug 'prettier/vim-prettier',               { 'for': ['javascript',  'typescript', 'json', 'svg', 'html'] }
  Plug 'reasonml-editor/vim-reason-plus',     { 'for': 'reason'                                             }
  " Plug 'jparise/vim-graphql',                 { 'for': 'graphql'                                            }
  " Plug 'neoclide/coc.nvim',                   { 'do': 'yarn install --frozen-lockfile'                      }

call plug#end()


"------------------------------------------------------------------- "
" LSP:
"------------------------------------------------------------------- "

lua << EOF
  local lsp        = require'nvim_lsp'
  local completion = require'completion'

  lsp.tsserver.setup {
    on_attach = completion.on_attach
  }
EOF

"------------------------------------------------------------------- "
" MERLIN:
"------------------------------------------------------------------- "
set rtp+=/Users/hew/.opam/default/share/merlin/vim


"------------------------------------------------------------------- "
" FZF:
"------------------------------------------------------------------- "
set rtp+=/usr/local/opt/fzf


"------------------------------------------------------------------- "
" Commentary:
"------------------------------------------------------------------- "
nnoremap zz :Commentary<CR>


"------------------------------------------------------------------- "
" PEEKABO:
"------------------------------------------------------------------- "
" let g:peekaboo_prefix = "<leader>"


"------------------------------------------------------------------- "
" Netrw:
"------------------------------------------------------------------- "
let g:netrw_banner = 0
let g:netrw_winsize = 20
let g:netrw_silent = 1
let ghregex='\(^\|\s\s\)\zs\.\S\+'
let g:netrw_list_hide=ghregex

"------------------------------------------------------------------- "
" NerdTree:
"------------------------------------------------------------------- "
map <C-n> :NERDTreeToggle<CR>

"------------------------------------------------------------------- "
" FZF:
"------------------------------------------------------------------- "
imap <c-x><c-x> <plug>(fzf-complete-file-ag)
au FileType fzf tnoremap <buffer> <Esc> <Esc>


"------------------------------------------------------------------- "
" Rg:
"------------------------------------------------------------------- "
command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always --ignore-case '.shellescape(<q-args>), 1,
      \   <bang>0 ? fzf#vim#with_preview('up:60%')
      \           : fzf#vim#with_preview('right:50%:hidden', '?'),
      \   <bang>0)

nnoremap <C-p>a :Rg 


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
" Rainbow Brackets:
"------------------------------------------------------------------- "
let g:rainbow_active = 1


"------------------------------------------------------------------- "
" Lightline:
"------------------------------------------------------------------- "
" Add diagnostic info for https://github.com/itchyny/lightline.vim
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \ },
      \ }


" Use auocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
