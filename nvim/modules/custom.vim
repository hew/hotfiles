
" PREFERENCES: ------------------------------------------------------- "

noremap <space> :
nnoremap <PageUp> <C-u>
nnoremap <PageDown> <C-d>

" COMMANDS: ---------------------------------------------------------- "

command CWD execute "lcd %:p:h"
command ToggleNoPaste :set paste<CR>:put  *<CR>:set nopaste<CR>
command WindowDecrease :vertical resize -10<CR>
command WindowIncrease :vertical resize +10<CR>

" LEADER: ------------------------------------------------------------ " 

" FZF
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>p :GFiles<CR>
nnoremap <leader>g :GFiles?<CR>
nnoremap <leader>f :Files<CR>

" Prettier / Eslint fix
nnoremap <Leader>d :CocCommand eslint.executeAutofix<CR>
nnoremap <Leader>z :PrettierAsync<CR>

" Explore
nnoremap <silent> <leader>x :Ex<CR><CR>

" Copy to external clipboard
vnoremap <leader>c "*y

" Edit vim config
nnoremap <leader>q :e ~/.config/nvim/modules/custom.vim<CR>

" Close all but current window
nnoremap <leader><BS> :only<CR>

" Markdown
noremap <leader>m :MarkdownPreview<CR>

" Fold / unfold selected
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
" Turn off up/down/left/right
" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>

" FONT:--------------------------------------------------------------- "
if (has("termguicolors"))
  set termguicolors
endif
syntax on
colorscheme tender

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

" Temp hack (https://github.com/zeit/hyper/issues/2592)
hi Normal ctermbg=none

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

" EXECUTABLES:-------------------------------------------------------- " 
let g:python3_host_prog = '/Users/hew/.pyenv/shims/python'
let g:racer_cmd = "/Users/hew/.cargo/bin/racer"

" MISC:--------------------------------------------------------------- "

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

" Automatically save folds
" augroup AutoSaveFolds
"   autocmd!
"   au BufWinLeave ?* mkview 1
"   au BufWinEnter ?* silent loadview 1
" augroup END
