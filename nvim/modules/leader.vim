" ------------------------------------------------------------------- " 
" Leader Keys:
" ------------------------------------------------------------------- " 

" FZF
noremap <leader>b :Buffers<CR>
noremap <leader>p :GFiles<CR>
noremap <leader>g :GFiles?<CR>
noremap <leader>sn :Snippets<CR>
noremap <leader>f :Files<CR>

" Javascript Workflow
noremap <Leader>z :PrettierAsync<CR>
" noremap <Leader>v :ReasonPrettyPrint<CR>
nnoremap <leader>v :call LanguageClient_textDocument_formatting()<CR>
nnoremap <leader>d :ALEFix<CR>

" Search
nnoremap <leader><leader>a :AgFromSearch!<CR>
nnoremap <leader>a :Ag! --ignore=node_modules

" NERDTree
nnoremap <leader><leader>f :NERDTreeToggle<CR>
nnoremap <leader>x :Ex<CR>

" Copy/Paste
noremap <leader>y "*y
noremap <leader><leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" Common
noremap <leader>ec e ~/.config/nvim/modules/preferences.vim
