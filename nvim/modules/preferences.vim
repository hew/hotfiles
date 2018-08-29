" Preferences:
"------------------------------------------------------------------- "
noremap <space> :
nnoremap <expr> <D-J> &diff ? ']c' : '<C-W>j'
nnoremap <expr> <D-K> &diff ? '[c' : '<C-W>k'
tnoremap <Esc> <C-\><C-n>
nnoremap <PageUp> <C-u>
nnoremap <PageDown> <C-d>
let loaded_matchparen = 1

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Turn off arrow keys...
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Auto-source init.vim (seems to have a memory leak or something)
" au BufWritePost init.vim source %

" Auto enter insert mode when going into terminal
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" Delete history file - never used
au VimLeave * if filereadable("~/.config/nvim/.netrwhist")|call 
      \  delete("~/.config/nvim/.netrwhist")|endif 
