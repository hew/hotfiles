" For moving through diffs. Never seem to use this, though.
nnoremap <expr> <D-J> &diff ? ']c' : '<C-W>j'
nnoremap <expr> <D-K> &diff ? '[c' : '<C-W>k'

" This automatically puts you into insert, when you enter a :term
" Never seem to use :term, though
tnoremap <Esc> <C-\><C-n>

" Turn off matching parens, if you want. I think on older machines this
" is a performance killer... not sure.
let loaded_matchparen = 0

" Turn off arrow keys...
" This just sucks with Colemak
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Tabs
" Never used a tab in Vim
imap <c-Tab> <Esc>:tabnext<Cr>
imap <c-S-Tab> <Esc>:tabprev<Cr>
nmap <c-Tab> :tabnext<Cr>
nmap <c-S-Tab> :tabprev<Cr>

" Never really use this stuff, and they conflict with a bunch of plugins
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

" Ignore node_modules
" nnoremap <leader>a :Ag! --ignore=node_modules

" NERDTree
" Don't use this currently
nnoremap <leader><leader>f :NERDTreeToggle<CR>

" Auto-source init.vim (seems to have a memory leak or something)
au BufWritePost init.vim source %

" Auto enter insert mode when going into terminal
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
