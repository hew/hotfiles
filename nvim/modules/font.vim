"------------------------------------------------------------------- "
" Font:
"------------------------------------------------------------------- "

if (has("termguicolors"))
  set termguicolors
endif
syntax on
colorscheme vividchalk

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

" Temp hack (https://github.com/zeit/hyper/issues/2592)
hi Normal ctermbg=none

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

" workaround for https://github.com/zeit/hyper/issues/2592
" hi Normal ctermbg=none
