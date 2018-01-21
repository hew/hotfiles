source ~/.config/nvim/modules/general.vim
source ~/.config/nvim/modules/plugins.vim
source ~/.config/nvim/modules/font.vim
source ~/.config/nvim/modules/cursor.vim
source ~/.config/nvim/modules/preferences.vim
source ~/.config/nvim/modules/gui.vim
source ~/.config/nvim/modules/f-keys.vim
source ~/.config/nvim/modules/workspaces.vim

" ------------------------------------------------------------------- " 
" Leader Keys:
" ------------------------------------------------------------------- " 
noremap <leader>b :Buffers<CR>
noremap <leader>p :GFiles<CR>
noremap <leader>g :GFiles?<CR>
noremap <leader>sn :Snippets<CR>
noremap <leader><leader>f :Files<CR>
noremap <leader>y "*y
noremap <Leader>z <Plug>(PrettierAsync)
noremap <leader><leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>
nnoremap <leader>f :NERDTreeToggle<CR>
nnoremap <leader>d :ALEFix<CR>
nnoremap <leader>x :Ex<CR>
nnoremap <leader><leader>a :AgFromSearch!<CR>
nnoremap <leader>a :Ag!
