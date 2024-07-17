-- Keybindings
vim.api.nvim_set_keymap("i", "<C-E>", "<Plug>luasnip-expand-or-jump", {})
vim.api.nvim_set_keymap("s", "<C-E>", "<Plug>luasnip-expand-or-jump", {})
vim.api.nvim_set_keymap("i", "<C-D>", "<Plug>luasnip-jump-prev", {})
vim.api.nvim_set_keymap("s", "<C-D>", "<Plug>luasnip-jump-prev", {})

-- require("luasnip.loaders.from_vscode").lazy_load()
