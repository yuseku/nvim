local status, packer = pcall(require, "packer")
if not status then
  print("Packer is not installed")
  return
end

-- Reloads Neovim after whenever you save plugins.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup END
]])

packer.startup(function(use)
  -- packer can manage itself
  use('wbthomason/packer.nvim')

  -- lua functions that many plugins use
  use('nvim-lua/plenary.nvim')

  -- syntax Highlighting and Colors
  use("PotatoesMaster/i3-vim-syntax")

  -- colorscheme
  use('gruvbox-community/gruvbox')

  -- tmux & split window navigation
  use('christoomey/vim-tmux-navigator')

  use('szw/vim-maximizer') -- maximizes and restores current window

  -- essential plugins
  use('tpope/vim-surround')
  use('vim-scripts/ReplaceWithRegister')

  -- commenting with gc
  use('numToStr/Comment.nvim') 

  -- file explorer
  use('nvim-tree/nvim-tree.lua')

  -- icons
  use('kyazdani42/nvim-web-devicons')
  
  -- statusline
  use('nvim-lualine/lualine.nvim') 

  -- fuzzy finding
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder
  -- use("nvim-telescope/telescope-file-browser.nvim")

  use("nvim-treesitter/nvim-treesitter") -- Treesitter Syntax Highlighting

  -- autocompletion
  use("hrsh7th/nvim-cmp") -- completion plugin
  use("hrsh7th/cmp-buffer") -- source for text in buffer
  use("hrsh7th/cmp-path") -- source for file system paths

  -- snippets
  use("L3MON4D3/LuaSnip") -- snippet engine
  use("saadparwaiz1/cmp_luasnip") -- for autocompletion
  use("rafamadriz/friendly-snippets") -- useful snippets

  -- managing & installing lsp servers, linters & formatters
  use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
  use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

  -- configuring lsp servers
  use("neovim/nvim-lspconfig") -- easily configure language servers
  use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
  use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
  use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
  use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

  if packer_bootstrap then
    require("packer").sync()
  end
end)
