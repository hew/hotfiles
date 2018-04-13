" ------------------------------------------------------------------- " 
" F Keys:
" ------------------------------------------------------------------- " 

" Trailing whitespace
nnoremap <F8> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Code folding
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

" Sort (visual selection) alphabetically
vmap <F10> :sort ui<Cr>

" Resize Window
imap <F11> <Esc>:vertical resize -10<CR>
nmap <F11> :vertical resize -10<CR>

noremap <F12> :PrettierAsync<CR>
