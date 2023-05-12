-- This file can be loaded by calling lua require('plugins')` from your init.vim

local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

-- Install packer if it's not installed
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- useins
require('packer').startup(function()
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'tpope/vim-eunuch'

  -- Junegunn Essentials
  use {'junegunn/fzf.vim', run = "fzf#install()"}
  use 'junegunn/fzf'
  -- use 'junegunn/vim-peekaboo'
  -- use 'junegunn/vim-slash'

  -- Wincent Essentials
  -- use 'wincent/scalpel'

  -- Themes
  use 'mhartington/oceanic-next'
  use 'jacoborus/tender.vim'
  use 'jdsimcoe/abstract.vim'
  use 'srcery-colors/srcery-vim'

  -- Search & UI
  -- use 'itchyny/lightline.vim'
  use 'prettier/vim-prettier'
  use 'justinmk/vim-dirvish'

  -- Other
  use 'luochen1990/rainbow'
  -- use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
  -- use 'editorconfig/editorconfig-vim'
  use 'hew/snips'
  -- use 'github/copilot.vim'
  -- use 'aklt/plantuml-syntax'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Auto complete / Snippets
  use { "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*", run = "make install_jsregexp" }
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'jiangmiao/auto-pairs'

  use 'nvim-lua/popup.nvim'
  use { 'nvim-telescope/telescope.nvim', version = '*', dependencies = { 'nvim-lua/plenary.nvim' } }
  use 'tree-sitter/tree-sitter-javascript'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- use 'nono/vim-handlebars'
end)

