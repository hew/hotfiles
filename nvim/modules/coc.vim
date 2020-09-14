"------------------------------------------------------------------- "
" Coc: General
"------------------------------------------------------------------- "

set updatetime=300
set shortmess+=c

nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gq <Plug>(coc-declaration)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt :call <SID>show_documentation()<CR>
nmap <silent> ga <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>qf  <Plug>(coc-fix-current)

nnoremap <silent> K :call <SID>show_documentation()<CR>

" Use <cr> for confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<TAB>"

" Organize Imports
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" Map function and class text objects (Requires 'textDocument.documentSymbol')
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" (Shift) Tab for Next/Prev
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'


"------------------------------------------------------------------- "
" Coc: Functions
"------------------------------------------------------------------- "

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Show Documentation (in a hover window)
function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Check backspace
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction



"------------------------------------------------------------------- "
" Typescript Autodetection
"------------------------------------------------------------------- "

augroup SyntaxSettings
    autocmd!
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
augroup END

