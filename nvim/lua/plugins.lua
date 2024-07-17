-- This file can be loaded by calling lua require('plugins')` from your init.vim

local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

-- Install packer if it's not installed
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

-- useins
require('packer').startup(function()
  -- Manages itself
  use 'wbthomason/packer.nvim'

  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'tpope/vim-eunuch'

  -- Junegunn Essentials
  -- use {'junegunn/fzf.vim', run = "fzf#install()"}
  use 'junegunn/fzf'
  use 'ibhagwan/fzf-lua'

  -- Themes
  use 'mhartington/oceanic-next'
  use 'jacoborus/tender.vim'
  use 'jdsimcoe/abstract.vim'
  use 'srcery-colors/srcery-vim'
  use 'folke/tokyonight.nvim'
  use 'folke/lsp-colors.nvim'

  -- Search & UI
  use 'prettier/vim-prettier'
  use 'justinmk/vim-dirvish'
  use 'preservim/nerdtree'

  -- Other
  use 'luochen1990/rainbow'
  -- use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
  use 'hew/snips'
  use 'github/copilot.vim'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Auto complete / Snippets
  use { "L3MON4D3/LuaSnip", tag = "v1.*", run = "make install_jsregexp" }
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'jose-elias-alvarez/typescript.nvim'
  use 'mattn/emmet-vim'

  -- use 'nvim-lua/popup.nvim'
  -- use { 'nvim-telescope/telescope.nvim', version = '*', dependencies = { 'nvim-lua/plenary.nvim' } }

  use 'tree-sitter/tree-sitter-javascript'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use {
  'pwntester/octo.nvim',
  requires = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  config = function ()
    require"octo".setup()
  end
}

  use {
  "folke/trouble.nvim",
  requires = "nvim-tree/nvim-web-devicons",
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

  -- use 'nono/vim-handlebars'
end)

