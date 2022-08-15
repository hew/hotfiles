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
  " Plug 'junegunn/fzf.vim'
  " Plug 'junegunn/fzf'
  " Plug 'junegunn/vim-peekaboo'
  " Plug 'junegunn/vim-slash'

  " Wincent Essentials
  " Plug 'wincent/scalpel'

  " Themes
  Plug 'mhartington/oceanic-next'
  Plug 'jacoborus/tender.vim'
  Plug 'jdsimcoe/abstract.vim'
  Plug 'srcery-colors/srcery-vim'
  
  " Search & UI
  " Plug 'itchyny/lightline.vim'
  Plug 'prettier/vim-prettier'
  Plug 'justinmk/vim-dirvish'

  " Other
  Plug 'luochen1990/rainbow'
  Plug 'iamcco/markdown-preview.nvim',        { 'do': 'cd app & yarn install' }
  Plug 'editorconfig/editorconfig-vim'
  Plug 'hew/snips'
  Plug 'github/copilot.vim'
  Plug 'aklt/plantuml-syntax'

  " LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'tomlion/vim-solidity'
  Plug 'rescript-lang/vim-rescript'
  " Plug 'anott03/nvim-lspinstall'
  " Plug 'rust-lang/rust.vim'
  Plug 'fatih/vim-go'
  Plug 'elixir-editors/vim-elixir'
  Plug 'jparise/vim-graphql'

  " Auto complete / Snippets
  Plug 'hrsh7th/nvim-compe'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/vim-vsnip-integ'
  Plug 'jiangmiao/auto-pairs'
  
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

call plug#end()


"------------------------------------------------------------------- "
" MERLIN:
"------------------------------------------------------------------- "
" set rtp+=/Users/tahini/.opam/default/share/merlin/vim


"------------------------------------------------------------------- "
" FZF:
"------------------------------------------------------------------- "
" set rtp+=/usr/local/opt/fzf
" noremap <leader>b :Buffers<CR>
" nnoremap <leader>p :GFiles<CR>
" nnoremap <leader>g :GFiles?<CR>
" nnoremap <leader>f :Files<CR>

"------------------------------------------------------------------- "
" Commentary:
"------------------------------------------------------------------- "
nnoremap zz :Commentary<CR>


"------------------------------------------------------------------- "
" PEEKABO:
"------------------------------------------------------------------- "
let g:peekaboo_prefix = "<leader>"


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
" map <C-n> :NERDTreeToggle<CR>

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


" Find files using Telescope command-line sugar.
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"------------------------------------------------------------------- "
" COMPE:
"------------------------------------------------------------------- "

lua << EOF
-- Set up Compe
require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = true;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = true;
    vsnip = true;
    nvim_lsp = true;
    nvim_lua = true;
    spell = true;
    tags = true;
    snippets_nvim = true;
    treesitter = true;
  };
}
EOF

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })


"------------------------------------------------------------------- "
" LSP:
"------------------------------------------------------------------- "

lua << EOF
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gy', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  -- buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  -- buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  -- buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  -- buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<leader>l', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  -- buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap("n", "<leader>x", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { "tsserver", "rust_analyzer" }
for _, lsp in ipairs(servers) do
  require'lspconfig'[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

-- Disable the inline error messages (for one, they are SLOWWW)
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false
    }
)

EOF

"------------------------------------------------------------------- "
" RESCRIPT:
"------------------------------------------------------------------- "
autocmd FileType rescript nnoremap <silent> <buffer> <localleader>r :RescriptFormat<CR>
autocmd FileType rescript nnoremap <silent> <buffer> <localleader>t :RescriptTypeHint<CR>
" autocmd FileType rescript nnoremap <silent> <buffer> <localleader>b :RescriptBuild<CR>
autocmd FileType rescript nnoremap <silent> <buffer> gd :RescriptJumpToDefinition<CR>
