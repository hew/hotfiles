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

" FZF
noremap <leader>b :Buffers<CR>
noremap <leader>p :GFiles<CR>
noremap <leader>g :GFiles?<CR>
noremap <leader>sn :Snippets<CR>
noremap <leader><leader>f :Files<CR>

" Javascript Workflow
noremap <Leader>z :PrettierAsync
nnoremap <leader>d :ALEFix<CR>

" Search
nnoremap <leader><leader>a :AgFromSearch!<CR>
nnoremap <leader>a :Ag!

" NERDTree
nnoremap <leader>f :NERDTreeToggle<CR>
nnoremap <leader>x :Ex<CR>

" Copy/Paste
noremap <leader>y "*y
noremap <leader><leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>
