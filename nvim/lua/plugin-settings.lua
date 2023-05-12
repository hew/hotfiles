local opts = {noremap = true}

-- Telescope:
-- vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>Telescope find_files<cr>', opts)
-- vim.api.nvim_set_keymap('n', '<leader>g', '<cmd>Telescope live_grep<cr>', opts)
-- vim.api.nvim_set_keymap('n', '<leader>b', '<cmd>Telescope buffers<cr>', opts)
-- vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts)

-- FZF:
vim.api.nvim_set_keymap('n', '<leader>b', ':Buffers<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>p', ':GFiles<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>g', ':GFiles?<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>f', ':Files<CR>', opts)
vim.api.nvim_set_keymap('i', '<c-x><c-x>', '<plug>(fzf-complete-file-ag)', opts)

-- Commentary:
vim.api.nvim_set_keymap('n', 'zz', ':Commentary<CR>', opts)

-- PEEKABO:
vim.g.peekaboo_prefix = "<leader>"

-- Netrw:
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 20
vim.g.netrw_silent = 1
vim.g.ghregex = '\\(^\\|\\s\\s\\)\\zs\\.\\S\\+'
vim.g.netrw_list_hide = vim.g.ghregex

-- Rg:
vim.cmd([[command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always --ignore-case '.shellescape(<q-args>), 1,
      \   <bang>0 ? fzf#vim#with_preview('up:60%')
      \           : fzf#vim#with_preview('right:50%:hidden', '?'),
      \   <bang>0)]])
vim.api.nvim_set_keymap('n', '<C-p>a', ':Rg<CR>', opts)

-- Surround:
vim.api.nvim_set_keymap('v', '(', 'S(', opts)
vim.api.nvim_set_keymap('v', ')', 'S)', opts)
vim.api.nvim_set_keymap('v', '[', 'S[', opts)
vim.api.nvim_set_keymap('v', ']', 'S]', opts)
vim.api.nvim_set_keymap('v', "'", "S'", opts)
vim.api.nvim_set_keymap('v', '`', 'S`', opts)

-- Rainbow Brackets:
vim.g.rainbow_active = 1

